class Tabs {
  Tabs () {
  }
  void display() {
    //change tab
    if (mousePressed) {
      if ((mouseX > width/5 + width/75) && (mouseX < width/5 + width/75 +width/20)) {
        if ((mouseY > height/15) && (mouseY < height/15 + height/15 + height*0.75/5)) {
          tab = 1;
        } else if ((mouseY > height*2/15 + height*0.75/5) && (mouseY < height*2/15 + height*0.75/5 + height/15 + height*0.75/5)) {
          tab = 2;
        } else if ((mouseY > height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75) && (mouseY < height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5)) {
          if (menuP == 1) {
            tab = 1;
          } else {
            tab = 3;
          }
        }
      }
    }
    //rect(t1x, t1y, t1w, t1h); //tab 1
    //rect(t2x, t2y, t2w, t2h); //tab 2
    //rect(t3x, t3y, t3w, t3h); //tab 3

    if (tab == 1) {
      image(highlightT, t1x, t1y, t1w, t1h); //tab 1
      image(shadowT, t2x, t2y, t2w, t2h); //tab 2
      if (menuP == 2) {
        image(shadowT, t3x, t3y, t3w, t3h); //tab 3
      }
    } else if (tab == 2) {
      image(shadowT, t1x, t1y, t1w, t1h); //tab 1
      image(highlightT, t2x, t2y, t2w, t2h); //tab 2
      if (menuP == 2) {
        image(shadowT, t3x, t3y, t3w, t3h); //tab 3
      }
    } else if (tab == 3) {
      image(shadowT, t1x, t1y, t1w, t1h); //tab 1
      image(shadowT, t2x, t2y, t2w, t2h); //tab 2
      image(highlightT, t3x, t3y, t3w, t3h); //tab 3
    }
  }
  void oldTabs() {
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
  }
}
