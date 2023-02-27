#include <bits/stdc++.h>
using namespace std;

class OutputBuffer {
    public:
        bool busy;
        int data_n;
        int clk_per_half_bit;
        int output_count;
        int output_stall;
        OutputBuffer(int cphb) {
            busy = 0;
            data_n = 0;
            clk_per_half_bit = cphb;
            output_count = 0;
            output_stall = 0;
        }
        void enqueue(unsigned long long*, int*);
        void dequeue(int*);
        void print(unsigned long long, unsigned long long, unsigned long long, int);
};

// output命令が来たとき
void OutputBuffer::enqueue(unsigned long long* clk, int* output_clk) {
    busy = 1;
    output_count++;
    if (data_n == 1024) {
        output_stall++;
        // 満タンだったら、まだ消費できてない残りのクロック数の分だけストールする
        *clk += clk_per_half_bit - *output_clk;
        *output_clk = 0;
    } else if (data_n > 0) {
        data_n++;
        // *output_clk += 1; // 通常(clk_count)のclk++とダブる！！要らないかも！！
    } else {
        data_n++;
        *output_clk = 0;
    }
}

// 通信が終わって8bit出力されるとき
void OutputBuffer::dequeue(int* output_clk) {
    // baud(16667clk)が溜まったら出力
    if (busy && (*output_clk > (clk_per_half_bit))) {
        // printf("dequeue!\n");
        data_n -= *output_clk / (clk_per_half_bit);
        *output_clk = 0;
        if (data_n == 0) {
            busy = 0;
        }
    }
}

// outBufの状況を出力
void OutputBuffer::print(unsigned long long inst_count, unsigned long long line, unsigned long long clk, int output_clk) {
    printf("[inst_count|%lld]\t[line|%lld]\t[clk|%lld]\t[busy|%d]\t[data_n|%d]\t[output_clk|%d]\t[output_count|%d]\t[output_stall|%d]\n\n", inst_count, line, clk, busy, data_n, output_clk, output_count, output_stall);
}