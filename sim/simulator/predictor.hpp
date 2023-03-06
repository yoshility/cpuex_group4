#include <bits/stdc++.h>
using namespace std;

#define SU      -2  // strongly untaken
#define WU      -1  // weakly untaken
#define WT      1   // weakly taken
#define ST      2   // strongly taken

// 分岐予測器
class Predictor {
    public:
        int status;
        unsigned long long predict_access;
        unsigned long long predict_hit;
        unsigned long long predict_miss;

        Predictor() {
            status = WT;
            predict_access = 0;
            predict_hit = 0;
            predict_miss = 0;
        }
        void change_status(bool);
        void predict(int, unsigned long long*, bool, int*, int*, bool);
        void print_stat();
};

// 状態を変える関数
void Predictor::change_status(bool is_taken) {
    if (status == SU) {
        status = is_taken ? WU : SU;
    } else if (status == WU) {
        status = is_taken ? WT : SU;
    } else if (status == WT) {
        status = is_taken ? ST : WU;
    } else if (status == ST) {
        status = is_taken ? ST : WT;
    } else {
        printf("Predictor::change_status error!\n");
        exit(1);
    }
}

// 予測する関数(act:実際 status:予測)
void Predictor::predict(int act, unsigned long long* clk, bool debug, int* input_clk, int* output_clk, bool busy) {
    predict_access++;
    if (act && (status>0)) {
        predict_hit++;  // takenで予測成功
        change_status(1);
        if (debug) {
            printf("\ttaken predict success. now status: %d\n", status);
        }
    } else if (!act && (status<0)) {
        predict_hit++;  // untakenで予測成功
        change_status(0);
        if (debug) {
            printf("\tuntaken predict success. now status: %d\n", status);
        }
    } else if (!act && (status>0)) {
        *clk += 2;      // takenと予測して失敗
        predict_miss++;
        change_status(0);
        if (debug) {
            printf("\ttaken predict failed. now status: %d\n", status);
        }

        // uart
        *input_clk += 2;
        if (busy) {
            *output_clk += 2;
        }
    } else if (act && (status<0)) {
        *clk += 2;      // untakenと予測して失敗
        predict_miss++;
        change_status(1);
        if (debug) {
            printf("\tuntaken predict failed. now status: %d\n", status);
        }

        // uart
        *input_clk += 2;
        if (busy) {
            *output_clk += 2;
        }
    } else {
        printf("Predictor::predict error!\n");
        exit(1);
    }
}

// 情報出力
void Predictor::print_stat() {
    printf("\n\t---- Predictor Statistics ---------------------------\n\n");
    printf("\tPredictor access time:\t%lld\n", predict_access);
    printf("\tPredictor hit time:\t%lld\n", predict_hit);
    printf("\tPredictor miss time:\t%lld\n", predict_miss);
    printf("\tPredictor hit rate:\t%f(%%)\n", (double)predict_hit/predict_access*100);
    printf("\n");
}