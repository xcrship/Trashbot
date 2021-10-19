class Inventory {
  Inventory() {
  }
  void display() {



    //colors
    //background(190, 45, 41); //background
    //fill(190, 33, 56); //hilight
    //fill(190, 38, 49); //shadow
    //fill(190, 55, 33); //dark

    //finalize menu design w/ custom art



    if (menuP == 2) {
      //background(190, 45, 41); //background
      //rect(width/5+width/10,width-width*2/10,height/10,height-height*2/10);   // idk what this is for so im not gonna delete it
      image(basebase, 0, 0, width, height);

      //menuG.tabs();
      tabs.display();
      menuG.window();
      iteminfo.display();
    }
  }
}
