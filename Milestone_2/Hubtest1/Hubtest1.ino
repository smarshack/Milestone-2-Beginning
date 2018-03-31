int led=11;

void setup() {
  Serial1.begin(9600);
  Serial.begin(9600);
  pinMode(led, OUTPUT);

}
//test
void loop() {
  while(Serial.available()){
    char Var=Serial.read();
    Serial1.println(Var);
    if(Var=='1'){
      digitalWrite(led, HIGH);
  }
     if(Var=='0'){
      digitalWrite(led, LOW);
  }
  }
}
