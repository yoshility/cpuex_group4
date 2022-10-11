#include <stdio.h>
int main(){
    int a = 1;
    int b = 0;
    int re = 0;
    for (int i = 0;i<10;i++){
        re = a + b;
        b = a;
        a = re;
        
    }
    //printf("%d\n",re);
    return 0;
}