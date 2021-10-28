class ItemInfo {
  ItemInfo() {
  }
  void display() {

    iteminfo.boxes();
    iteminfo.prices();
    iteminfo.images();
  }
  void images() {
    fill(#FFFFFF);
    textFont(mcF24);
    textAlign(LEFT, TOP);
    if ((mouseX > width/5+width*3/20-height/14) && (mouseX < width/5+width*3/20+height/14)) {
      if ((mouseY > height/5-height/14) && (mouseY < height/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (oilG, width/5+width*3/20, height/5);
          //oil: commonly found in terran geological formations. can be refined into fuel or other resources. critical environmental impact.
        } else if (tab==2) {
          image (woodG, width/5+width*3/20, height/5);
        }
        imageMode(CORNER);
      } else if ((mouseY > height*2/5-height/14) && (mouseY < height*2/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height*2/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (fabricG, width/5+width*3/20, height*2/5);
          //fabric: created out of natural or artificial materials through weaving. used in creating terran attire and other materials. can be broken down into fibers.
        } else if (tab==2) {
          image (glassG, width/5+width*3/20, height*2/5);
        }
        imageMode(CORNER);
      } else if ((mouseY > height*3/5-height/14) && (mouseY < height*3/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height*3/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (metalG, width/5+width*3/20, height*3/5);
        } else if (tab==2) {
          image (radiationG, width/5+width*3/20, height*3/5);
        }
        imageMode(CORNER);
      } else if ((mouseY > height*4/5-height/14) && (mouseY < height*4/5+height/14) && (tab == 1)) {
        image(WboxE, width/5+width*3/20-height/14, height*4/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (plasticG, width/5+width*3/20, height*4/5);
          //plastic: a synthetic polymer based material that can be formed into objects with various uses. critical environmental impact.
        }
        imageMode(CORNER);
      }
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
    imageMode(CENTER);

    image(Wbox, width/5+width*3/20, height/5); //item 1 (display information when hovering)
    image(Wbox, width/5+width*3/20, height*2/5); //item 2
    image(Wbox, width/5+width*3/20, height*3/5); //item 3
    if (tab == 1) {
      image(Wbox, width/5+width*3/20, height*4/5); //item 4
    }
    imageMode(CORNER);
  }
  void prices() {
    //buy and sell prices
    if (tab==1) {
    } else if (tab==2) {
    }
  }
}
