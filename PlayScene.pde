class Playscene extends Gamescene{
  
    Playscene(){}
    
  void update(){
    
    background(0);   
    player.render();
    player.update();
    
    //bullet
    for(int i=0; i<bullets.size();i++){
      b = bullets.get(i);
      b.render();
      b.update();
      if ( b.pos.y <= 0 ){      
        bullets.remove(i);      
      }       
        
  }
    
    //stone drop
    if(millis()/1000 - switchTime>2){
      for( int i=0;i<DROPCOUNT;i++){
        if(dropActive[i]){
          spawnTime = millis()/1000;
          stones.add( new Stone());
          Stone s = stones.get(i);
          s.render();
          s.update();
            if(s.pos.y>height){       
              stones.remove(i);
              health -= damage;
            }
            else if(stoneCollision(floor(s.pos.x),floor(s.pos.y),s.size/2)){
              stones.remove(i);
              score += 100;         
            }
            else if (playerCollision(floor(player.pos.x),floor(player.pos.y),player.size/2)){     
              stones.remove(i);
              health -= damage;          
            }     
        }
        else if(millis()/1000>dropDelay[i]){
            dropActive[i] = true; 
          }   
        }
      }
      
    //UI
    textSize(32);
    image(scoreimage,80 ,50 , 70, 30);
    text(score,130,60);
    
    
    fill(255,0,0);
    rectMode(CORNER);
    rect(45,70,health,30);
    }
   
    
   }
  
