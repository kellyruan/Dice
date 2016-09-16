void setup()
{
	size(400,400);
	noLoop();
}
int score;
int rollNum=1;
int totalSum=0;
int avg=0;
void draw()
{
	score=0;
	background(0,255,255);
	for (int x = 60; x<349; x+=120)
	{
		for (int y = 30; y<249; y+=100)
		{
			Die die = new Die (x, y);
			die.roll();
			die.show();
			score+=die.value;
		}
	}
	totalSum += score;
	avg = totalSum/rollNum; 
	textSize(25);
	fill(0, 102, 153);
	text("Current sum: "+score, 110, 320);
	text("Roll number: "+rollNum, 120, 350);
	text("Average sum of roll: "+avg, 60, 380);
}
void mousePressed()
{
	redraw();
	rollNum+=1;
}
class Die
{
	int value, myX, myY;
	double mathValue = Math.random();
	Die(int x, int y) 
	{
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		if(mathValue<.17)
		{
			value = 1;
		}
		else if (mathValue<.33)
		{
			value = 2;
		}
		else if (mathValue<.50)
		{
			value = 3;
		}
		else if (mathValue<.67)
		{
			value = 4;
		}
		else if (mathValue<.82)
		{
			value = 5;
		}
		else 
		{
			value = 6;
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,15);
		fill(0);
		if(value == 1)
		{
			ellipse(myX+25,myY+25,10,10);
		}
		if(value == 2)
		{
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		if(value == 3)
		{
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+10,myY+40,10,10);
		}
		if(value == 4)
		{
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		if(value == 5)
		{
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		if(value == 6)
		{
			ellipse(myX+15,myY+10,10,10);
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+15,myY+40,10,10);
			ellipse(myX+35,myY+10,10,10);
			ellipse(myX+35,myY+25,10,10);
			ellipse(myX+35,myY+40,10,10);
		}

	}
}
