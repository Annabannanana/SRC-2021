Table table;
int x, y;

void setup (){
  
  size(2000,1100);
  background(255);
  table = loadTable ("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
  
  for(TableRow r: table.rows()){
    String s = r.getString ("state");
    int c = r.getInt ("cases");
    println("state", s, "state", c, "cases");
    
    x = (c/3000);
    y += 15;
    if(x > 5){
      fill(0,0,255);
      rect(210,y,x,10);
    }
    else{
      fill(200,0,0);
      rect(210,y,x,10);
    }
    fill(0,0,255);
    text(s,20,y+8);
    text(c+"cases",x+255,y+8);
    
  }
}
