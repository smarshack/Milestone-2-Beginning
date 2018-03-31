import processing.serial.*;

Serial myPort;  // Create object from Serial class
  int Case=0;
  int lastCase=0;
  
void setup() 
{
  size(200,200); //make our canvas 200 x 200 pixels big
  println(Serial.list());
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);

  
}

void draw() {
  if (mousePressed == true) 
  {                           //if we clicked in the window
   myPort.write('1');         //send a 1
   println("1"); 
   Case=1;
  } 
    if(lastCase!=Case) 
      {                           //otherwise
        myPort.write('0');          //send a 0
        println("0");
        Case=0;
        } 
 
  lastCase=Case;
}
