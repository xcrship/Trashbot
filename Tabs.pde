class Tabs {
  Tabs () {
  }
  void work() {
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
  }
  void show() {
    if (tab == 1) {
      image(highlightT, width/5 + width/75, height/15); //tab 1
      image(shadowT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75); //tab 2
      if (menuP == 2) {
        image(shadowT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75); //tab 3
      }
    } else if (tab == 2) {
      image(shadowT, width/5 + width/75, height/15); //tab 1
      image(highlightT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75); //tab 2
      if (menuP == 2) {
        image(shadowT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75); //tab 3
      }
    } else if (tab == 3) {
      image(shadowT, width/5 + width/75, height/15); //tab 1
      image(shadowT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75); //tab 2
      image(highlightT, width/5 + width/75, height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75); //tab 3
    }
  }
}
