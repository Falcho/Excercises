String day = "Monday";


void setup() {
//Giver dig en daglig positivt inspirrende besked
  if (day.equals("Monday")||day.equals("Tuesday") ||day.equals("Wednesday") || day.equals("Thursday")) {
    println("Hello World, I hope you have a nice "+day+" and a great week ahead of you. Always remember to code a little bit every day");
  } else if (day.equals("Friday")) {
    println("Hello world, I hope you have a nice Friday. be happy, it will be weekend soon. always remember to code a little bit every day");
  } else if (day.equals("Saturday")) {
    println("Hello world, I hope you have a nice Saturday and are enjoying the weekend. Always remember to code a little bit every day.");
  } else if (day.equals("Sunday")) {
    println("Hello world, I hope you have a nice Sunday and are enjoying the weekend. Always remember to code a little bit every day.");
  }

//En kode der fortæller dag dags dato.
int month = month();
int day = day();
int year = year();

switch(month) {
case 1:
  println("January, "+day+". "+year);
  break;
case 2:
  println("February, "+day+". "+year);
  break;
case 3:
  println("Marts, "+day+". "+year);
  break;
case 4:
  println("April, "+day+". "+year);
  break;
case 5:
  println("May, "+day+". "+year);
  break;
case 6:
  println("June, "+day+". "+year);
  break;
case 7:
  println("Juli, "+day+". "+year);
  break;
case 8:
  println("August, "+day+". "+year);
  break;
case 9:
  println("September, "+day+". "+year);
  break;
case 10:
  println("October, "+day+". "+year+", Spooky season starts now");
  break;
case 11:
  println("November, "+day+". "+year);
  break;
case 12:
  println("December, "+day+". "+year+", the Christmas month");
  break;
}
}
