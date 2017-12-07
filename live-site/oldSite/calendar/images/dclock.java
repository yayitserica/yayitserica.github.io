import java.awt.*;
import java.applet.*;
import java.util.Date;

public class dclock extends Applet implements Runnable {
    Thread   ticks;
    Font     font;

    public String getAppletInfo() {
	return new String("dclock mzou V1.0");
    }
    
    public void init() {
	String  param;

        font = new Font("Times",Font.BOLD,18);
	resize(70, 30);
    }
    
    public void paint(Graphics g) {
	Date  theDate = new Date();
	drawClock(g, theDate); 
    }

    public final synchronized void update (Graphics g) {
	Date  aDate = new Date();
        drawClock(g, aDate);
    }

    public synchronized void drawClock (Graphics g, Date aDate) {
	int hours, minutes;
	minutes = aDate.getMinutes();
	hours = aDate.getHours();
        if(hours >12) hours -=12;
        String  string = (hours < 10 ? "0" : "") + hours + " : " +
	    (minutes < 10 ? "0" : "") + minutes + " ";

	g.setColor(Color.white);
	g.fillRect(0, 0, bounds().width-1, bounds().height-1);
	g.setColor(Color.white);
	g.drawRect(0, 0, bounds().width-1, bounds().height-1);
        g.setColor(Color.red);
        g.setFont(font);
        g.drawString(string,5,22);
    }
    /* Code to operate the thread
     */
    public void start() {
	if (ticks == null) {
	    ticks = new Thread(this);
	    ticks.start();
	}
    }
 
    public void stop() {
	if (ticks != null) {
	    ticks.stop();
	    ticks = null;
	}
    }
 
    public void run() {
	while (true) {
	    try {
		Thread.currentThread().sleep(5000);
	    }  
	    catch (InterruptedException e) {
	    }  
	    super.repaint();
	}
    }
}
