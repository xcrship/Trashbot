class ItemInfo {
  ItemInfo() {
  }
  void display() {

    iteminfo.boxes();
    iteminfo.prices();
    iteminfo.images();
  }
  void images() {
    if ((mouseX > width/5+width*3/20-height/14) && (mouseX < width/5+width*3/20+height/14)) {
      imageMode(CENTER);
      if ((mouseY > height/5-height/14) && (mouseY < height/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height/5-height/14, width-width/5 - width/15 -height/7, height/7); // close enough
        if (tab==1) {
          image (oilG, width/5+width*3/20, height/5, height/7, height/7);
        } else if (tab==2) {
          image (woodG, width/5+width*3/20, height/5, height/7, height/7);
        }
      } else if ((mouseY > height*2/5-height/14) && (mouseY < height*2/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*2/5-height/14, width-width/5 - width/15 -height/7, height/7); // close enough
        if (tab==1) {
          image (fabricG, width/5+width*3/20, height*2/5, height/7, height/7);
        } else if (tab==2) {
          image (glassG, width/5+width*3/20, height*2/5, height/7, height/7);
        }
      } else if ((mouseY > height*3/5-height/14) && (mouseY < height*3/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*3/5-height/14, width-width/5 - width/15 -height/7, height/7); // close enough
        if (tab==1) {
          image (metalG, width/5+width*3/20, height*3/5, height/7, height/7);
        } else if (tab==2) {
          image (radiationG, width/5+width*3/20, height*3/5, height/7, height/7);
        }
      } else if ((mouseY > height*4/5-height/14) && (mouseY < height*4/5+height/14) && (tab == 1)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*4/5-height/14, width-width/5 - width/15 -height/7, height/7); // close enough
        if (tab==1) {
          image (plasticG, width/5+width*3/20, height*4/5, height/7, height/7);
        }
      }
      imageMode(CORNER);
    }

    //images of items in shop
    if (tab == 1) { 
      imageMode (CENTER);
      //image 1 width/5+width*3/20, height/5, height/7, height/7);
      //image 2 width/5+width*3/20,height*2/5, height/7, height/7);
      //image 3 width/5+width*3/20, height*3/5, height/7, height/7);
      //image 4 width/5+width*3/20, height*4/5, height/7, height/7);

      image (oil, width/5+width*3/20, height/5, height/7, height/7);
      image (fabric, width/5+width*3/20, height*2/5, height/7, height/7);
      image (metal, width/5+width*3/20, height*3/5, height/7, height/7);
      image (plastic, width/5+width*3/20, height*4/5, height/7, height/7);

      imageMode (CORNER);
    } else if (tab == 2) {
      imageMode (CENTER);
      image (wood, width/5+width*3/20, height/5, height/7, height/7);
      image (glass, width/5+width*3/20, height*2/5, height/7, height/7);
      image (radiation, width/5+width*3/20, height*3/5, height/7, height/7);

      imageMode (CORNER);
    }
  }
  void boxes() {
    //boxes arounde items themselves
    fill(190, 38, 49); //shadow
    rectMode(CENTER);

    rect(width/5+width*3/20, height/5, height/7, height/7); //item 1 (display information when hovering)
    rect(width/5+width*3/20, height*2/5, height/7, height/7); //item 2
    rect(width/5+width*3/20, height*3/5, height/7, height/7); //item 3
    if (tab == 1) {
      rect(width/5+width*3/20, height*4/5, height/7, height/7); //item 4
    }
    rectMode(CORNER);
  }
  void prices() {
    //buy and sell prices
    if (tab==1) {
    } else if (tab==2) {
    }
  }
}
