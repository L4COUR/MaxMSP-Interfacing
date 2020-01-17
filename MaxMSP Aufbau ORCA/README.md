# MaxMSP Aufbau ORCA
The German word "Aufbau" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages. This constitutional process is realized through three interpretations of the word "Aufbau". In this part we will examine the Aufbau between Max/MSP and ORCA.

<img src="./media/Logo_ORCAAufbauMaxMSP.png" style="zoom:50%;" />

## Set-up

### MIDI

MIDI is the only one of the three communication protocols that is bidirectional meaning that ORCA can both send and receive messages from Max/MSP. in order to communicate through MIDI we must make sure that both ORCA and Max/MSP are using the same MIDI Driver in this case I am using the IAC Driver Bus 1.

![](./media/MaxMSP-Aufbau-ORCA-MIDI-Driver-Select.gif)

In this first example ORCA is sending MIDI information to Max/MSP. This information can be send on different MIDI channels in ORCA "0" is a MIDI Channel "1" in Max/MSP using the object "notein 1" will receive the note pitch value and velocity.

![](./media/MaxMSP-Aufbau-ORCA-Midiin.gif)

In this second example ORCA is receiving MIDI information from Max/MSP. Using the Kslider keyboard in conjunction with the "noteout 1" object in Max/MSP, ORCA is receiving the notational values. ORCA can not receive values below "C3" or above "D#6", as shown in the tabel.

| C3     | C#3     | D3     | D#3     | E3     | F3     | F#3     | G3     | G#3     | A3     | A#3     | B3     |
| ------ | ------- | :----- | ------- | ------ | ------ | ------- | ------ | ------- | ------ | ------- | ------ |
| C      | c       | D      | d       | E      | F      | f       | G      | g       | A      | a       | B      |
| **C4** | **C#4** | **D4** | **D#4** | **E4** | **F4** | **F#4** | **G4** | **G#4** | **A4** | **A#4** | **B4** |
| J      | j       | K      | k       | L      | M      | m       | N      | n       | O      | o       | P      |
| **C5** | **C#5** | **D5** | **D#5** | **E5** | **F5** | **F#5** | **G5** | **G#5** | **A5** | **A#5** | **B5** |
| Q      | q       | R      | r       | S      | T      | t       | U      | u       | V      | v       | X      |
| **C6** | **C#6** | **D6** | **D#6** | **E6** | **F6** | **F#6** | **G6** | **G#6** | **A6** | **A#6** | **B6** |
| Y      | y       | Z      | z       | -      | -      | -       | -      | -       | -      | -       | -      |

This functionality is also available across multiple Midi Channels.

![](./media/MaxMSP-Aufbau-ORCA-MidiOut.gif)

By default ORCA sets the Control number of MIDIcc to 64, in order to set this to 1, the users must use cmd + k or ctrl + k in order to activate the ORCA commandpromt. To change the Control number the user should type in "CC:1" in the promt. In this final example ORCA is sending MIDIcc to Max/MSP. Max receives these values through the "ctlin" object, which can also receive values from multiple MIDI-channels.

![](./media/MaxMSP-Aufbau-ORCA-MIDIcc.gif)

### OSC

By default ORCA has an OSC port 49162, this port is assigned to the Max object "udpreceive" from here I am using the "route" object to get the data from either address /a or /b. On /a I am sending numerical values with one of the numbers changing randomly. On /b I am sending the message "HelloWorld".

![](./media/MaxMSP-Aufbau-ORCA-OSC-and-Base36-encoding-and-decoding.gif)

When I was exploring the ways of sending OSC messages between Max/MSP and ORCA I found that sending number values were very easy in comparison to sending strings of words. All letters would be received as encoded Base36, which meant that "HelloWorld" would be recieved in Max as "17 14 21 21 24 32 24 27 21 13". Thanks to Italo Lombardo and Rajan Craveri I was able to assemble two ways of decoding the Base36 message. I have marked these as simple and complex decoders aswell as an encoder for the Base36.

| **0** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **A** | **B** |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0     | 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 11    |
| **C** | **D** | **E** | **F** | **G** | **H** | **I** | **J** | **K** | **L** | **M** | **N** |
| 12    | 13    | 14    | 15    | 16    | 17    | 18    | 19    | 20    | 21    | 22    | 23    |
| **O** | **P** | **Q** | **R** | **S** | **T** | **U** | **V** | **W** | **X** | **Y** | **Z** |
| 24    | 25    | 26    | 27    | 28    | 29    | 30    | 31    | 32    | 33    | 34    | 35    |

<details>
  <summary>OSC-Max-Patcher</summary>
  <pre><code>
