int fib(int n){
    if(n<=1)return n;
    return fib(n-1)+fib(n-2);
}

int min_caml_start(){
    return fib(3);
}