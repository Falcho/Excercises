void setup() {
  smooth();
  stjerne(20);
}

void stjerne(int amount) {
  for (int i=1; i <=amount; i++) {
    for (int k =amount; k>i; k--) {
      print(" ");
    }
    for (int j=1; j<=i; j++) {
      print("*");
    }
    println();
  }
}
