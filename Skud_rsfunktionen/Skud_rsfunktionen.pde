void setup() {
  erDetSkudÅr(2027);
}

void erDetSkudÅr(int skudÅr) {
  if (skudÅr%4==0&&(skudÅr%100!=0||skudÅr%400==0))
    print(skudÅr+" er et skud år :)");
  else {
    print(skudÅr+" er ikke et skud år :(");
  }
}
