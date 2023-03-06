#include <bits/stdc++.h>
using namespace std;

#define CLK_HZ      10000000     // 10MHz
#define BAUD_RATE   9600         // bps

class InputBuffer {
    public:
        // bool busy;
        int data_n;
        int clk_per_8_bit;
        int input_count;
        int input_stall;
        InputBuffer() {
            // busy = 0;
            data_n = 0;
            clk_per_8_bit = round((double)8 / BAUD_RATE * CLK_HZ);
            // printf("CLK_PER_8_BIT = %d\n", clk_per_8_bit);
            input_count = 0;
            input_stall = 0;
        }
        void enqueue(int*);
        void dequeue(unsigned long long*, int*);
};

// 通信が完了して8bit入力されるとき
void InputBuffer::enqueue(int* input_clk) {
    // clk_per_8_bitが溜まったら入力
    if (*input_clk >= clk_per_8_bit) {
        // busy = 1;
        data_n++;
        *input_clk -= clk_per_8_bit;
    }
}

// input命令が来たとき
void InputBuffer::dequeue(unsigned long long* clk, int* input_clk) {
    input_count++;
    if (data_n < 4) {
        input_stall++;
        // 4byteなかったらデータが揃うまでストール
        *clk += clk_per_8_bit - *input_clk + (3-data_n)*clk_per_8_bit;
        // *clk += clk_per_8_bit - *input_clk; // もともとの
        *input_clk = 0;
        data_n = 0;
    } else {
        data_n -= 4;
    }
}

class OutputBuffer {
    public:
        bool busy;
        int data_n;
        int clk_per_8_bit;
        int output_count;
        int output_stall;
        OutputBuffer() {
            busy = 0;
            data_n = 0;
            clk_per_8_bit = round((double)8 / BAUD_RATE * CLK_HZ);
            output_count = 0;
            output_stall = 0;
        }
        void enqueue(unsigned long long*, int*);
        void dequeue(int*);
        // void print(unsigned long long, int, unsigned long long, int);
};

// output命令が来たとき
void OutputBuffer::enqueue(unsigned long long* clk, int* output_clk) {
    busy = 1;
    output_count++;
    if (data_n == 1024) {
        output_stall++;
        // 満タンだったら、まだ消費できてない残りのクロック数の分だけストールする
        *clk += clk_per_8_bit - *output_clk;
        *output_clk = 0;
    } else if (data_n > 0) {
        data_n++;
        // clk_countのclk++とダブルのでoutput_clk += 1は不要
    } else {
        data_n++;
        *output_clk = 0;
    }
}

// 通信が終わって8bit出力されるとき
void OutputBuffer::dequeue(int* output_clk) {
    // baud(16667clk)が溜まったら出力
    if (busy && (*output_clk >= clk_per_8_bit)) {
        // printf("dequeue!\n");
        data_n -= 1;
        *output_clk -= clk_per_8_bit;
        if (data_n == 0) {
            busy = 0;
            *output_clk = 0;
        }
    }
}

// outBufの状況を出力
// void OutputBuffer::print(unsigned long long inst_count, int line, unsigned long long clk, int output_clk) {
//     printf("[inst_count|%lld]\t[line|%d]\t[clk|%lld]\t[busy|%d]\t[data_n|%d]\t[output_clk|%d]\t[output_count|%d]\t[output_stall|%d]\n\n", inst_count, line, clk, busy, data_n, output_clk, output_count, output_stall);
// }
