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
//https://www.fontspace.com/barcade-brawl-font-f31534
PFont bbF12;
PFont bbF24;
PFont bbF48;
PFont bbF128;


PImage sidebar;
PImage sidebarL;
PImage highlightB;
PImage shadowB;

PImage basebase;

PImage window;
PImage highlightT;
PImage shadowT;
PImage Wbox;
PImage WboxE;
PImage highlightB2;
PImage shadowB2;

float Sbutt1 = 0;
float Sbutt2 = 0;
float Sbutt3 = 0;
float Sbutt4 = 0;
float Bbutt1 = 0;
float Bbutt2 = 0;
float Bbutt3 = 0;
float Bbutt4 = 0;

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
PImage oil;
PImage oilG;
float Noil;
float IIoil = 0;
String oilT = "oil: commonly found in terran geological formations. can be refined \n into fuel or other resources. critical environmental impact.";

PImage fabric;
PImage fabricG;
float Nfabric;
float IIfabric = 0;
String fabricT = "fabric: created out of natural or artificial materials through weaving.\n used in creating terran attire and other materials. can be broken down\n into fibers.";

PImage metal;
PImage metalG;
float Nmetal;
float IImetal = 0;
String metalT = "metal: a lustrous material with the ability to conduct heat and\n electricity relatively well. often made into alloys such as iron.\n used to construct electronics." ;

PImage plastic;
PImage plasticG;
float Nplastic;
float IIplastic = 0;
String plasticT = "plastic: a synthetic polymer based material that can be formed into\n objects with various uses. critical environmental impact.";

PImage wood;
PImage woodG;
float Nwood;
float IIwood = 0;
String woodT = "wood: fibrous structural tissue formed by trees and other plants.\n used in construction of various primitive structures by terrans.\n decomposes naturally.";

PImage glass;
PImage glassG;
float Nglass;
float IIglass = 0;
String glassT = "glass: non-crystaline, transparent amorphous solid. has a variety of\n practical, technological, and decorative uses. created from\n terran sands.";

PImage radiation;
PImage radiationG;
float Nradiation;
float IIradiation = 0;
String radiationT = "radiation: in the form of radium, a alkaline terran metal. it is highly\n radioactive, making it useful in energy generation." ;

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
