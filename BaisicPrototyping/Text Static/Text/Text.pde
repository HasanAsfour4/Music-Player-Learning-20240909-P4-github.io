/* Dynamic Text
 - Texting Aspect Ratio
 - change the text in middle rect()
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color  ink, purple=#2C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Freindly
int size;
String title = "Super", footer="Sigma", phrase="OI OI BAKAA";
Boolean randomColour=false;
//
void setup()
{
  //Display
  size(500, 700); //Portrait CANVAS
  appWidth = width;
  appHeight = height;
  //
  //Text: Single Exectued Code
  //Fonts from OS (Operating System)
  //String [] fontList = PFont.list(); // To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  // Tools / Create Font / Find Font / Do not press "OK', known bug
  titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  footerFont = createFont("Arial", 55);
  phraseFont = createFont("Playbill", 55);
  //
  /* Population
   - using 10's
   - Could be 100s or perecent
   - Able to use decimals to dial in the values
   */
  titleX =appWidth*1/10 ;
  titleY =appHeight*1/10 ;
  titleWidth = appWidth*8/10;
  titleHeight =appHeight*1/10 ;
  superCoolPhraseX =titleX ;
  superCoolPhraseY =appHeight*4.5/10 ;
  superCoolPhraseWidth =titleWidth ;
  superCoolPhraseHeight =titleHeight ;
  footerX = titleX ;
  footerY = appHeight*8/10;
  footerWidth = titleWidth;
  footerHeight = titleHeight;
  //DIVs
  rect( titleX, titleY, titleWidth, titleHeight );
  rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
  rect( footerX, footerY, footerWidth, footerHeight );
} // End setup
//
void draw()
{
  //Drawing Text
  textAlign(CENTER, CENTER); //Align X&Y, see processing.org / reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = purple;
  fill(ink);
  size = 47; //change the number until it fits
  textFont( titleFont, size );
  text(title, titleX, titleY, titleWidth, titleHeight );
  ink = purple;
  fill(ink);
  size = 43; //change the number until it fits
  textFont( footerFont, size);
  text(footer, footerX, footerY, footerWidth, footerHeight );
  //
  ink = ( randomColour == true) ? color( random(0, 256), random(256), random(256) ) : purple ;//Ternary Operator
  //
  fill(ink);
  size = 83; //change the number until it fits
  textFont( phraseFont, size );
  text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
} // End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  if ( randomColour == true ) {
    randomColour = false;
  } else {
    randomColour = true;
  }
} //End keyPressed
//End MAIN
