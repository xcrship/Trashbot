class MenuG {
  MenuG () {
  }
  void home() {
    if (menuP < 1) {
      menuP = 1;
    } else if (menuP == 1) {
      shop.display();
    } else if (menuP == 2) {
      inventory.display();
    } else if (menuP == 3) {
      shipview.display();
    }
  }
  //all the lag is coming from #shop and #inventory- menuG and sidebar are doing okay

  void sidebar() {
    //fill(190, 55, 33); //dark
    //rect(0, 0, width/5, height);
    image(sidebar, 0, 0, width/5, height);

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

    if (menuP == 1) {
      image(highlightB, 0, height*10/15); //shop
      image(shadowB, 0, height*10/15 + height*1.5/15); //inventory
      image(shadowB, 0, height*10/15 + height*3/15); //ship view
    } else if (menuP == 2) {
      image(shadowB, 0, height*10/15); //shop
      image(highlightB, 0, height*10/15 + height*1.5/15); //inventory
      image(shadowB, 0, height*10/15 + height*3/15); //ship view
    } else if (menuP ==3) {
      image(shadowB, 0, height*10/15); //shop
      image(shadowB, 0, height*10/15 + height*1.5/15); //inventory
      image(highlightB, 0, height*10/15 + height*3/15); //ship view
    }
    fill(#FFFFFF);
    textFont(mcF48);
    text("shop", width/100, height*10/15+height/100);
    text("inventory", width/100, height*10/15+height*1.5/15+height/100);
    text("ship view", width/100, height*10/15+height*3/15+height/100);

    image(sidebarL, width/5, 0);
  }

  void window() {
    image(window, width/5 + width/20, height/15); //main base
  }
}
