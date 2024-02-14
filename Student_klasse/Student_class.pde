class Student {
 String name;
 int age;
 String grade;
 
 void studentName(String sn){
   name = sn;
 }
 
 void getAge(int ga){
  age = ga; 
 }
 
 void getGrade(String gg){
  grade = gg; 
 }
 
 void printInfo(){
  println("Student name: "+name+", "+age+" years, "+"semester "+grade);
 }
}
