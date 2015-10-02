NormalParticle [] pList;
void setup()
{
	size(800, 800);
	pList= new NormalParticle[800]
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX, myY, angle, speed;
	int c;
	NormalParticle(){
		c= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myX= 400;
		myY=400;
		angle= Math.random()*2*Math.PI;
		speed=Math.random()*4;
	}
	void move(){
		myX+=(Math.cos(angle)+speed);
		myY+=(Math.sin(angle)+speed);
	}
	void show(){
		noStroke();
		fill(c);
		ellipse((float)myX, (float)myY, 3, 3);

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

