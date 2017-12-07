PImage Santa;
PImage Milk;
PImage Greetings;
PImage Bell;
float[]Xs=new float[200];
float[]Ys=new float[200];
import ddf.minim.*;
AudioPlayer player;
Minim minim;
AudioPlayer santa;
void setup()
{
  size(800, 800, P2D);
  minim = new Minim(this);
  player=minim.loadFile("Bell sound.mp3");
 player=minim.loadFile("Santa sound.mp3");
  for (int i=0; i<200; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }
  Milk =loadImage("Milk.png");
  Santa = loadImage("Santa.png");
  Greetings= loadImage("Greetings.png");
  Bell= loadImage("Bell.png");
  Bell.resize(150, 150);
}

void draw()
{
  frameRate(60);
  background(255, 0, 0);
  for (int i=0; i<200; i++)
  {
    fill(255);
    ellipse(Xs[i], Ys[i], 10, 10);
    Ys[i]+=4;
    if (Ys[i]>height)
    {
      Ys[i]=0;
    }
  }
  image(Santa, 50, 50);
  image(Greetings, 430, 0);
  image(Milk, 100, 300);
  image(Bell, 0, 0);
  fill(23, 178, 22);
  ellipse(mouseX, mouseY, 100, 100); 
 // ellipse(75, 75, 150, 150);
  if (mousePressed)
  {
    if (dist(75, 75, mouseX, mouseY) <75)
    {
      player.play();
    }
  }
}