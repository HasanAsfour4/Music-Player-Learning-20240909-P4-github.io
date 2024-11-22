/* Static Text
 - Texting Aspect Ratio
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color purple=#2C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Freindly 
int size; 
String title = "How do I write text?", footer="This is at the bottom", phrase="ORA";
//
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
//
//Drawing Text 
fill(purple); //Ink, hexidecimal copied from Color Selector 
textAlign(CENTER, CENTER); //Align X&Y, see processing.org / reference 
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 50; //chnage the number until it fits 
textFont( titleFont, size );
text(title, titleX, titleY, titleWidth, titleHeight ); 
textFont( footerFont, size);
text(footer, footerX, footerY, footerWidth, footerHeight ); 
textFont( phraseFont, size );
text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );