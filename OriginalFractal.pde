public void setup()
{
  size(500,500);
  background(247,52,68);
}
public void draw()
{
  fractal(250,475,400);
}

public void fractal(int x, int y, int len) 
{
  if(len<10){
    return;
  }
  fill(450-len,52,68);
  beginShape();
  vertex(x,y);
  bezierVertex(x+len,y-(2*len/5), x+len,y-(8*len/5), x,y-len);
  endShape();
  beginShape();
  vertex(x,y);
  bezierVertex(x-len,y-(2*len/5), x-len,y-(8*len/5), x,y-len);
  endShape();
  fractal(x,y,len-10);
}
