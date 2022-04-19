void setup() {
  fullScreen();
  noCursor();
  colorMode(HSB, 360, 100, 100);  
  noStroke();
  frameRate(60);
  textAlign(LEFT, TOP);

  bbF12 = createFont("bbF.ttf", 12);
  bbF24 = createFont("bbF.ttf", 24);
  bbF48 = createFont("bbF.ttf", 48);
  bbF128 = createFont("bbF.ttf", 128);

  Sbase1 = loadImage("base 1.png");
  Sbase1.resize(width, height - height/10);

  basebase = loadImage("base base.png");
  basebase.resize(width, height);

  sidebarx = 0;
  sidebar = loadImage("sidebar.png");
  sidebar.resize( width/5, height);
  sidebarL = loadImage("sidebarL.png");
  sidebarL.resize(width/500, height);
  sidebarL2 = loadImage("sidebarL.png");
  sidebarL2.resize(width/5, width/500);
  highlightB = loadImage("highlight button.png");
  highlightB.resize(width/5, height/15);
  shadowB = loadImage("shadow button.png");
  shadowB.resize(width/5, height/15);

  window = loadImage("window.png");
  window.resize(width-width/5 - width/15, height - height*2/15);
  highlightT = loadImage("highlight tab.png");
  highlightT.resize(width/20 - width/150, height/15 + height/5*3/4);
  shadowT = loadImage("shadow tab.png");
  shadowT.resize(width/20 - width/150, height/15 + height/5*3/4);
  selectT = loadImage("select tab.png");
  highlightB2 = loadImage("highlight button 2.png");
  highlightB2.resize(width/5, height/15);
  shadowB2 = loadImage("shadow button 2.png");
  shadowB2.resize(width/5, height/15);
  Wbox = loadImage("box.png");
  Wbox.resize(height/7, height/7);
  WboxE = loadImage("box expand.png");
  WboxE.resize(width-width/5 - width/15 -height/7, height/7);

  fabric = loadImage("fabric.png");
  fabric.resize(height/7, height/7);
  fabricG = loadImage("fabric glow.png");
  fabricG.resize(height/7, height/7);
  glass = loadImage("glass.png");
  glass.resize(height/7, height/7);
  glassG = loadImage("glass glow.png");
  glassG.resize(height/7, height/7);
  metal = loadImage("metal.png");
  metal.resize(height/7, height/7);
  metalG = loadImage("metal glow.png");
  metalG.resize(height/7, height/7);
  oil = loadImage("oil.png");
  oil.resize(height/7, height/7);
  oilG = loadImage("oil glow.png");
  oilG.resize(height/7, height/7);
  plastic = loadImage("plastic.png");
  plastic.resize(height/7, height/7);
  plasticG = loadImage("plastic glow.png");
  plasticG.resize(height/7, height/7);
  radiation = loadImage("radiation.png");
  radiation.resize(height/7, height/7);
  radiationG = loadImage("radiation glow.png");
  radiationG.resize(height/7, height/7);
  wood = loadImage("wood.png");
  wood.resize(height/7, height/7);
  woodG = loadImage("wood glow.png");
  woodG.resize(height/7, height/7);

  bun = loadImage("bun.png");
  bunG = loadImage("bun glow.png");
  hoot = loadImage("hoot.png");
  hootG = loadImage("hoot glow.png");

  credit = loadImage("credits.png");
  creditG = loadImage("credits glow.png");
  creditG.resize(height/28, height/28);

  lbdesert = loadImage("lilbox desert.png");
  lbforest = loadImage("lilbox forest.png");
  lbocean = loadImage("lilbox ocean.png");
  lbcity = loadImage("lilbox city.png");
  lbcaverns = loadImage("lilbox cavern.png"); //caverns -- plural
  lbnone = loadImage("lilbox none.png");


  tab = 1;
  menuP = 1;
  //scene 1 = starting screen
  //scene 2 = game menu -- shop, ship view, level selectxs
  //scene 3 = gameplays

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

  //test only
  Ncredit = 1000000;
  //test setup end

  scene = 2;
}

void draw() {
  //PFont.list();
  if (scene == 1) {
    menuS.home(); //Starting Menu
  } else if (scene == 2) {
    menuG.home(); //Game Menu (shop, ship view, level select)
    menuG.sidebar();
  } else if (scene == 3) {
  }
  cursor.make();
}
