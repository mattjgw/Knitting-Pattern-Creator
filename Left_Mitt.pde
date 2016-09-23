

private final int leftMittRows = 60;
// Here I create a private final global variable called leftMittRows 
// that mimicks the rows variable from the template class.

private final int leftMittColumns = 180;
// Here I create a private final global variable called leftMittColumns
// that mimicks the columns variable from the template class.

private final int rectSizeLeft = 5; 
// Here I create a private final global variable called rectSizeLeft
// that mimicks the rectSize variable from the template class.

private color C = 255;
// Here I create a private variable of colour data 
// type that mimicks the c variable from the template class.

private boolean [][] fillLeft = new boolean [leftMittRows][leftMittColumns];
private boolean [][] fillLeftRed = new boolean [leftMittRows][leftMittColumns];
private boolean [][] fillLeftBlue = new boolean [leftMittRows][leftMittColumns];
private boolean [][] fillLeftGreen = new boolean [leftMittRows][leftMittColumns];
private boolean [][] eraseLeft = new boolean [leftMittRows][leftMittColumns];
// Above I have created five two dimensional boolean arrays that have the same 
// dimensions as the arrays from the template class. They essentially do the same thing
// as the arrays in the template class, but are different as they corrospond with the 
// squares that are on the left mitt template.

public class Left_Mitt 
// The left mitt class represents what the pattern would be of the left mitt for a knitting pattern.
{

  Left_Mitt()
  {
    // This is the default constructor. It is empty as no values need to be imputed in the constructor.
  }

  public void showLeftMitt(float h, float w)
  // This method uses the same algorithms from the showTemplate method but uses them 
  // to display and colour the squares on the left mitt.
  {
    for (int i = 0; i < fillLeft.length; i++) 
    {
      // Begin loop for rows
      for (int j = 0; j < fillLeft[i].length; j++) 
      {
        float x = i*rectSizeLeft + w/18;
        float y = j*rectSizeLeft + h/16;
        if (fillLeft[i][j])
        {
          fill(#000000);
        }
        else if((fillLeftRed[i][j]))
          {
            fill(#ff0000);
          } 
        else if((fillLeftGreen[i][j]))
          {
            fill(#00ff00);
          } 
        else if((fillLeftBlue[i][j]))
          {
            fill(#0000ff);
          } 
        else if (eraseLeft[i][j])
        {
          fill(#ffffff);
        }
        
          else 
          fill(255);
          stroke(0);
          rect(x,y,rectSizeLeft,rectSizeLeft); 
       }
      }
      dot(h, w);
  }
  
  private void dot(float h, float w)
  // This method uses the same algorithms from the dot method but uses them 
  // to colour the squares on the left mitt. It is private as it is only called 
  // in this class and doesn't need a colour variable or a mouseX and mouseY 
  // variable they are not used in this method. This method mirrors the pattern of 
  // the template from the showTemplate method.
  {
     for (int i = 0; i < fillLeft.length; i++)
     {
       for (int j = 0; j < fillLeft[i].length; j++)
       {
         
         if (fill[i][j])
         {
         fillLeft[rows-i][j] = true; 
         fillLeftRed[rows-i][j] = false;
         fillLeftGreen[rows-i][j] = false;
         fillLeftBlue[rows-i][j] = false;
         eraseLeft[rows-i][j] = false;
         }
         else if (fillRed[i][j])
         {
         fillLeft[rows-i][j] = false;
         eraseLeft[rows-i][j] = false;
         fillLeftRed[rows-i][j] = true;
         fillLeftGreen[rows-i][j] = false;
         fillLeftBlue[rows-i][j] = false;
         }
         
         else if(fillGreen[i][j])
         {
         fillLeft[rows-i][j] = false;
         eraseLeft[rows-i][j] = false;
         fillLeftGreen[rows-i][j] = true;
         fillLeftBlue[rows-i][j] = false;
         fillLeftRed[rows-i][j] = false;
         }
         
         else if(fillBlue[i][j])
         {
         fillLeft[rows-i][j] = false;
         eraseLeft[rows-i][j] = false;
         fillLeftBlue[rows-i][j] = true;
         fillLeftGreen[rows-i][j] = false;
         fillLeftRed[rows-i][j] = false;
         }
         
         if (erase[i][j])
         {
         fillLeft[rows-i][j] = false; 
         fillLeftRed[rows-i][j] = false;
         fillLeftGreen[rows-i][j] = false;
         fillLeftBlue[rows-i][j] = false;
         eraseLeft[rows-i][j] = true;
         }
       }
     }
  
  }
  
}