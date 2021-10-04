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
}
