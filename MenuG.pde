class MenuG {
  MenuG () {
  }
  void home() {
    if (menuP < 1) {
      menuP = 1;
    } else if (menuP == 1) {
      shop.display();
    } else if (menuP == 2) {
      shipview.display();
    } else if (menuP == 3) {
      levelselect.display();
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
    textFont(bbF24);
    textAlign(LEFT, BOTTOM);
    text("shop", width/100, height*11/15 - height/250); 
    text("ship view", width/100, height*11/15 +height*1.5/15 - height/250);
    text("start", width/100, height*11/15 +height*3/15 - height/250);

    image(sidebarL, width/5, 0);
  }

  void windowB() {
    image(window, width/5 + width/20, height/15); //main base
  }

  void window() {
    tabs.work();
    tabs.show();
    menuG.windowB();
  }

  void bg() {
    image(basebase, 0, 0);
    fill(153, 27, 68);
    textFont(bbF12);
    textAlign(RIGHT, BOTTOM);
    text("01010100 01110010 01100001 01110011 01101000 01100010 01101111 01110100", width - width/100, height - width/100);
  }
}
