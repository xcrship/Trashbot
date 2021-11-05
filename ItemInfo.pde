class ItemInfo {
  ItemInfo() {
  }
  void display() {
    iteminfo.bsbuttdis();
    iteminfo.qdisplay();
    iteminfo.boxes();
    iteminfo.images();
    iteminfo.info();
  }
  void qdisplay() {
    oilNT = nf(Noil, 5, 0);
    fabricNT = nf(Nfabric, 5, 0);
    metalNT = nf(Nmetal, 5, 0);
    plasticNT = nf(Nplastic, 5, 0);
    woodNT = nf(Nwood, 5, 0);
    glassNT = nf(Nglass, 5, 0);
    radiationNT = nf(Nradiation, 5, 0);

    //width/5+width*3/20, height*[1, 2, 3, 4]/5 -- height/7
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(LEFT, CENTER);
    if (tab==1) {
      text(oilNT, width/5+width*3/20 + height/7, height/5);
      text(fabricNT, width/5+width*3/20 + height/7, height*2/5);
      text(metalNT, width/5+width*3/20 + height/7, height*3/5);
      text(plasticNT, width/5+width*3/20 + height/7, height*4/5);
    } else if (tab == 2) {
      text(woodNT, width/5+width*3/20 + height/7, height/5);
      text(glassNT, width/5+width*3/20 + height/7, height*2/5);
      text(radiationNT, width/5+width*3/20 + height/7, height*3/5);
    }
  }
  void bsbuttdis() {
    iteminfo.bsbuttreset();
    if ((mouseY > height/5 - height/30) && (mouseY < height/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        Sbutt1 = 1;
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14)) {
        Bbutt1 = 1;
      }
    } else if ((mouseY > height*2/5 - height/30) && (mouseY < height*2/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        Sbutt2 = 1;
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14)) {
        Bbutt2 = 1;
      }
    } else if ((mouseY > height*3/5 - height/30) && (mouseY < height*3/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        Sbutt3 = 1;
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14)) {
        Bbutt3 = 1;
      }
    } else if ((mouseY > height*4/5 - height/30) && (mouseY < height*4/5 - height/30 + height/15)) {
      if ((mouseX > width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX < width - width/5 + width*3/20 - width/15 - height*3/14 + width/5)) {
        Sbutt4 = 1;
      } else if ((mouseX < width - width/5 + width*3/20 - width/15 - height*3/14) && (mouseX > width -width*2/5 + width*3/20 - width/15 - height*3/14)) {
        Bbutt4 = 1;
      }
    } 
    iteminfo.sbuttdis();
    iteminfo.bbuttdis();
  }
  void images() {
    if ((mouseX > width/5+width*3/20-height/14) && (mouseX < width/5+width*3/20+height/14)) {
      if ((mouseY > height/5-height/14) && (mouseY < height/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (oilG, width/5+width*3/20, height/5);
          IIoil = 1;
          IIfabric = 0;
          IImetal = 0;
          IIplastic = 0;
        } else if (tab==2) {
          image (woodG, width/5+width*3/20, height/5);
          IIwood = 1;
          IIglass = 0;
          IIradiation = 0;
        }
        imageMode(CORNER);
      } else if ((mouseY > height*2/5-height/14) && (mouseY < height*2/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height*2/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (fabricG, width/5+width*3/20, height*2/5);
          IIoil = 0;
          IIfabric = 1;
          IImetal = 0;
          IIplastic = 0;
        } else if (tab==2) {
          image (glassG, width/5+width*3/20, height*2/5);
          IIwood = 0;
          IIglass = 1;
          IIradiation = 0;
        }
        imageMode(CORNER);
      } else if ((mouseY > height*3/5-height/14) && (mouseY < height*3/5+height/14)) {
        image(WboxE, width/5+width*3/20-height/14, height*3/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (metalG, width/5+width*3/20, height*3/5);
          IIoil = 0;
          IIfabric = 0;
          IImetal = 1;
          IIplastic = 0;
        } else if (tab==2) {
          image (radiationG, width/5+width*3/20, height*3/5);
          IIwood = 0;
          IIglass = 0;
          IIradiation = 1;
        }
        imageMode(CORNER);
      } else if ((mouseY > height*4/5-height/14) && (mouseY < height*4/5+height/14) && (tab == 1)) {
        image(WboxE, width/5+width*3/20-height/14, height*4/5-height/14); // close enough
        imageMode(CENTER);
        if (tab==1) {
          image (plasticG, width/5+width*3/20, height*4/5);
          IIoil = 0;
          IIfabric = 0;
          IImetal = 0;
          IIplastic = 1;
        }
        imageMode(CORNER);
      } else {
        IIoil = 0;
        IIwood = 0;
        IIfabric = 0;
        IIglass = 0;
        IImetal = 0;
        IIradiation = 0;
        IIplastic = 0;
      }
    } else {
      IIoil = 0;
      IIwood = 0;
      IIfabric = 0;
      IIglass = 0;
      IImetal = 0;
      IIradiation = 0;
      IIplastic = 0;
    }

    //images of items in shop
    if (tab == 1) { 
      imageMode (CENTER);
      //image 1 width/5+width*3/20, height/5, height/7, height/7);
      //image 2 width/5+width*3/20, height*2/5, height/7, height/7);
      //image 3 width/5+width*3/20, height*3/5, height/7, height/7);
      //image 4 width/5+width*3/20, height*4/5, height/7, height/7);

      image (oil, width/5+width*3/20, height/5);
      image (fabric, width/5+width*3/20, height*2/5);
      image (metal, width/5+width*3/20, height*3/5);
      image (plastic, width/5+width*3/20, height*4/5);

      imageMode (CORNER);
    } else if (tab == 2) {
      imageMode (CENTER);
      image (wood, width/5+width*3/20, height/5);
      image (glass, width/5+width*3/20, height*2/5);
      image (radiation, width/5+width*3/20, height*3/5);

      imageMode (CORNER);
    }
  }
  void info() {
    fill(#FFFFFF);
    textFont(bbF12);
    textAlign(LEFT, CENTER);
    if (IIoil == 1) {
      text(oilT, width/5+width*3/20-height/14 +height/7 + height/100, height/5);
    } else if (IIwood == 1) {
      text(woodT, width/5+width*3/20-height/14 +height/7 + height/100, height/5);
    } else if (IIfabric == 1) {
      text(fabricT, width/5+width*3/20-height/14 +height/7 + height/100, height*2/5);
    } else if (IIglass == 1) {
      text(glassT, width/5+width*3/20-height/14 +height/7 + height/100, height*2/5);
    } else if (IImetal == 1) {
      text(metalT, width/5+width*3/20-height/14 +height/7 + height/100, height*3/5);
    } else if (IIradiation == 1) {
      text(radiationT, width/5+width*3/20-height/14 +height/7 + height/100, height*3/5);
    } else if (IIplastic == 1) {
      text(plasticT, width/5+width*3/20-height/14 +height/7 + height/100, height*4/5);
    }
  }
  void bbuttdis() {
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(LEFT, CENTER);
    if (Bbutt1 == 1) {
      image(shadowB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        text("300", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
        image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("700", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      }
    } else if (Bbutt2 == 1) {
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(shadowB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        text("400", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
        image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("800", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      }
    } else if (Bbutt3 == 1) {
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(shadowB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      if (tab == 1) {
        text("500", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
        image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("900", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      }
    } else if (Bbutt4 == 1) {
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        image(shadowB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("600", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      }
    } else {
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        image(highlightB2, width -width*2/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text(" buy", width - width/5 + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      }
    }
  }
  void sbuttdis() {
    fill(#FFFFFF);
    textFont(bbF24);
    textAlign(LEFT, CENTER);
    if (Sbutt1 == 1) {
      image(shadowB2, width - width/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        text("250", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
        image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("450", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      }
    } else if (Sbutt2 == 1) {
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(shadowB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        text("300", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
        image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("500", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      }
    } else if (Sbutt3 == 1) {
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(shadowB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      if (tab == 1) {
        text("350", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
        image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      } else if (tab == 2) {
        text("550", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      }
    } else if (Sbutt4 == 1) {
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        image(shadowB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("400", width + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      }
    } else {
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*2/5 - height/30);
      image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*3/5 - height/30);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*2/5);
      text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*3/5);
      if (tab == 1) {
        image(highlightB2, width - width/5 + width*3/20 - width/15 - height*3/14, height*4/5 - height/30);
        text("sell", width + width*3/20 - width/15 - height*3/14 - width/15, height*4/5);
      }
    }
  }
  void boxes() {
    //boxes arounde items themselves
    imageMode(CENTER);

    image(Wbox, width/5+width*3/20, height/5); //item 1 (display information when hovering)
    image(Wbox, width/5+width*3/20, height*2/5); //item 2
    image(Wbox, width/5+width*3/20, height*3/5); //item 3
    if (tab == 1) {
      image(Wbox, width/5+width*3/20, height*4/5); //item 4
    }
    imageMode(CORNER);
  }
  void bsbuttreset () {
    Sbutt1 = 0;
    Sbutt2 = 0;
    Sbutt3 = 0;
    Sbutt4 = 0;

    Bbutt1 = 0;
    Bbutt2 = 0;
    Bbutt3 = 0;
    Bbutt4 = 0;
  }
}
