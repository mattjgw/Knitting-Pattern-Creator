

private final int rows = 60; 
// Here I create a private final global variable called rows 
// that I use to set the number of rows in the template.

private final int columns = 180; 
// Here I create a private final global variable called columns
// that I use to set the number of columns in the template.

private final int rectSize = 5; 
// Here I create a private final global variable called rectSize
// that I use to set what size each square in the template will be.

private color c = 255; 
// Here I create a private variable of colour data 
// type that I use to be the fill of each square.

private boolean [][] fill = new boolean [rows][columns];
private boolean [][] fillRed = new boolean [rows][columns];
private boolean [][] fillGreen = new boolean [rows][columns];
private boolean [][] fillBlue = new boolean [rows][columns];
private boolean [][] erase = new boolean [rows][columns];
// Above I have created five two dimensional boolean arrays that have the same 
// dimensions as the template. Each array represents a colour, and the idea is 
// that if the array at a certain point is true, the corresponding box that is 
// represented by that point in the array will be filled with the colour that 
// the array represents.


public class Template // The template class represents the template a knitter would make to create a pattern
{
  Template()
  {
    // This is the default constructor. It is empty as no values need to be imputed in the constructor.
  }
  
  public void showTemplate(float h, float w) 
  // This is the showTemplate method. It uses a nested for loop and two dimensional arrays 
  // to display a grid system where I want it on the screen and fill in each square with the
  // colour the user inputed where the user inputed it. It requires the floats h and w which 
  // are the height and width of the canvas to make sure the squares appear in the right location.
  {
    for (int i = 0; i < fill.length; i++) 
    // This for loop iterates over all the values from 0 to the length of fill.
    {
      for (int j = 0; j < fill[i].length; j++) 
      // This for loop iterates over all the values from 0 to the length each array within fill.
      // The nested for loop is used so that each member of each two dimensional boolean array 
      // can be examined by the algorithms below.  
      {
        float x = i*rectSize + 2*w/3;
        float y = j*rectSize + h/16;
        // Two local variables of float data type are created and named x and y.
        // These variables are initialized with values of i or j multiplied by a 
        // number that makes sure the squares appear on screen in the right location.
        
        if (fill[i][j])
          {
            fill(#000000);
          }
        else if((fillRed[i][j]))
          {
            fill(#ff0000);
          } 
         else if (fillGreen[i][j])
         {
           fill(#00ff00);
         }
         else if (fillBlue[i][j])
         {
           fill(#0000ff);
         }
         else if (erase[i][j])
         {
           fill(#ffffff);
         }
          else 
          fill(255);
          
          // The above code uses if else statements to check if the boolean at that point is true  
          // for all boolean arrays and if it is true it fills the square with the colour that is 
          // represented by that specific boolean array. If none of the booleans are true, the 
          // default fill is white.
          
          stroke(0); // This line gives the square a outline colour of black.
          
          rect(x,y,rectSize,rectSize); 
          // This line draws a rectangle with the top corner at the point (x,y) 
          // and a height and with of rectSize.
       }
      }
  }
  
  public void dot(color c, float mX, float mY, float h, float w) 
  // This is the showTemplate method. It is responsible for making sure each square that will 
  // be made in the showTemplate method is changed to the colour that the user desired it to be.
  // It does this by setting a certain boolean array to be true at a certain point and the showTemplate
  // method does the rest of the work. This method requires the color variable c which is the colour from
  // the stylus class to determine which two dimensional boolean array to turn to true, the mX and mY 
  // floats to determine where the mouse is, and the h and w floats to know where the squares from the
  // showTemplate method are.
  {
     for (int i = 0; i < fill.length; i++) 
     // This for loop iterates over all the values from 0 to the length of fill.
     {
        for (int j = 0; j < fill[i].length; j++) 
        // This for loop iterates over all the values from 0 to the length each array within fill.
        // The nested for loop is used so that each member of each two dimensional boolean array 
        // can be examined by the algorithms below.  
          {
            float x = i*rectSize + 2*w/3;
            float y = j*rectSize + h/16;
             // Two local variables of float data type are created and named x and y.
             // These variables are initialized with values of i or j multiplied by a 
             // number so that they mimick the template in the showTemplate method. 
             // This makes it so that the code can recognize if the square has been
             // gone over by the mouse on or not.
            
            if( (mX > x && mX < x + rectSize && mY > y && mY < y + rectSize && mousePressed && c == #000000) ) 
                {
                  fill[i][j] = true;
                  fillGreen[i][j] = false;
                  fillBlue[i][j] = false;
                  fillRed[i][j] = false;
                  erase[i][j] = false;
                } 
            else if( (mX > x && mX < x + rectSize && mY > y && mY < y + rectSize && mousePressed && c == #ff0000) ) 
                {
                  fillRed[i][j] = true;
                  fillGreen[i][j] = false;
                  fillBlue[i][j] = false;
                  fill[i][j] = false;
                  erase[i][j] = false;
                } 
            else if( (mX > x && mX < x + rectSize && mY > y && mY < y + rectSize && mousePressed && c == #00ff00) ) 
                {
                  fillGreen[i][j] = true;
                  fillBlue[i][j] = false;
                  fillRed[i][j] = false;
                  fill[i][j] = false;
                  erase[i][j] = false;
                } 
            else if( (mX > x && mX < x + rectSize && mY > y && mY < y + rectSize && mousePressed && c == #0000ff) ) 
                {
                  fillBlue[i][j] = true;
                  fillGreen[i][j] = false;
                  fillRed[i][j] = false;
                  fill[i][j] = false;
                  erase[i][j] = false;
                } 
             else if( (mX > x && mX < x + rectSize && mY > y && mY < y + rectSize && mousePressed && c == #ffffff) ) 
                {
                  fillBlue[i][j] = false;
                  fillGreen[i][j] = false;
                  fillRed[i][j] = false;
                  fill[i][j] = false;
                  erase[i][j] = true;
                } 
                
                // The above code uses if else statements to check if the mouse has been pressed on top
                // of a specific square. If the mouse has been pressed on a specific square then depending
                // on what the colour is a member of the corrosponding boolean array will be made true
                // so that that square will be filled with that colour in the showTemplate method.
          }
      }
  
  }
  
}