class Gameover extends Gamescene{
    Gameover(){}
    
    void update(){
      
      background(0);
      image(gameover, width/2 , height/2);
      image(scoreimage, width/2-50, height/2+50,70,30);
      textSize(32);
      textAlign(CENTER);
      text(score, width/2+30 , height/2+60);
      fill(255);
      
      textSize(20);
      textAlign(CENTER);
      text("Press r back to main manu", width/2 , 800);
      fill(255);
      
      if(keyPressed){
        if(key == 'r' || key == 'R'){
        
        health = 200;
        score = 0;
        Gamestate = 0;
      
      
        }
      }
    }
    
  
  }
