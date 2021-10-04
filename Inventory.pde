class Inventory {
  Inventory() {
  }
  void display() {



    //colors
    //background(190, 45, 41); //background
    //fill(190, 33, 56); //hilight
    //fill(190, 38, 49); //shadow
    //fill(190, 55, 33); //dark

    //finalize menu design w/ custom art



    if (menuP == 2) {
      background(190, 45, 41); //background
      //rect(width/5+width/10,width-width*2/10,height/10,height-height*2/10);   // idk what this is for so im not gonna delete it

      //change tab
      if (mousePressed) {
        if ((mouseX > width/5 + width/75) && (mouseX < width/5 + width/75 +width/20)) {
          if ((mouseY > height/15) && (mouseY < height/15 + height/15 + height*0.75/5)) {
            tab = 1;
          } else if ((mouseY > height*2/15 + height*0.75/5) && (mouseY < height*2/15 + height*0.75/5 + height/15 + height*0.75/5)) {
            tab = 2;
          } else if ((mouseY > height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75) && (mouseY < height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5)) {
            tab = 3;
          }
        }
      }

      //tabs
      if (tab == 1) { 
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      } else if (tab == 2) {
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      } else if (tab == 3) {
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      }

      fill(190, 33, 56); //hilight
      rect(width/5 + width/20, height/15, width-width/5 - width/15, height - height*2/15); //main base
    }
  }
}
