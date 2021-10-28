Ncursor cursor = new Ncursor();

//game menu-- shop, inventory
MenuG menuG= new MenuG();
MenuS menuS= new MenuS();
Shop shop= new Shop();
Inventory inventory= new Inventory();
ShipView shipview= new ShipView();
ItemInfo iteminfo= new ItemInfo();
Tabs tabs= new Tabs();

int tw = width/20;
int th = height/15 + height/5*3/4;

color thighlight= color(190, 33, 56);
color tshadow= color(190, 38, 49);

//font sizes - 24, 48, 128
//add another font for easier readability -- accessibility option -- all text in same font
//Pixel Font-- Barcade Brawl Font -- comp. w/several romantic+germanic languages ++ others -- pub domain
PFont bbF24;
PFont bbF48;
PFont bbF128;

PImage sidebar;
PImage sidebarL;
PImage basebase;
PImage highlightB;
PImage highlightB2;
PImage shadowB;
PImage shadowB2;
PImage window;
PImage Wbox;
PImage WboxE;

PImage highlightT;
PImage shadowT;

PImage Sbase1;

float levelU; //level unlock
float level; //level select
//hidden levels
float levelAU; //bun
float levelBU; 
float levelCU; //hoot
float levelDU; //quail
float levelEU; //friendship bracelet

float scene; //1-3, Start Menu, Game Menu, Game Play

//menu settings
float tab; //what tab, 1-3
float menuP; //shop, inventory, or ship 1-3

//scrap 
PImage fabric;
PImage fabricG;
float Nfabric;
//fabric: created out of natural or artificial materials through weaving. used in creating terran attire and other materials. can be broken down into fibers.
PImage glass;
PImage glassG;
float Nglass;
//glass: 
PImage metal;
PImage metalG;
float Nmetal;
PImage oil;
PImage oilG;
float Noil;
//oil: commonly found in terran geological formations. can be refined into fuel or other resources. critical environmental impact.
PImage plastic;
PImage plasticG;
float Nplastic;
//plastic: a synthetic polymer based material that can be formed into objects with various uses. critical environmental impact.
PImage radiation;
PImage radiationG;
float Nradiation;
PImage wood;
PImage woodG;
float Nwood;
//order: 
//page 1: oil, fabric, metal, plastic
//page 2: wood, glass, radiation

//traces -- at least 5 -- preferably like 8
float Nbbear; //0 or 1 -- desert -- dump -- jordan
PImage bun;
PImage bunG;
float Nbun; //0 or 1 -- desert -- bunker -- girl
float Nbracelet; //0 or 1 -- forest -- hollow -- jo
PImage hoot;
PImage hootG;
float Nhoot; //0 or 1 -- ocean -- boat -- robert
float Nquail; //0 or 1 -- city -- highrise -- sheri

//credits
PImage credit;
PImage creditG;
float Ncredit;
PImage Ccredit;


class Ncursor {
  Ncursor () {
  }
  void make() {
    colorMode(RGB);
    if (mousePressed) {
      fill(#FFFFFF);
    } else {
      fill(#FFFFFF, 100);
    }
    circle(mouseX, mouseY, 15);
    colorMode(HSB, 360, 100, 100);
  }
}
