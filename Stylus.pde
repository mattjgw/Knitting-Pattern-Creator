

private  color colour; // Here I create a private global color variable called colour.

public class Stylus // The stylus class acts as the pen the knitter would use to create a pattern.
{
  
  Stylus() 
  {
    // This is the default constructor. It is empty as no values need to be imputed in the constructor.
  }

   public void setColour(char c) 
   // This is the setColour method. It uses the character c to determine which colour the 
   // color variable colour will be and initializes the color variable with that colour.
   {
     if (c == 'd') 
     {
       colour = #000000;
     }
     else if (c == 'r')
     {
       colour = #ff0000;
     }
     
     else if (c == 'g')
     {
       colour = #00ff00;
     }
     
     else if (c == 'b')
     {
       colour = #0000ff;
     }
     
     else if (c == 'e')
     {
       colour = #ffffff;
     }
     
     // Depending on which button is pressed, the method will set the colour variable to a certain
     // colour, which will either be black, red, green, blue, or white.
     
   }
   
   public color getColour() 
   // This is the getColour method. It returns the value of colour so that other 
   // classes can access the information stored in this data type.
   {
     return colour; // This returns the value stored in the colour variable.
   }

}