class Cases{
  float x;
  float y;
  float w;
  float h;
  
  Cases(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    
  }
  
  void display(){
    println(y);
    rect(x,y,w,h);
  }
}