----------begin_max5_patcher----------
1202.3oc0ZsraaiCEcs8WgfPW5wPjTublMMKmUy1NnMHf1hNUoRTBjTNISQ+
2G9PxOlRaKYKqnfBnFSQqCO2yk2GT9mSm3tr3UB204Nmu5LYxOmNYhdH0.Sp
+7D2b7qqxvb8zbyIbN9Ih6Ly8DjWE5wAgMCklnGnX4y+AxuYPZUdJMiHzODX
8fkXwpumRe5QFYkvrHBCCmGLyA34M2alCbg5CP3bOmG18fJpDMOIP8nlgDuU
RLOFWWmGT24WSmptL6ZIWfMxg5L4fAuijaUQdNgJ9Mx8WTNgIb96RBCKJX1X
JvJSAmho.EEChUWWfzz06nD06BXSV5Fx7jTbVyRaClQw4jCu4WgOXgOfs7oD
yjeGAg8HghWlQ1mVskqA.M+hBTW8071O9nbEdTQcli65rBr7o17M43MjjGwB
AKcYkfr6u30FlZKih7YUjh0MC2L99Dj+8BlXqE5e3jFK2AypYA4Y4dUzTAW7
V1QmPVA8I6ZfYtZIt4+tM5MxpdC6S8123U+wRu+x.p2nATuA1z6nav1af2Gp
s2kE7gRtACmbaK2zMXq8GKs9KCmV2CBMk7hT19shPJw+vwy7ul6stftij2yr
K+.n8ZS7OtHijanUUg4Go05PS0ImuLL05gm9uFGK4zGlROkwskqboH8su8ml
Kf.80s7NKkRVUTQE66S1RiWmqOu13AA9lMJ5jfnfQtw6S.kI6SP8Uj9peGcy
BtPKEHxDRA4Mpcyt2ZYxK5JoCh8UjNH58nAmSDZg28.K.6JN5rjuIvhGXTq3
uvREj6bteuPJgcxB4egNGaic7gv9bXniNYffWnApIjwH2.QXXNwBsi6dnRTj
4bQzISVzRVeioWIlKrRuNerOv338nW73fdqJJeyF6.clc996pYF4ONX25TZh
sFC67VRn2dravSnUkujX6.47CNUWOdcrqGjGTmz1bjcmqNkS10yRL8o9M4Mi
TRnINLxKRI8Na1Bj6kw2XcsqKBFVO1iqov9TSUIYG6ZJ+GokVUTO2KisFEMF
LRTTzh9TQAPznWQwk41DTTj6kQ1ZAEMNRpvpn1pxyqq4TVrXW4.ik2v0ZkC5
cd1ZDpy06.LmbV8onMRJmiKJJswtNqdA6WtCXjTqZF1Zwbcka6Wm5PGE8zQV
VZOxRXmy8Cd+hqbzDE8a0bfQaZh7We1gRDyqRJmyUp5mwIILoOsLdezb4ZcN
v4ykELgLpAHzZvntp2ZOZn4c0Ai6otSzea84t9+9oSnW.pwOz1vKpXqZdTM+
tHb1sHRHbQJEKRKn6MI8IP4.Oh.zZnPsFJvUBk5HoOOTpCr2AcsPAaMTWqAL
p0Hcs1OTqQx6JQRcDMmGp9.HzPADXn.ZfvIBNP.ENP3zFWtvd.G+1.jOpOPZ
nbt8aiufpq4qGIuAhRpdiOKPnn9.onAhRvgx10JuAS9nl5YXIxBOO5uzt9D3
CiCuEXv0kten1ooeOusHI7Mw71RvuIFXX6pcKnOrwfEstjzqGq1XRg8ARW1t
eSqD3xxMDFudxZLjMT8bgVYimo+XJ07QcOJtLxlzl4aFAyj89HjM9TwLuVxW
CMugV27BoOBsJs1MQxNIj5l0TuBSdI1PDcOcS+0z+CjDmqJI
-----------end_max5_patcher-----------
</code></pre>
</details>

### UDP (Orca->MaxMSP)

By default ORCA has an UDP port 49161, in order to receive the raw UDP message in Max the UDP port should be assigned to the Max Object "mxj net.udp.recv" as an attribute "@port 49161".

![](./media/MaxMSP-Aufbau-ORCA-RawUDP.gif)

### UDP (MaxMSP->Orca)

In order to communicate from Max/MSP to ORCA, we can use ORCA's default UDP port 49160 with the Max object "mxj net.udp.send" with the attributes "@address 127.0.0.1" and "@port 49160". This enables ORCA to be controlled and clocked with MaxMSP. it enables ORCA to be remotely controlled with "start, stop, run, frame:0, find, copy, paste, erase, BPM, APM, skip and rewind" along with being able to control the position and writing in operators into ORCA.

