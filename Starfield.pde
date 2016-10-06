Particle[] particles;
void setup()
{
	size(500,500);
	particles= new Particle[30];
	for (int i=0;i<particles.length;i++)
	{
		if(i<20)
		{
		particles[i]= new NormalParticle();
		}
		if(i<25&&i>20)
		{
			particles[i]=new OddballParticle();
		}
		if(i<30&&i>25)
		{
			particles[i]=new JumboParticle();
		}
	}
}
void draw()
{
	background(0,0,0);
	NormalParticle p1=new NormalParticle();
	p1.move();
	p1.show();
	for(int i=0;i<20;i++)
		{
		particles[i].move();
		particles[i].show();
	}
	for(int i=21;i<25;i++)
	{
		particles[i].move();
		particles[i].show();
	}
	for(int i=26;i<30;i++)
	{
		particles[i].move();
		particles[i].show();
	}

}
class NormalParticle implements Particle
{
	float dX,dY,dTheta,dSpeed,w,h;
	NormalParticle()
	{
		move();
		dX=250;
		dY=250;
		dTheta=(float)Math.random()*6.28;
		dSpeed=0.0005;
		w=20;
		h=20;
	}
	public void move()
	{
		dX=dX+0.0005;
		dY = dY+0.0005;
	}
 	public void show()
 	{
 	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	ellipse((float)Math.random()*200*(float)Math.cos(dTheta+dSpeed)+(float)dX,(float)Math.random()*200*(float)Math.sin(dTheta+dSpeed)+(float)dY,(float)w,(float)h);
 	}

}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	float myX,myY,myTheta,mySpeed;
	OddballParticle()
	{
		move();
		myX=250;
		myY=250;
		myTheta=(float)Math.random()*6.28;
		mySpeed=0.005;
	}
	public void move()
	{
		myX=myX+0.001;
		myY = myY+0.001;
	}
 	public void show()
 	{
 		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 		rect((float)Math.random()*100*(float)Math.cos(myTheta+mySpeed)+100,(float)Math.random()*100*(float)Math.sin(myTheta+mySpeed)+100,30,30);
 	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
	w=50;
	h=50;
	}
}

