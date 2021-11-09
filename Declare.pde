Ncursor cursor = new Ncursor();

//game menu-- shop, inventory
MenuG menuG= new MenuG();
MenuS menuS= new MenuS();
Shop shop= new Shop();
ShipView shipview= new ShipView();
LevelSelect levelselect = new LevelSelect();
LevelS levels = new LevelS();
ItemInfo iteminfo= new ItemInfo();
Tabs tabs= new Tabs();

//credits
PImage credit;
PImage creditG;
float Ncredit;
PImage Ccredit;
String creditNT; 

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
PImage sidebarL2;
float sidebarx;
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

//menu settings
float tab; //what tab, 1-3
float menuP; //shop, inventory, or ship 1-3

float Sbutt1 = 0;
float Sbutt2 = 0;
float Sbutt3 = 0;
float Sbutt4 = 0;
float Bbutt1 = 0;
float Bbutt2 = 0;
float Bbutt3 = 0;
float Bbutt4 = 0;

PImage Sbase1;

//level select
PImage lbdesert;
PImage lbforest;
PImage lbocean;
PImage lbcity;
PImage lbcaverns;
PImage lbnone;


float levelU; //level unlock
float level; //1-5- level select
float Lcheckpoint; //1-5- checkpoint select
//hidden levels
float levelAU; //1 or 0- desert- bun
float levelBU; //1 or 0- forest- friendship bracelet
float levelCU; //1 or 0- ocean- hoot
float levelDU; //1 or 0- city- quail
float levelEU; //1 or 0- caverns- bear

float scene; //1-3, Start Menu, Game Menu, Game Play


//scrap 
PImage oil;
PImage oilG;
float Noil = 1;
float IIoil = 0;
String oilT = "oil: commonly found in terran geological formations. can be refined \n into fuel or other resources. critical environmental impact.";
String oilNT;

PImage fabric;
PImage fabricG;
float Nfabric = 0;
float IIfabric = 0;
String fabricT = "fabric: created out of natural or artificial materials through weaving.\n used in creating terran attire and other materials. can be broken down\n into fibers.";
String fabricNT;

PImage metal;
PImage metalG;
float Nmetal;
float IImetal = 0;
String metalT = "metal: a lustrous material with the ability to conduct heat and\n electricity relatively well. often made into alloys such as iron.\n used to construct electronics." ;
String metalNT;

PImage plastic;
PImage plasticG;
float Nplastic;
float IIplastic = 0;
String plasticT = "plastic: a synthetic polymer based material that can be formed into\n objects with various uses. critical environmental impact.";
String plasticNT;

PImage wood;
PImage woodG;
float Nwood;
float IIwood = 0;
String woodT = "wood: fibrous structural tissue formed by trees and other plants.\n used in construction of various primitive structures by terrans.\n decomposes naturally.";
String woodNT;

PImage glass;
PImage glassG;
float Nglass;
float IIglass = 0;
String glassT = "glass: non-crystaline, transparent amorphous solid. has a variety of\n practical, technological, and decorative uses. created from\n terran sands.";
String glassNT;

PImage radiation;
PImage radiationG;
float Nradiation;
float IIradiation = 0;
String radiationT = "radiation: in the form of radium, an alkaline terran metal. it is highly\n radioactive, making it useful in energy generation." ;
String radiationNT;

//order: 
//page 1: oil, fabric, metal, plastic
//page 2: wood, glass, radiation

//traces -- at least 5 -- preferably like 8
PImage bun;
PImage bunG;
float Nbun = 0; //0 or 1 -- desert -- bunker -- girl
float Nbracelet = 0; //0 or 1 -- forest -- hollow -- jo
PImage hoot;
PImage hootG;
float Nhoot = 0; //0 or 1 -- ocean -- boat -- robert
float Nquail = 0; //0 or 1 -- city -- highrise -- sheri
float Nbbear = 0; //0 or 1 -- caverns -- girl -- jordan


//return mouse clicked void here
void mouseClicked() {
  if (scene == 2 && (menuP == 1 || menuP == 2)) {
    if ((mouseY > height/5 - height/30) && (mouseY < height/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        if ((tab == 1) && (Noil > 0)) {
          Noil = Noil - 1;
          Ncredit = Ncredit + 250;
        } else if ((tab == 2) && (Nwood > 0)) {
          Nwood = Nwood - 1;
          Ncredit = Ncredit + 450;
        }
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14) && (Ncredit > 0)) {
        if (tab == 1) {
          Noil = Noil + 1;
          Ncredit = Ncredit - 300;
        } else if (tab == 2) {
          Nwood = Nwood + 1;
          Ncredit = Ncredit - 700;
        }
      }
    } else if ((mouseY > height*2/5 - height/30) && (mouseY < height*2/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        if ((tab == 1) && (Nfabric > 0)) {
          Nfabric = Nfabric - 1;
          Ncredit = Ncredit + 300;
        } else if ((tab == 2) && (Nglass > 0)) {
          Nglass = Nglass - 1;
          Ncredit = Ncredit + 500;
        }
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14) && (Ncredit > 0)) {
        if (tab == 1) {
          Nfabric = Nfabric + 1;
          Ncredit = Ncredit - 400;
        } else if (tab == 2) {
          Nglass = Nglass + 1;
          Ncredit = Ncredit - 800;
        }
      }
    } else if ((mouseY > height*3/5 - height/30) && (mouseY < height*3/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        if ((tab == 1)&&(Nmetal > 0)) {
          Nmetal = Nmetal - 1;
          Ncredit = Ncredit + 350;
        } else if ((tab == 2) && (Nradiation > 0)) {
          Nradiation = Nradiation - 1;
          Ncredit = Ncredit + 550;
        }
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14) && (Ncredit > 0)) {
        if (tab == 1) {
          Nmetal = Nmetal + 1;
          Ncredit = Ncredit - 500;
        } else if (tab == 2) {
          Nradiation = Nradiation + 1;
          Ncredit = Ncredit - 900;
        }
      }
    } else if ((mouseY > height*4/5 - height/30) && (mouseY < height*4/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        if ((tab == 1) && (Nplastic > 0)) {
          Nplastic = Nplastic - 1;
          Ncredit = Ncredit + 400;
        }
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14)) {
        if ((tab == 1) && (Ncredit > 0)) {
          Nplastic = Nplastic + 1;
          Ncredit = Ncredit - 900;
        }
      }
    }
  }
}

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
