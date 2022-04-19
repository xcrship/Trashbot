class LevelS {
  LevelS() {
  }
  void display(){
    levels.sample();
  }
  
  void sample() {
    background(#000000);
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(CENTER);
    
   
    if (level == 1) {
      if (Lcheckpoint == 1) {
        text("Desert: Checkpoint 1", width/2, height/2);
      } else if (Lcheckpoint == 2) {
        text("Desert: Checkpoint 2", width/2, height/2);
      } else if (Lcheckpoint == 3) {
        text("Desert: Checkpoint 3", width/2, height/2);
      } else if (Lcheckpoint == 4) {
        text("Desert: Checkpoint 4", width/2, height/2);
      } else if (Lcheckpoint == 5) {
        text("Desert: Checkpoint 5", width/2, height/2);
      }
    } else if (level == 2) {
      if (Lcheckpoint == 1) {
        text("Forest: Checkpoint 1", width/2, height/2);
      } else if (Lcheckpoint == 2) {
        text("Forest: Checkpoint 2", width/2, height/2);
      } else if (Lcheckpoint == 3) {
        text("Forest: Checkpoint 3", width/2, height/2);
      } else if (Lcheckpoint == 4) {
        text("Forest: Checkpoint 4", width/2, height/2);
      } else if (Lcheckpoint == 5) {
        text("Forest: Checkpoint 5", width/2, height/2);
      }
    } else if (level == 3) {
      if (Lcheckpoint == 1) {
        text("Ocean: Checkpoint 1", width/2, height/2);
      } else if (Lcheckpoint == 2) {
        text("Ocean: Checkpoint 2", width/2, height/2);
      } else if (Lcheckpoint == 3) {
        text("Ocean: Checkpoint 3", width/2, height/2);
      } else if (Lcheckpoint == 4) {
        text("Ocean: Checkpoint 4", width/2, height/2);
      } else if (Lcheckpoint == 5) {
        text("Ocean: Checkpoint 5", width/2, height/2);
      }
    } else if (level == 4) {
      if (Lcheckpoint == 1) {
        text("City: Checkpoint 1", width/2, height/2);
      } else if (Lcheckpoint == 2) {
        text("City: Checkpoint 2", width/2, height/2);
      } else if (Lcheckpoint == 3) {
        text("City: Checkpoint 3", width/2, height/2);
      } else if (Lcheckpoint == 4) {
        text("City: Checkpoint 4", width/2, height/2);
      } else if (Lcheckpoint == 5) {
        text("City: Checkpoint 5", width/2, height/2);
      }
    } else if (level == 5) {
      if (Lcheckpoint == 1) {
        text("Caverns: Checkpoint 1", width/2, height/2);
      } else if (Lcheckpoint == 2) {
        text("Caverns: Checkpoint 2", width/2, height/2);
      } else if (Lcheckpoint == 3) {
        text("Caverns: Checkpoint 3", width/2, height/2);
      } else if (Lcheckpoint == 4) {
        text("Caverns: Checkpoint 4", width/2, height/2);
      } else if (Lcheckpoint == 5) {
        text("Caverns: Checkpoint 5", width/2, height/2);
      }
    }
  }
}
