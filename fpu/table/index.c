#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <math.h>

#define N 1024
#define FRAC_LEN 23

char* float2bit(float x, int len) {
	x = (x >= 1) ? x - 1 : x;
	char* ans = calloc(sizeof(char), len + 1);
	for (int i = 0; i < len; ++i) {
		x *= 2;
		ans[i] = (x >= 1) ? '1': '0';
		x = (x >= 1) ? x - 1 : x;
	}
	ans[len] = '\n';
	return ans;
}

float bit2float(char* x, int len) {
	float ans = 0;
	for (int i = 0; i < len; ++i) {
		ans = (x[len-1 - i] == 1) ? ans/2 + 1 : ans/2;
	}
	return ans;
}

char* my_strcat(char* str1, char* str2, int len1, int len2){
	char* ans = calloc(sizeof(char), len1 + len2 + 1);
	int i = 0;
	int j = 0;
	int k = 0;
	while (i < len1) {
		ans[k] = str1[i];
		++i;
		++k;
	}
	while (j < len2) {
		ans[k] = str2[j];
		++j;
		++k;
	}
	ans[k] = '\n';
	return ans;
}

int main(){
	FILE *fp = fopen("index_table.txt", "w");
	srand((unsigned int)time(NULL));
	char** finv_table = calloc(sizeof(char*), N);
	float dx = 3.0/N;
	for (int i = 0; i < N; ++i) {
		float start_x = 1.0 + i*dx;
		char* finv_table_i = calloc(sizeof(char), 36);
		char* const_bit = float2bit(start_x, 10);
		finv_table_i = my_strcat(const_bit, "xxxxxxxxxxxxxxxxxxxxxxxxxxx",10,26);
		finv_table[i] = finv_table_i;
		char* index = calloc(sizeof(char),5);
		snprintf(index, 5, "%4d", i);
		char* out1 = my_strcat("sqrt_table[", index, 11, 4);
		char* out2 = my_strcat(out1, "] = 36'b", 15, 8);
		char* out3 = my_strcat(out2, finv_table_i, 23, 36);
		char* out = my_strcat(out3, ";", 59, 1);
		//printf("%s", out);
		fputs(out, fp);
	}
	fclose(fp);
	return 0;
}