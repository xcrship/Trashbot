class Shop {
  Shop() {
  }
  void display() {

    //colors
    //background(190, 45, 41); //background
    //fill(190, 33, 56); //hilight
    //fill(190, 38, 49); //shadow
    //fill(190, 55, 33); //dark

    //finalize menu design w/ custom art
    float mainX = width-width/5 - width/15;


    if (menuP == 1) {
      background(190, 45, 41); //background
      //rect(width/5+width/10,width-width*2/10,height/10,height-height*2/10);   // idk what this is for so im not gonna delete it

      //change tab
      if (mousePressed) {
        if ((mouseX > width/5 + width/75) && (mouseX < width/5 + width/75 +width/20)) {
          if ((mouseY > height/15) && (mouseY < height/15 + height/15 + height*0.75/5)) {
            tab = 1;
          } else if ((mouseY > height*2/15 + height*0.75/5) && (mouseY < height*2/15 + height*0.75/5 + height/15 + height*0.75/5)) {
            tab = 2;
          }
        }
      }

      //tabs
      if (tab == 1) { 
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      } else if (tab == 2) {
        fill(190, 38, 49); //shadow
        rect(width/5 + width/75, height/15, width/20, height/15 + height*0.75/5);
        fill(190, 33, 56); //hilight
        rect(width/5 + width/75, height*2/15 + height*0.75/5 + height/75, width/20, height/15 + height*0.75/5);
      } else if (tab == 3) {
        tab = 1;
      }
      //main body of tabs
      fill(190, 33, 56); //hilight
      rect(width/5 + width/20, height/15, mainX, height - height*2/15); //main base
    }



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

    //buy and sell prices
    if (tab==1) {
    } else if (tab==2) {
    }

    if ((mouseX > width/5+width*3/20-height/14) && (mouseX < width/5+width*3/20+height/14)) {
      imageMode(CENTER);
      if ((mouseY > height/5-height/14) && (mouseY < height/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height/5-height/14, mainX -height/7, height/7); // close enough
        if (tab==1) {
          image (oilG, width/5+width*3/20, height/5, height/7, height/7);
        } else if (tab==2) {
          image (woodG, width/5+width*3/20, height/5, height/7, height/7);
        }
      } else if ((mouseY > height*2/5-height/14) && (mouseY < height*2/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*2/5-height/14, mainX -height/7, height/7); // close enough
        if (tab==1) {
          image (fabricG, width/5+width*3/20, height*2/5, height/7, height/7);
        } else if (tab==2) {
          image (glassG, width/5+width*3/20, height*2/5, height/7, height/7);
        }
      } else if ((mouseY > height*3/5-height/14) && (mouseY < height*3/5+height/14)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*3/5-height/14, mainX -height/7, height/7); // close enough
        if (tab==1) {
          image (metalG, width/5+width*3/20, height*3/5, height/7, height/7);
        } else if (tab==2) {
          image (radiationG, width/5+width*3/20, height*3/5, height/7, height/7);
        }
      } else if ((mouseY > height*4/5-height/14) && (mouseY < height*4/5+height/14) && (tab == 1)) {
        fill(190, 38, 49); //shadow
        rect(width/5+width*3/20-height/14, height*4/5-height/14, mainX -height/7, height/7); // close enough
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
}
