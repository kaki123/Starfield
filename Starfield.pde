Particle [] pList;
int size = 50;
void setup()
{
	size(800, 800);
	background(0);
	ellipse(400, 400, 50, 50);
	pList= new Particle[500];
	
	for(int i=0;i<pList.length;i++){
		if(i==0)
			pList[i]= new OddballParticle();
		if(i==1)
			pList[i]= new JumboParticle();
		if(i>1)
			pList[i]=new NormalParticle();
	}	
}
void draw()
{
	background(0);
	
	for(int i=0; i<pList.length; i++){
		pList[i].move();
		pList[i].show();
		if(i>1)
			((NormalParticle)pList[i]).wrap();
	}
	ellipse(400, 400, 50, 50);
	if(mousePressed){
		background(0,0,0);
		
		pList= new Particle[600];

		for(int i=0;i<pList.length;i++){

			pList[i]=new NormalParticle();
		}
	}
}
class NormalParticle implements Particle
{
	double myX, myY, angle, speed;
	int c;
	NormalParticle(){
		c= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myX= mouseX;
		myY=mouseY;
		angle= Math.random()*2*Math.PI;
		speed=Math.random()*4;
	}
	public void move(){
		myX+=(Math.cos(angle)*speed);
		myY+=(Math.sin(angle)*speed);
	}
	public void show(){
		noStroke();
		fill(c);
		ellipse((float)myX, (float)myY, 3, 3);

	}
	void wrap(){
	    if(myX<0||myY>800||myY<0||myX>800){
	      myY=400;
	      myX=400;
	    }
 	}
}
interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle{
	double myX, myY, angle, speed;
	int c;
	OddballParticle(){
		c= color(((int)(Math.random()*255)+245),((int)(Math.random()*255)+245),((int)(Math.random()*255)+245));
		myX= 300;
		myY=300;
		angle= Math.random()*3*Math.PI;
		speed=Math.random()*4;
	}
	public void move(){
		myX+=(Math.sin(angle*2)*speed*2);
		myY+=(Math.cos(angle*3)*speed);
	}
	public void show(){
		noStroke();
		fill(c);
		ellipse((float)myX, (float)myY, 30, 30);

	}
	
}

class JumboParticle implements Particle//uses inheritance
{
	double myX, myY, angle, speed;
	int c;
	JumboParticle(){
		c= color(((int)(Math.random()*255)+245),((int)(Math.random()*255)+245),((int)(Math.random()*255)+245));
		myX= 500;
		myY=500;
		angle= Math.random()*3*Math.PI;
		speed=Math.random()*4;
	}
	public void move(){
		myX+=(Math.sin(angle*2)*speed*2);
		myY+=(Math.cos(angle*3)*speed);
	}
	public void show(){
		noStroke();
		fill(c);
		ellipse((float)myX, (float)myY, 50, 50);

	}
	
}

