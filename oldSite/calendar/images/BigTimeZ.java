import java.awt.*;
import java.applet.*;
import java.util.Date;

/*
 * March 20, 2000.
 *
 *  Modified to be used by web calendar. 
 *  Maorong Zou (mzou@math.utexas.edu)
 */
     

/* 
  Date: February 8th, 1996

  Version 1.0b1

  Updateed:

    Encompassed all functionality in the same file. Previously
    I had a number of different object classes that did things
    like provide the behaviour of LEDs. But this seemed to make things
    a little difficult for people to install.

  Date: December 17th, 1995

  Version: 1.0a1

  Description:
     BigTime uses the BigLEDdigit class to display a rather
   large LED clock. BigLEDdigit is a metaphor of the 7 segment
   LED generally used in "old-fashioned" digital clocks.
     BigTime is based on the Clock class which basically
   implements a runnable thread that is executed every 1/4
   second, or so, in order to regularly update the appearance
   of the clock.

  Coder: John Criswick, Ottawa, criswick@conveyor.com

  Copyright (c) 1995, John R. Criswick. All rights reserved.

*/

public class BigTimeZ extends Applet implements Runnable {
    int      lastHour, lastMinute;
    Thread   tickTock;
    int      speed = 5000;  // Update every 5 second
    int      lastTenHour, lastTenMinute;
    Color    LEDColour;
    Color    BackGround;
    Color    FrameColour;

  public String getAppletInfo() {

    return new String("BigClock Ver 1.0b1 Feb.8.96 by John Criswick, Ottawa, criswick@conveyor.com");
  }

  public void init() {
    String  param;

    lastHour = 0;
    lastMinute=0;
    lastTenHour=0;
    lastTenMinute=0;

    resize(90, 32);
  }

  public void paint(Graphics g) {
    Date  theDate = new Date();
    Color oldColour;

    oldColour = g.getColor();
    g.setColor(Color.white);
    g.fillRect(0, 0, bounds().width-1, bounds().height-1);
    g.setColor(Color.white);
    g.drawRect(0, 0, bounds().width-1, bounds().height-1);
    DrawClock(g, theDate); 
    g.setColor(oldColour);
  }

  /* Updates the clock appearance. This method overides the
    same method in the Clock class since we only want to draw
    the portion of the clock that changed (as oposed to redrawing
    the entire clock as the Clock method would do).
  */
  public final synchronized void update (Graphics g) {
    int theHour, theMinute;
    int theTenHour, theTenMinute;
    Color oldColour;
    Date  aDate = new Date();

    theMinute = aDate.getMinutes();
    theHour = aDate.getHours();
    theTenHour = theHour / 10;
    theHour = theHour - theTenHour * 10;
    theTenMinute = theMinute / 10;
    theMinute = theMinute - theTenMinute * 10;

    /* Here we only draw digits that need redrawing because they
       have changed since the last time through this code.
    */

    oldColour = g.getColor();
    if (theMinute != lastMinute)
      {
      DrawMinute(theMinute);
      lastMinute = theMinute;
      }
    if (theTenMinute != lastTenMinute)
      {
      DrawTenMinute(theTenMinute);
      lastTenMinute = theTenMinute;
      }
    if (theHour != lastHour)
      {
      DrawHour(theHour);
      lastHour = theHour;
      }
    if (theTenHour != lastTenHour)
      {
      DrawTenHour(theTenHour);
      lastTenHour = theTenHour;
      }

    DrawColons();

    g.setColor(oldColour);

  }

  /* Draw everything in the clock. Typically called when we get
    a screen update. Not called when the time has changed.
  */
  public synchronized void DrawClock (Graphics g, Date aDate) {
    int theHour, theMinute;
    int theTenHour, theTenMinute;

    theMinute = aDate.getMinutes();
    theHour = aDate.getHours();
    theTenHour = theHour / 10;
    theHour = theHour - theTenHour * 10;
    theTenMinute = theMinute / 10;
    theMinute = theMinute - theTenMinute * 10;

    /* Now draw every digit in the clock
    */
    DrawMinute(theMinute);
    DrawTenMinute(theTenMinute);
    DrawHour(theHour);
    DrawTenHour(theTenHour);
    DrawColons();
  }

  /* Following set up size methods are used to draw each of the
    six digits in the clock. Each digit has its own draw method
    because we want to be able to draw only those parts of the
    clock that have changed.
  */
  public synchronized void DrawMinute(int theValue) {
    DrawSevenSegments(getGraphics(), theValue, 61, 0);
  }

  public synchronized void DrawTenMinute(int theValue) {
    DrawSevenSegments(getGraphics(), theValue, 43, 0);
  }

  public synchronized void DrawHour(int theValue) {
    DrawSevenSegments(getGraphics(), theValue, 23, 0);
  }

  public synchronized void DrawTenHour(int theValue) {
    DrawSevenSegments(getGraphics(), theValue, 5, 0);
  }

  /* Draw the 2 pairs of colons between the hours and minutes digits
    and the minutes and seconds digits.
  */
  public synchronized void DrawColons() {
    Graphics g = getGraphics();

    g.setColor(Color.red);
    g.fillRect(39, 7, 2, 2);
    g.fillRect(39, 14, 2, 2);
  }

