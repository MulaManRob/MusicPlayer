//global Variables
String powerButton = "Power";
color purple=#F09B9B, yellow=#F71414, resetWhite=#FFFFFF, buttonColour;
float powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
//
void powerButton() {
  //Population
  powerButtonX = width*29/32;
  powerButtonY = height*0/16;
  powerButtonWidth = width*3/32;
  powerButtonHeight = height*1/16;
}//End powerButton()
//
void powerButtonDraw() {
  //Hoverover
  if ( mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight ) {
    buttonColour = yellow;
    hoverOverButtonFill();
  } else {
    buttonColour = purple;
    hoverOverButtonFill();
  }
  //Text
  textCode(powerButton, width*3/100, powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
}//End powerButtonDraw()
//
void powerButtonMousePressed() {
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight ) exit();
}//powerButtonMousePressed()
//
void hoverOverButtonFill() {
  fill(buttonColour);
  noStroke();
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  stroke(1); //reset stroke to 1 pixel
  fill(resetWhite);
}//End hoverOverButtonFill()
