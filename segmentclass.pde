class Segment 
{ PVector a; 
 PVector b;
  float len;
float angle; 
float selfAngle;
 float selflen; 
 float strokewt;
  Segment parent;
Segment(Segment parent_,float len_,float angle_,float wt_) 
{ parent = parent_;
a = parent.b.copy();
len = len_;
angle = angle_; selfAngle = angle; strokewt = wt_; calc_next();
}
Segment(float x,float y,float len_,float angle_,float wt_)
 { a = new PVector(x,y);
len = len_;
angle = angle_;
strokewt = wt_; 
calc_next(); 
parent = null;
}
Segment(Segment parent_,float len_,float wt_)
 { parent = parent_;
a = parent.b.copy();
len = len_; selflen = len;
 strokewt = wt_;
  calc_next();
}
void selfrot(){
selfAngle = selfAngle + 0.005;
}
void selfprism()
{ if(selflen>=0)
{selflen = selflen - 1;} 
else
{selflen = selflen + 1;} }
void update_angle()
{ angle = selfAngle; 
if(parent!=null) 
{
a = parent.b.copy();
angle += parent.angle; 
}
calc_next(); 
}
void update_len()
{ len = selflen;
if(parent!=null) 
{
a = parent.b.copy();
len += parent.len; 
}
calc_next(); 
}
void calc_next() {
float dx = len*cos(angle);
float dy = len*sin(angle);
b = new PVector(a.x+dx,a.y+dy);
}
void show()
{ stroke(255);
strokeWeight(strokewt); 
line(a.x,a.y,b.x,b.y);
} 
}
