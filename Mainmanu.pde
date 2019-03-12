class Mainmanu extends Gamescene{
  
  Mainmanu(){}
  void update(){
    
    background(0);
    
    image(title, width/2 , 200 , 400 , 50);  
    image(start, width/2 , 700,400 ,30);
    image(plane,width/2,height/2,100,100);
    
    if(keyPressed){
      if(key == ' '){
      
      Gamestate = 1;
      
      }
    }
  
  
  
  }
    

  }
