import processing.serial.*;
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

Serial myPort;
ControlIO control;
int x,y,a,b,c,But;
byte test=1;

ControlDevice device;

void setup() {


ControlButton button;
ControlHat hat;
ControlSlider slider;
control = ControlIO.getInstance(this);
device = control.getMatchedDevice("ArdCont");
String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
myPort = new Serial(this, portName, 9600);
}


public void draw() {
//button = device.getButton("0");
//at = device.getHat("pov");
//slider = device.getSlider("x");
y=int(map(device.getSlider("LSTICKY").getValue(), 0,1,0,255));
x=int(map(device.getSlider("LSTICKX").getValue(),0,1,0,255));
a=int(device.getButton("A").getValue());
b=int(device.getButton("B").getValue());
c=int(device.getButton("X").getValue());

if(a==8){But=2;}
if(b==8){But=3;}
if(c==8){But=1;}

//if(x>0){
//  myPort.Write(x);}

//myPort.write('<');         //send a 1
myPort.write("But");         //send a 1
//myPort.write(',');
//myPort.write(x);         //send a 1
//myPort.write(',');
//myPort.write(y);         //send a 1
//myPort.write('>');
print(But);
print(",");
print(x);
print(",");
println(y);
delay(30);
}
