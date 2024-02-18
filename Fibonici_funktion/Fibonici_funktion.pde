void setup() {
  fibonacci(4);
}

void fibonacci(int amount) {
  int a = 0;
  int b =1;
  for (int i=0; i<amount; i++) {
    int fib=a+b;
    a=b;
    b=fib;
    print(fib+" ");
  }
}
