# Objective
In order to solve a chanllenge purposed by **[TRACTIAN](https://tractian.com/en)** here is presented 2 solutions developed in a week. Due to the short period, some parts of project could not be developed, but I am sure that they are very promissing projects. Then, to illutrate these neglected steges each file and folder in this repository represents a step that is or would be considered during the project.

Inside the main folder of each solution there is a schematic depicting how it would be.

_PS: I intend to finish this project for my own interest in learn more._

# Solution 01 - SDR:
Looking for an off-the-shelf solution it's presented below folders descriptions of this project:
- **01_Arduino**: using <SerialTranfer.h> library an arduino is responsible for split the file to be transferred in minor packets (Tx side) and for the other side (Rx) it is responsible for joint the received packets into a file. 

- **02_SDR - GNU RADIO**: Inside this folder there is the radio full code (in Python) represented in schematic figure (Radio Schematic.png). This code was generated using GNU RADIO Companion for Windows. Some improvements can be implemented later, mainly the inclusion of error correcting codes.

- **03_Up and Down Converters**: Here is where the frequency converter (PLL based), bandpass filters and impedance matching circuits would be as well as it's PCB layout.

- **04_Antenna**: In order to enhance tx system, an antenna was designed using Keysight ADS,  an EM simulator. Designed to operate in ISM band of 2.4 and 2.5 GHz, it pass through a optimization based on Genetic Algorithm, resulting in a center frequency of 2.422 GHz. Inside this folder there is all information of this antenna. 

- **05_Channel Model & Link Budget**: All parameters that influence the propagation, such as Free Space Attenuation and multipath, can be calculate by some models, for example Okumura-Hata and COST 231, but in this case is recommended to use Erceg Model due to frequency is above 2 GHz. So there is in this folder a MATLAB script file to calculate it.

- **06_Power Budget**: In this folder would be the sum of power consumption of each system part.

- **07_PDR**: A Preliminary Design Review consists in a deep analysis of each aspect of system, searching for gaps that could be improved, for example reduce the power budget by changing ICs. Show that the proposed design is expected to meet the functional and performance requirements.

# Solution 02 - ESP8266:
This is shelf solution, simple way to face the problem. Follow below folders descriptions of this solution:
- **01_Arduino**: using <SerialTranfer.h> library an arduino is responsible for split the file to be transferred in minor packets (Tx side) and for the other side (Rx) it is responsible for joint the received packets into a file. 

- **02_ESP8266**: This WiFi module is a development board that combines the ESP8266 chip, a usb-serial interface and a 3.3V voltage regulator. Programming can be done using the Arduino IDE, using communication via micro-usb cable. The code was not developed due to the short time left to deliver the challenge, see _Schedule Enlightenment_.

- **03_Channel Model & Link Budget**: All parameters that influence the propagation, such as Free Space Attenuation and multipath, can be calculate by some models, for example Okumura-Hata and COST 231, but in this case is recommended to use Erceg Model due to frequency is above 2 GHz. So there is in this folder a MATLAB script file to calculate it.

- **04_Power Budget**: In this folder would be the sum of power consumption of each system part.

- **05_PDR**: A Preliminary Design Review consists in a deep analysis of each aspect of system, searching for gaps that could be improved, for example reduce the power budget by changing ICs. Show that the proposed design is expected to meet the functional and performance requirements.

## _Schedule Enlightenment:_
During this project, I decided to improve my knowledge about SDR using GNU Radio. At the first moment (Modulator Stage), everything was going well, but at next stage (Demodulator) I could not make progress as fast as I needed. So i've spended a lot of time trying to solve demodulator issues. Sunday and Monday were dead days, then there was no time to work on the other parts of the project. 

Lastly  at Thueday morning, I realize that the Solution 02 would be a simple way to solve the challenge. That's why I put it here anyway, even missing a lot of parts.