![](./media/ORCA_MaxBPMAPM.gif)

<details>
  <summary>UDP-Max-Patcher</summary>
  <pre><code>
----------begin_max5_patcher----------
1202.3oc0ZsraaiCEcs8WgfPW5wPjTublMMKmUy1NnMHf1hNUoRTBjTNISQ+
2G9PxOlRaKYKqnfBnFSQqCO2yk2GT9mSm3tr3UB204Nmu5LYxOmNYhdH0.Sp
+7D2b7qqxvb8zbyIbN9Ih6Ly8DjWE5wAgMCklnGnX4y+AxuYPZUdJMiHzODX
8fkXwpumRe5QFYkvrHBCCmGLyA34M2alCbg5CP3bOmG18fJpDMOIP8nlgDuU
RLOFWWmGT24WSmptL6ZIWfMxg5L4fAuijaUQdNgJ9Mx8WTNgIb96RBCKJX1X
JvJSAmho.EEChUWWfzz06nD06BXSV5Fx7jTbVyRaClQw4jCu4WgOXgOfs7oD
yjeGAg8HghWlQ1mVskqA.M+hBTW8071O9nbEdTQcli65rBr7o17M43MjjGwB
AKcYkfr6u30FlZKih7YUjh0MC2L99Dj+8BlXqE5e3jFK2AypYA4Y4dUzTAW7
V1QmPVA8I6ZfYtZIt4+tM5MxpdC6S8123U+wRu+x.p2nATuA1z6nav1af2Gp
s2kE7gRtACmbaK2zMXq8GKs9KCmV2CBMk7hT19shPJw+vwy7ul6stftij2yr
K+.n8ZS7OtHijanUUg4Go05PS0ImuLL05gm9uFGK4zGlROkwskqboH8su8ml
Kf.80s7NKkRVUTQE66S1RiWmqOu13AA9lMJ5jfnfQtw6S.kI6SP8Uj9peGcy
BtPKEHxDRA4Mpcyt2ZYxK5JoCh8UjNH58nAmSDZg28.K.6JN5rjuIvhGXTq3
uvREj6bteuPJgcxB4egNGaic7gv9bXniNYffWnApIjwH2.QXXNwBsi6dnRTj
4bQzISVzRVeioWIlKrRuNerOv338nW73fdqJJeyF6.clc996pYF4ONX25TZh
sFC67VRn2dravSnUkujX6.47CNUWOdcrqGjGTmz1bjcmqNkS10yRL8o9M4Mi
TRnINLxKRI8Na1Bj6kw2XcsqKBFVO1iqov9TSUIYG6ZJ+GokVUTO2KisFEMF
LRTTzh9TQAPznWQwk41DTTj6kQ1ZAEMNRpvpn1pxyqq4TVrXW4.ik2v0ZkC5
cd1ZDpy06.LmbV8onMRJmiKJJswtNqdA6WtCXjTqZF1Zwbcka6Wm5PGE8zQV
VZOxRXmy8Cd+hqbzDE8a0bfQaZh7We1gRDyqRJmyUp5mwIILoOsLdezb4ZcN
v4ykELgLpAHzZvntp2ZOZn4c0Ai6otSzea84t9+9oSnW.pwOz1vKpXqZdTM+
tHb1sHRHbQJEKRKn6MI8IP4.Oh.zZnPsFJvUBk5HoOOTpCr2AcsPAaMTWqAL
p0Hcs1OTqQx6JQRcDMmGp9.HzPADXn.ZfvIBNP.ENP3zFWtvd.G+1.jOpOPZ
nbt8aiufpq4qGIuAhRpdiOKPnn9.onAhRvgx10JuAS9nl5YXIxBOO5uzt9D3
CiCuEXv0kten1ooeOusHI7Mw71RvuIFXX6pcKnOrwfEstjzqGq1XRg8ARW1t
eSqD3xxMDFudxZLjMT8bgVYimo+XJ07QcOJtLxlzl4aFAyj89HjM9TwLuVxW
CMugV27BoOBsJs1MQxNIj5l0TuBSdI1PDcOcS+0z+CjDmqJI
-----------end_max5_patcher-----------
  </code></pre>
</details>

## Structure

Max/MSP and ORCA share a lot of communication protocols such as MIDI, UDP and OSC, which means that there is a lot of different ways of establishing a connection between the two programs. All of the protocols can be used for sending out values to Max/MSP, however only MIDI can also receive notational values. This means that the only bidrectional communication possible is through MIDI, this is worth considering when composing using the two programs in concert.

## Compose

### Sources

- https://github.com/hundredrabbits/Orca

  
