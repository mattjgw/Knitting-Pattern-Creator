
// Knitting Pattern Creator
// Description: This program is designed to creating patterns for knitting mittens. 
// The program welcomes the user to the program and instructs the user on how to use 
// the program via text that is located in the middle of the screen. There is a blank 
// grid on both the right hand and the left hand side of the screen. The right hand side 
// can be coloured if the user pushes the d, r, g, or b button and then holds down the mouse.
// The colours the grid can be coloured with are black, red, green, and blue. The user will 
// colour the right hand grid, and then the left hand grid will fill in automatically, with
// the pattern being mirrored.
// Matthew Wright
// June 17 2016

Template template; // Instantiates an object named template from the Template class.
Stylus stylus; // Instantiates an object named stylus from the Stylus class.
Left_Mitt mitt; // Instantiates an object named mitt from the Left_Mitt class.

private boolean colouring = false; 
// Creating a private global boolean named colouring and initializing it will a value of false.  
// This boolean will only be true once the user presses a button on the keyboard.

private char k; 
// Creating a private global char named k. This char will hold the character that the user 
// pressed on the keyboard.

void setup()
{
  size(1000, 1000); // Creating a canvas that will be 1000 pixels by 1000 pixels.
  
  template = new Template(); 
  stylus = new Stylus();
  mitt = new Left_Mitt();
  // Above I construct each object with the default constructor.
  
  background(255, 245, 200); // Colouring the background with a light yellow colour.
  
  PFont sampleFont; // Instantiating an object named sampleFont from the PFont class.
  
  String wordText = "Welcome to the Knitting Pattern Creator \n" +
                "Press the d button to colour with black \n" +
                "Press the r button to colour with the red \n " +
                "Press the g button to colour with the green \n " +
                "Press the b button to colour with the blue \n" +
                "Press the e button to erase \n" +
                "Colour the right mitt and the left mitt will fill \n " +
                "automatically";
  // Above I create a String object named wordText that contains the message I have that
  // welcomes the user to the program and teaches the user on how to run the program.
  
  sampleFont = loadFont("GillSansMT-20.vlw"); 
  // This code initializes sampleFont with a font from a file inside the program.
  
  textFont(sampleFont); // This code uses the font contained in the object sampleFont.
  fill(#000000); // This code gives the letters in the string a black fill.
  textSize(16); // This code estabishes a text size.
  textLeading(50); // This code spaces out the text to the way I like it.
  textAlign(CENTER, CENTER); // This code alligns the text in the center
  text(wordText, 500, height/2); // This code prints the text where I want it. This code
}

void draw()
{
  stylus.setColour(k); 
  // Here I call the setColour method from the stylus object and send it a value of k.
  // This will let the program know what colour to fill the squares with once a colour
  // has been chosen.
  
  template.showTemplate(height, width);
  // Here I call the showTemplate method from the template object and send it the values of height
  // and width. This will display the template and space it out accordingly with the canvas size.
  
  if (colouring) // This code will run if a the colouring boolean is true
  template.dot(stylus.getColour(), mouseX, mouseY, height, width);
  // Here I call the dot method from the template object and send it the values of colour which 
  // I obtain using the getColour method with the stylus object, and mouseX and mouseY coordinates,
  // and the height and width of the canvas. This method dots the right canvas according the the 
  // colour chosen by the user.
 
  mitt.showLeftMitt(height, width);
  // Here I call the showLeftMitt method from the mitt object and send it the values of height
  // and width. This will display the leftMitt and space it out accordingly with the canvas size.
  
}

public void keyPressed() // This method will be called if a key pressed.
{
  k = key; // This line initiates k with the value of the key that was just pressed.
  colouring = true; 
  // This line sets the colouring boolean to true so that the user can colour the template.
}