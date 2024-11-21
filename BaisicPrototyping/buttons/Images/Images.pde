import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float monkeyX, monkeyY, monkeyWidth, monkeyHeight;
PImage picBackground, picMonkey;
int picMonkeyWidth, picMonkeyHeight;
float monkeyX_Changed, monkeyY_Changed;
float picMonkeyWidthChanged, picMonkeyHeightChanged;
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../monkey.jpg");
  monkeyX_Changed = monkeyX = appWidth * 1/4;
  monkeyY_Changed = monkeyY = appHeight * 1/4;
  monkeyWidth = appWidth * 1/2;
  monkeyHeight = appHeight * 1/2;
  picMonkey = loadImage("monkey.jpg");
  picMonkeyWidthChanged = picMonkeyWidth = 2000;
  picMonkeyHeightChanged = picMonkeyHeight = 3000;
  //
  //Image Compression
  float biggerSide = ( picMonkeyWidth > picMonkeyHeight ) ? picMonkeyWidth : picMonkeyHeight ;
  float smallerSide = ( picMonkeyHeight < picMonkeyWidth ) ? picMonkeyHeight : picMonkeyWidth ;
  float ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( monkeyWidth > monkeyHeight ) { //DIV Landscape, find larger side
    picMonkeyHeightChanged = monkeyHeight;
    picMonkeyWidthChanged = ( picMonkeyWidth > picMonkeyHeight ) ? picMonkeyWidthChanged / ratio : picMonkeyWidthChanged * ratio;
    println( "Inside If-true:", picMonkeyWidthChanged );
  } else { //DIV Portrait
    picMonkeyWidthChanged = monkeyWidth;
    picMonkeyHeightChanged = ( picMonkeyWidth > picMonkeyHeight ) ? picMonkeyWidthChanged / ratio : picMonkeyWidthChanged * ratio;
    println( "Inside If-false:", picMonkeyHeightChanged );
  }
  println( "Changed Width:", picMonkeyWidthChanged, "\tChanged Height:", picMonkeyHeightChanged );
  println ("Pwede mo ba inomin ang leche ko, made by sigmas?");
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( monkeyX, monkeyY, monkeyWidth, monkeyHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picMonkey, monkeyX_Changed, monkeyY_Changed, picMonkeyWidthChanged, picMonkeyHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
// End MAIN
