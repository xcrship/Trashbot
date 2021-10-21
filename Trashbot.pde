//arrow keys + spacebar-- extra buttons , . / -- work automatically on the game cabinent
//player two wasd  and something else-- ill work with kess to get it done  --> i dont think i want to do a player two tho so i wont

void setup() {
  fullScreen();
  noCursor();
  colorMode(HSB, 360, 100, 100);  
  noStroke();
  frameRate(60);

  mcF = createFont("font.otf", 120);

  sidebar = loadImage("sidebar.png");
  basebase = loadImage("base base.png");
  basebase.resize(width, height);
  window = loadImage("window.png");
  window.resize(width-width/5 - width/15, height - height*2/15);
  highlightB = loadImage("highlight button.png");
  highlightB.resize(width/5, height/15);
  shadowB = loadImage("shadow button.png");
  shadowB.resize(width/5, height/15);

  highlightT = loadImage("highlight tab.png");
  highlightT.resize(width/20, height/15 + height/5*3/4);
  shadowT = loadImage("shadow tab.png");
  shadowT.resize(width/20, height/15 + height/5*3/4);

  Sbase1 = loadImage("base 1.png");

  fabric = loadImage("fabric.png");
  fabricG = loadImage("fabric glow.png");
  glass = loadImage("glass.png");
  glassG = loadImage("glass glow.png");
  metal = loadImage("metal.png");
  metalG = loadImage("metal glow.png");
  oil = loadImage("oil.png");
  oilG = loadImage("oil glow.png");
  plastic = loadImage("plastic.png");
  plasticG = loadImage("plastic glow.png");
  radiation = loadImage("radiation.png");
  radiationG = loadImage("radiation glow.png");
  wood = loadImage("wood.png");
  woodG = loadImage("wood glow.png");

  bun = loadImage("bun.png");
  bunG = loadImage("bun glow.png");
  hoot = loadImage("hoot.png");
  hootG = loadImage("hoot glow.png");

  credit = loadImage("credits.png");
  creditG = loadImage("credits glow.png");


  tab = 1;
  menuP = 0;
  scene = 2;
  //scene 1 = starting screen
  //scene 2 = game menu
  //scene 3 = gameplay

  Nfabric = 0;
  Nglass = 0;
  Nmetal = 0;
  Noil = 0;
  Nplastic = 0;
  Nradiation = 0;
  Nwood = 0; //7

  Nbun = 0;
  Nhoot = 0;

  background (0, 0, 0);
}


void draw() {
  PFont.list();
  if (scene == 1) {
    menuS.home(); //Starting Menu
  } else if (scene == 2) {
    menuG.home(); //Game Menu
    menuG.sidebar();
  } else if (scene == 3) {
  }
  cursor.make();
}
