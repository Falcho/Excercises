size(500,500);

fill(255);
rectMode(CORNER);//ludobrættets flade
rect(50,50,400,400); 

fill(0);
rectMode(CENTER); // ludobrættets kryds
rect(250,250,100,400);
rect(250,250,400,100);

stroke(255);
line(250,50,250,450);
line(200,50,200,450);
line(50,250,450,250);
line(50,200,450,200);
line(50,50,450,450);
line(450,50,50,450);
line(50,300,300,300);
line(300,50,300,300);
line(50,200,200,200);
line(200,50,200,200);

fill(255,0,0);
ellipseMode(CENTER);
ellipse(125,125,125,125);

fill(0,255,0);
ellipseMode(CENTER);
ellipse(375,375,125,125);

fill(0,0,255);
ellipseMode(CENTER);
ellipse(125,375,125,125);

fill(240,240,10);
ellipseMode(CENTER);
ellipse(375,125,125,125);
