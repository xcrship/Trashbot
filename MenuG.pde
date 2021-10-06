class MenuG {
  MenuG () {
  }
  void home() {
    if (menuP < 1) {
      menuP = 1;
    }
    shop.display();
    inventory.display();
    shipview.display();
  }


  //colors
  //background(190, 45, 41); //background
  //fill(190, 33, 56); //hilight
  //fill(190, 38, 49); //shadow
  //fill(190, 55, 33); //dark

  void sidebar() {
    fill(190, 55, 33); //dark
    rect(0, 0, width/5, height);
    if (mousePressed) {
      if ((mouseX > 0) && (mouseX < width/5)) { //change page
        if ((mouseY > height*10/15) && (mouseY < height*11/15)) {
          menuP = 1;
        } else if ((mouseY > height*10/15 + height*1.5/15) && (mouseY < height*11/15 + height*1.5/15)) {
          menuP = 2;
        } else if ((mouseY > height*10/15 + height*3/15) && (mouseY < height*11/15 + height*3/15)) {
          menuP = 3;
        }
      }
    }
    //rect(0, height*10/15, width/5, height/15); // shop
    //rect(0, height*10/15 + height*1.5/15, width/5, height/15); //inventory

    if (menuP == 1) {
      fill(190, 33, 56); //hilight
      rect(0, height*10/15, width/5, height/15); //shop
      fill(190, 38, 49); //shadow
      rect(0, height*10/15 + height*1.5/15, width/5, height/15); //inventory
      rect(0, height*10/15 + height*3/15, width/5, height/15); //ship view
    } else if (menuP == 2) {
      fill(190, 33, 56); //hilight
      rect(0, height*10/15 + height*1.5/15, width/5, height/15); //inventory
      fill(190, 38, 49); //shadow
      rect(0, height*10/15, width/5, height/15); //shop
      rect(0, height*10/15 + height*3/15, width/5, height/15); //ship view
    } else if (menuP ==3) {
      fill(190, 33, 56); //hilight
      rect(0, height*10/15 + height*3/15, width/5, height/15); //ship view
      fill(190, 38, 49); //shadow
      rect(0, height*10/15, width/5, height/15); //shop
      rect(0, height*10/15 + height*1.5/15, width/5, height/15); //inventory
    }
  }
  void tabs() {
    //change tab
    if (mousePressed) {
      if ((mouseX > width/5 + width/75) && (mouseX < width/5 + width/75 +width/20)) {
        if ((mouseY > height/15) && (mouseY < height/15 + height/15 + height*0.75/5)) {
          tab = 1;
        } else if ((mouseY > height*2/15 + height*0.75/5) && (mouseY < height*2/15 + height*0.75/5 + height/15 + height*0.75/5)) {
          tab = 2;
        } else if ((mouseY > height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75) && (mouseY < height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5)) {
          if (menuP == 2) {
            tab = 3;
          } else if (menuP == 1) {
            tab = 1;
          }
        }
      }
    }

    //tabs
    if (tab == 1) { 
      fill(190, 33, 56); //hilight
      rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
      fill(190, 38, 49); //shadow
      rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      if (menuP == 2) {
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      }
    } else if (tab == 2) {
      fill(190, 38, 49); //shadow
      rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
      fill(190, 33, 56); //hilight
      rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      if (menuP == 2) {
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      }
    } else if (tab == 3) {
      if (menuP == 2) {
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      } else if (menuP == 1) {
        tab = 1;
      }
    }
  }
  void window() {
    fill(190, 33, 56); //hilight
    rect(width/5 + width/20, height/15, width-width/5 - width/15, height - height*2/15); //main base
  }
}



class Old {
  Old () {
  }
  void no() {
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

    //colors
    //background(190, 45, 41); //background
    //fill(190, 33, 56); //hilight
    //fill(190, 38, 49); //shadow
    //fill(190, 55, 33); //dark

    //finalize menu design w/ custom art
  }
}
