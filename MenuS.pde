class MenuS {
  MenuS () {
  }
  void home() {
    background(#000000);
    image(Sbase1, 0, height/20);

    //changes opacity with mouse code (alpha 255 when mousPress)
    textFont(bbF12);
    textAlign(RIGHT, BOTTOM);
    text("00110111 01010010 00110100 00110101 01001000 00111000 00110000 00110111", width - width/100, height - width/100);
  }
  void demo() { 
    if (gallery == 0) {
      tint(255, 150);
      //image(basebase, width/5, height-width*2/5, width*2.8/5, height*1.25/20);
      imageMode(CENTER);
      //image(basebase, width/2, height/2, width*2.8/5, height*1.25/20);
      imageMode(CORNER);
      noTint();

      //fill(#FFFFFF);
      fill(#000000);
      textFont(bbF48);
      //stextAlign(LEFT, TOP);
      //text("Trashbot Shop Demo", width/5+5, height-width*2/5+5);
      textAlign(CENTER, CENTER);
      text("Trashbot Shop Demo", width/2, height/2);
      textFont(bbF24);
      text("click anywhere to start", width/2, height/2+height/20);
    } else if (gallery == 1) {
      menuS.gallery();
    }
  }
  void gallery() {
    background(#000000);

    //title
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(CENTER, CENTER);
    text("Gallery", width/2, height/10);

    //button to view shop demo
  }
}
