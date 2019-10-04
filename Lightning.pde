int startX = 250;
int startY = 0;
int endX = 250;
int endY = 500;
int worthy;
void setup()
{
  size(500,500);
  strokeWeight(0);
  background(0,10,60);
  double x = Math.random();
  if(x > 0.5)
  {
  	worthy = 500;
  }

}
void draw()
{
	stroke(155,155,155);
	fill(155,155,155);
	rect(160,200,180,110,15,15,15,15);
	stroke(65,1,1);
	noFill();
	strokeWeight(3);
	ellipse(254,500,25,100);
	fill(65,1,1);
	rect(238,311,24,160,0,0,15,15);
	stroke(155,155,155);
	fill(155,155,155);
	rect(237,460,26,25,0,0,15,15);
	strokeWeight(1);
	for(int i = 0; i < 10; i++)
	{
		line(238,320 + (i * 15),262,320 + (i * 15));
	}
	strokeWeight(0);
	while(endY < 500)
	{
		endY = startY + (int)(Math.random() * 9 + 1);
		endX = startX + (int)(Math.random() * 19 - 9);
		stroke(50,125,255);
		line(startX+3,startY,endX+3,endY);
		line(startX-3,startY,endX-3,endY);
		stroke(255);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = (int)(Math.random() * 500 + 1);
	startY = 0;
	endX = 250;
	endY = worthy;
	if(worthy == 500){
		textSize(24);
  		text("You're simply not worthy",115,100);
	}else{
		textSize(24);
		textAlign(CENTER);
		text("Whosoever holds this hammer,\nif he be worthy, shall possess \nthe power of Thor",250,80);
	}
}