  private synchronized void DrawSevenSegments(Graphics g, int theValue, int x, int y) {
 
    //  Need to implement a state machine to turn on the correct LED
    // segments to draw the number correctly.
    //  This is a rather simple way to implement the state machine,
    // but it was quick to code. Its based on a switch statement for
    // each of ten possible digits.

    switch (theValue) {
      case 0:
        DrawSegment0On(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3Off(g, x, y);
        DrawSegment4On(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 1:
        DrawSegment0Off(g, x, y);
        DrawSegment1Off(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3Off(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6Off(g, x, y);
        break;
      case 2:
        DrawSegment0On(g, x, y);
        DrawSegment1Off(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4On(g, x, y);
        DrawSegment5Off(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 3:
        DrawSegment0On(g, x, y);
        DrawSegment1Off(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 4:
        DrawSegment0Off(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6Off(g, x, y);
        break;
      case 5:
        DrawSegment0On(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2Off(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 6:
        DrawSegment0On(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2Off(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4On(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 7:
        DrawSegment0On(g, x, y);
        DrawSegment1Off(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3Off(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6Off(g, x, y);
        break;
      case 8:
        DrawSegment0On(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4On(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6On(g, x, y);
        break;
      case 9:
        DrawSegment0On(g, x, y);
        DrawSegment1On(g, x, y);
        DrawSegment2On(g, x, y);
        DrawSegment3On(g, x, y);
        DrawSegment4Off(g, x, y);
        DrawSegment5On(g, x, y);
        DrawSegment6Off(g, x, y);
        break;
    }
      
  }

  /* Segments 0, 3 and 6 are the horizontal line segments. Segments
    1, 2, 4 and 5 are the vertical line segments.
  */
  private synchronized void DrawSegment0On(Graphics g, int x, int y) {
    g.setColor(Color.red);
    DrawHorizontalLine(g, x+3, y+1, 9);
  }
  private synchronized void DrawSegment0Off(Graphics g, int x, int y) {
    g.setColor(Color.white);
    DrawHorizontalLine(g, x+3, y+1, 9);
  }
  private synchronized void DrawSegment3On(Graphics g, int x, int y) {
    g.setColor(Color.red); 
    DrawHorizontalLine(g, x+3, y+11, 9); 
  }
  private synchronized void DrawSegment3Off(Graphics g, int x, int y) {
    g.setColor(Color.white);
    DrawHorizontalLine(g, x+3, y+11, 9);
  }
  private synchronized void DrawSegment6On(Graphics g, int x, int y) {
    g.setColor(Color.red); 
    DrawHorizontalLine(g, x+3, y+21, 9); 
  }
  private synchronized void DrawSegment6Off(Graphics g, int x, int y) {
    g.setColor(Color.white);
    DrawHorizontalLine(g, x+3, y+21, 9);
  }

  private synchronized void DrawSegment1On(Graphics g, int x, int y) { 
    g.setColor(Color.red);  
    DrawVerticalLine(g, x+1, y+3, 8);  
  }
  private synchronized void DrawSegment1Off(Graphics g, int x, int y) { 
    g.setColor(Color.white);
    DrawVerticalLine(g, x+1, y+3, 8); 
  }
  private synchronized void DrawSegment2On(Graphics g, int x, int y) { 
    g.setColor(Color.red);  
    DrawVerticalLine(g, x+12, y+3, 8);  
  }
  private synchronized void DrawSegment2Off(Graphics g, int x, int y) { 
    g.setColor(Color.white);
    DrawVerticalLine(g, x+12, y+3, 8); 
  }
  private synchronized void DrawSegment4On(Graphics g, int x, int y) { 
    g.setColor(Color.red);  
    DrawVerticalLine(g, x+1, y+13, 8);  
  }
  private synchronized void DrawSegment4Off(Graphics g, int x, int y) { 
    g.setColor(Color.white);
    DrawVerticalLine(g, x+1, y+13, 8); 
  } 
  private synchronized void DrawSegment5On(Graphics g, int x, int y) { 
    g.setColor(Color.red);  
    DrawVerticalLine(g, x+12, y+13, 8);  
  }
  private synchronized void DrawSegment5Off(Graphics g, int x, int y) { 
    g.setColor(Color.white);
    DrawVerticalLine(g, x+12, y+13, 8); 
  } 

  private synchronized void DrawHorizontalLine(Graphics g, int x, int y, int width) {
    g.drawLine(x+1, y-1, x+width-3, y-1);
    g.drawLine(x, y, x+width-1, y);
    g.drawLine(x+1, y+1, x+width-3, y+1);
  }

  private synchronized void DrawVerticalLine(Graphics g, int x, int y, int height) {
    g.drawLine(x-1, y+1, x-1, y+height-3);
    g.drawLine(x, y, x, y+height-1);
    g.drawLine(x+1, y+1, x+1, y+height-3);
  }


  /* Code to operate the thread
  */
  public void start() {
    if (tickTock == null) {
      tickTock = new Thread(this);
      tickTock.start();
    }
  }
 
  public void stop() {
    if (tickTock != null) {
      tickTock.stop();
      tickTock = null;
    }
  }
 
  public void run() {

    while (true) {
      try {
        Thread.currentThread().sleep(speed);
      }  
      catch (InterruptedException e) {
      }  
      super.repaint();
    }
  }

}
