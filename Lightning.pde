import java.util.*;

class Line {
  private int x1;
  private int y1;
  private int x2;
  private int y2;
  private int r;
  private int g;
  private int b;
  private int ga;
  
  Line (int a, int bIn, int c, int d, int e, int f, int h, int i) {
    x1 = a;
    y1 = bIn;
    x2 = c;
    y2 = d;
    r = e;
    g = f;
    b = h;
    ga = i;
  }
  
  public void setX1(int a) {
    x1 = a;
  }
  public void setY1(int a) {
    y1 = a;
  }
  public void setX2(int a) {
    x2 = a;
  }
  public void setY2(int a) {
    y2 = a;
  }
  public void setR(int a) {
    r = a;
  }
  public void setG(int a) {
    g = a;
  }
  public void setB(int a) {
    b = a;
  }
  public void setGa(int a) {
    ga = a;
  }
  
  public int getX1() {
    return this.x1;
  }
  public int getY1() {
    return this.y1;
  }
  public int getX2() {
    return this.x2;
  }
  public int getY2() {
    return this.y2;
  }
  public int getR() {
    return this.r;
  }
  public int getG() {
    return this.g;
  }
  public int getB() {
    return this.b;
  }
  public int getGa() {
    return this.ga;
  }
}

ArrayList <Line> lines = new ArrayList <Line> ();
int tally = 0;

void setup()
{
  size(300,300);
  textSize(10);
}
void draw()
{
  background(255);
  fill(0);
  tally = (int)((float)lines.size() / 20.0);
  text("Line count: " + tally, 5, 20);
  for (int i = 0; i < lines.size(); i++) {
    stroke(lines.get(i).getR(), lines.get(i).getG(), lines.get(i).getB(), lines.get(i).getGa());
    line(lines.get(i).getX1(), lines.get(i).getY1(), lines.get(i).getX2(), lines.get(i).getY2());
    lines.get(i).setGa(lines.get(i).getGa() - 1);
    if (lines.get(i).getGa() == 0) {
      lines.remove(i);
    }
  }
}

void mousePressed()
{
  int startX = 0;
  int startY = 150;
  for (int j = 1; j <= 20; j++) {
    int endX = 15 * j;
    int endY = startY + (int)((Math.random() - 0.5) * 40);
    lines.add(new Line(startX, startY, endX, endY, (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256), 255));
    startX = endX;
    startY = endY;
  }
}
