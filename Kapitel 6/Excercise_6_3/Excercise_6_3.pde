

size(300, 300); //Canvas size
background(255); //black
stroke(0); //why am i doing this?
noFill(); //someone stop me already!


//Shape A
int i = 0;
while (i<10) {
  ellipse(width/2, height/2, i*10, i*20);
  i++;
}

/*
//Shape B
for (float i = 1.0; i<width;i*=1.1){
  rect(0,i,i,i*2);
}*/

//Shape C
int x = 0;
for(int c=255;c>0;c-=15){
  fill(c);
  rect(x,height/2,10,10);
  x+=10;
}

/*
//Shape D
 for(int i = 0 ; i <10;i++){
 rect(i*20,height/2,5,5);
 }*/
