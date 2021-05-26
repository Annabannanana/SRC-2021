Table table;
int x,y;

ArrayList<Cases> cases = new ArrayList<Cases>();

void setup(){
  size (2000,1100);
  background(255);
  table = loadTable ("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
  
  showData();
}


void showData(){
  float y = 15;
  int numb = 0;
  for(TableRow r: table.rows()){
    String s = r.getString ("state");
    int c = r.getInt ("cases");
    
    int w = c/3000;
    if(w < 5){
       fill(0,0,255);
      rect(210,y,x,10);
      w = 4;
    }
     else{
      fill(200,0,0);
      rect(210,y,x,10);
    }
    
     fill(0,0,255);

    
    cases.add(new Cases(250,y,w,10));
    numb++;
    y += 15;
    

       text(s,20,y+8);
    text(c,x+1520,y-6);
  }
  
  for (Cases c : cases){
    if(c!= null)
    c.display();
  }
}
