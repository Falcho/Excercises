void setup() {
  xTabel(4,60) ;
}

void xTabel(int tabel, int opTil) {
  for (int i=tabel; i<=opTil; i+=tabel) {
    print(i+" ");
  }
}
