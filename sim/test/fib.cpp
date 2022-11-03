#include <bits/stdc++.h>
using namespace std;

int fib(int n) {
    int count = 0;
    int f0, f1, f2;
    f0 = 0;
    f1 = 1;
    while (count < n-1) {
        f2 = f0 + f1;
        f0 = f1;
        f1 = f2;
        count++;
    }
    return f2;
}

int main() {
    cout << fib(30) << endl;
    return 0;
}