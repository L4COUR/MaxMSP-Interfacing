# MaxMSP Aufbau Arduino
The German word "Aufbau" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages. This constitutional process is realized through three interpretations of the word "Aufbau". In this part we will examine the Aufbau between Max/MSP and Arduino

## Set-up

Through my bachelor in digital design I was introduced to the arduino platform which was my way into physical computing and electronics. My curiosity of electronics and programming combined with my interest in audio-design has resulted in some exploration of sensors and arduino and Max/MSP.

After I had made my Arduino blink which is sort of a "Hello World" of the physical computing world. One of the first sensors I ever worked with was the light depended resistor or LDR. In November 2019 i devided to revisit the LDR but this time I wanted to combine it with Max/MSP. This became the ["LDR+SERIAL=NOISE"-project](https://www.instagram.com/p/B3QOtlwhPqA/).

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/03_Max8%20-%20LDR%2BSERIAL%3DNOISE/media/LDR+SERIAL-NOISE-VID.gif)

```C
int sensorPin = A0; // select the input pin for LDR 
int sensorValue = 0; // variable to store the value coming from the sensor 
void setup() { 
	Serial.begin(9600); //sets serial port for communication 
} 
void loop() { 
	sensorValue = analogRead(sensorPin); // read the value from the sensor 
	Serial.println(sensorValue); //prints the values coming from the sensor on the screen 
	delay(10); 
} 
```

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/03_Max8%20-%20LDR%2BSERIAL%3DNOISE/media/Schematic.png)

In my next project I wanted to interface with a [PIR sensor](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max%20Projects/04_Max8%20-%20Arduino%20%2B%20PIRsensor](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max Projects/04_Max8 - Arduino %2B PIRsensor)), and so I did.

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/04_Max8%20-%20Arduino%20%2B%20PIRsensor/media/04_Max8%20-%20Arduino%20+%20PIRsensor.png)

```c
/*
 * PIR sensor tester
 */

int ledPin = 13;                // choose the pin for the LED
int inputPin = 2;               // choose the input pin (for PIR sensor)
int pirState = LOW;             // we start, assuming no motion detected
int val = 0;                    // variable for reading the pin status

void setup() {
  pinMode(ledPin, OUTPUT);      // declare LED as output
  pinMode(inputPin, INPUT);     // declare sensor as input

  Serial.begin(9600);
}

void loop(){
  val = digitalRead(inputPin);  // read input value
  if (val == HIGH) {            // check if the input is HIGH
    digitalWrite(ledPin, HIGH);  // turn LED ON
    if (pirState == LOW) {
      // we have just turned on
      Serial.println("On");

      // We only want to print on the output change, not state
      pirState = HIGH;
    }
  } else {
    digitalWrite(ledPin, LOW); // turn LED OFF
    if (pirState == HIGH){
      // we have just turned of
      Serial.println("Off");

      // We only want to print on the output change, not state
      pirState = LOW;
    }
  }
}
```

I also tried combining [Max/MSP with an Arduino + and Ultrasound module](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max%20Projects/06_Max8%20-%20Arduino%20%2B%20Ultrasound%20(Maxsonar)](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max Projects/06_Max8 - Arduino %2B Ultrasound (Maxsonar))

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/06_Max8%20-%20Arduino%20%2B%20Ultrasound%20(Maxsonar)/media/Max_arduino_ultrasound.png)

```C
int SonarPin=A0;
int sensorValue;
void setup(){
pinMode(SonarPin,INPUT);
Serial.begin(9600);
}
void loop(){
sensorValue=analogRead(SonarPin);
delay(50);
Serial.println("[");
Serial.println(sensorValue);
Serial.println("]");
delay(100);
}
```

However, the biggest projekt I have worked on in regards to complexity would be to make a [Max-patch that could visualize the live data coming from an adafruit AMG8833 Thermal Camera module](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max%20Projects/05_Max8%20-%20Adafruit%20AMG8833%20Thermal%20Camera%20Heatmap%20Jitter](https://github.com/L4COUR/L4COUR_Max-Patchers/tree/master/Max Projects/05_Max8 - Adafruit AMG8833 Thermal Camera Heatmap Jitter))

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/05_Max8%20-%20Adafruit%20AMG8833%20Thermal%20Camera%20Heatmap%20Jitter/media/Max_MSP-heating-camera.gif)

![](https://github.com/L4COUR/L4COUR_Max-Patchers/raw/master/Max%20Projects/05_Max8%20-%20Adafruit%20AMG8833%20Thermal%20Camera%20Heatmap%20Jitter/media/Adafruit%20AMG8833%20connected%20to%20Arduino.png)

## Structure



## Compose



### Sources
- https://www.youtube.com/watch?v=6bT3G4Mep7E&t=551s

- https://docs.cycling74.com/max5/tutorials/max-tut/communicationschapter02.html

- https://learn.adafruit.com/pir-passive-infrared-proximity-motion-sensor/using-a-pir-w-arduino

- https://github.com/DDlabAU/thermal-camera-heatmap

- https://cdn-learn.adafruit.com/downloads/pdf/adafruit-amg8833-8x8-thermal-camera-sensor.pdf

  

