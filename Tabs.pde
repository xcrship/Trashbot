class Tabs {
  Tabs () {
  }
  void display() {
    //change tab
    if (mousePressed) {
      if ((mouseX > width/5 + width/75) && (mouseX < width/5 + width/75 +width/20)) {
        if ((mouseY > height/15) && (mouseY < height/15 + height/15 + height*0.75/5) || (tab == 1)) {
          tab = 1;
          t1 = thilight;
          t2 = tshadow;
          t3 = tshadow;
        } else if ((mouseY > height*2/15 + height*0.75/5) && (mouseY < height*2/15 + height*0.75/5 + height/15 + height*0.75/5) || (tab == 2)) {
          tab = 2;
          t1 = tshadow;
          t2 = thilight;
          t3 = tshadow;
        } else if ((mouseY > height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75) && (mouseY < height*2/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5 + height/75 + height/15 + height*0.75/5) || (tab == 3)) {
          if (menuP == 2) {
            tab = 3;
            t1 = tshadow;
            t2 = tshadow;
            t3 = thilight;
          }
        }
      }
    } 
    fill (t1);
    rect(t1x, t1y, t1w, t1h); //tab 1
    fill (t2);
    rect(t2x, t2y, t2w, t2h); //tab 2
    if (menuP == 2) {
      fill (t3);
      rect(t3x, t3y, t3w, t3h); //tab 3
    }
  }
}
