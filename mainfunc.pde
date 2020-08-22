Segment link1;
Segment link2; 
Segment link3; 
Segment link4; 
Segment link5;
public void settings() 
{
size(1000,1000);
}
void setup() 
{
link1 = new Segment(500,500,30,radians(-90),12); 
link2 = new Segment(link1,80,radians(-60),10);
link3 = new Segment(link2,80,radians(0),10);
link4 = new Segment(link3,40,radians(0),7);
link5 = new Segment(link4,130,3);
}
void draw() 
{ background(333); 
link1.show();
link2.selfrot(); 
link2.update_angle();
link2.show();
link3.selfrot();
link3.update_angle(); 
link3.show(); 
link4.selfrot(); 
link4.update_angle(); 
link4.show(); 
link5.show(); 
link5.selfprism(); 
link5.update_len(); 
link5.update_angle();
}
