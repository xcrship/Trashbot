class MenuG {
  MenuG () {
  }
  void home() {
    if (menuP == 1) {
      shop.display();
      menuG.keyselect();
    } else if (menuP == 2) {
      menuG.sidebargo();
      shipview.display();
    } else if (menuP == 3) {
      levelselect.display();
    }
  }

  void keyselect() {
  }
  void sidebargo() {
    if ((mouseX > width/5) && (sidebarx > width*-3.75/20)) {
      sidebarx = sidebarx - width/75;
    } else if ((mouseX < width*-3.75/20 + width/5) && (sidebarx < 0)) {
      sidebarx = sidebarx + width/75;
    }
  }

  void cdisplay() {
    creditNT = nf(Ncredit, 10, 0);

    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(LEFT, CENTER);

    text(creditNT, sidebarx + width*2/200, height*2/5);

    imageMode(CENTER);
    image (creditG, sidebarx + width/5 - width*2/200 - height/56, height*2/5);
    imageMode(CORNER);

    image(sidebarL2, sidebarx, height*2/5 + width*2/200);
    image(sidebarL2, sidebarx, height*2/5 - width*2.25/200);
  }

  void sidebar() {
    //fill(190, 55, 33); //dark
    //rect(0, 0, width/5, height);
    image(sidebar, sidebarx, 0);

    if (mousePressed && (sidebarx ==0)) {
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
      image(highlightB, sidebarx, height*10/15); //shop
      image(shadowB, sidebarx, height*10/15 + height*1.5/15); //inventory
      image(shadowB, sidebarx, height*10/15 + height*3/15); //ship view
    } else if (menuP == 2) {
      image(shadowB, sidebarx, height*10/15); //shop
      image(highlightB, sidebarx, height*10/15 + height*1.5/15); //inventory
      image(shadowB, sidebarx, height*10/15 + height*3/15); //ship view
    } else if (menuP ==3) {
      image(shadowB, sidebarx, height*10/15); //shop
      image(shadowB, sidebarx, height*10/15 + height*1.5/15); //inventory
      image(highlightB, sidebarx, height*10/15 + height*3/15); //ship view
    }
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(LEFT, BOTTOM);
    text("shop", sidebarx + width/100, height*11/15 - height/250); 
    text("ship view", sidebarx+ width/100, height*11/15 +height*1.5/15 - height/250);
    text("start", sidebarx+ width/100, height*11/15 +height*3/15 - height/250);

    image(sidebarL, sidebarx + width/5, 0);

    menuG.cdisplay();
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
    text("00110111 01010010 00110100 00110101 01001000 00111000 00110000 00110111", width - width/100, height - width/100);
  }
}
