boolean stoneCollision(int stonePosX, int stonePosY, int hw){
  
  for(int i=0; i<bullets.size();i++){
    Bullet b = bullets.get(i);
    if(abs(stonePosX-b.pos.x)>hw+b.size/2){continue;}
    if(abs(stonePosY-b.pos.y)>hw+b.size/2){return false;}
     else{ return true; }
  }
  return false;
}
boolean playerCollision(int playerPosX, int playerPosY, int hw){
  
    for(int i=0; i<stones.size();i++){
      Stone s = stones.get(i);
      if(abs(playerPosX-s.pos.x)>hw+s.size/2){continue;}
      if(abs(playerPosY-s.pos.y)>hw+s.size/2){return false;}
       else{return true;}
    }
    return false;
}
