# MaxMSP Interfacing ORCA
The word "Interfacing" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages.

<img src="./media/Logo_ORCAAufbauMaxMSP.png" style="zoom:50%;" />

## Set-up

### ORCA x Max/MSP Template.
<details>
  <summary>ORCA</summary>
.........
.........
..D2.....
..*......
..:04C...
.........
.........

</details>

<details>
  <summary>Max/MSP</summary>
<pre><code>
----------begin_max5_patcher----------
687.3ocyVssihCCC841uBTeFPMkVJy9qrZDJT7.YTZBJIkEzH1u8M2JWC2Fp
FsOzzFGWe7wwwNeEGkLiuAjI89Uue2KJ5q3nHqHifH+7njZ7lJJVZUKgRVCC
WfIr+lz2s7ZrfgqgqrJYtcA9rOGflzJbEVUsjvVLU.UJG5n2Fl1uGZzHyq27
SJGl16c++vZpILJnrtQlWn1szVByX.sh2vr1J8vOvaTs+QgWpSjZ6Jvgahjr
fgoI8O9KyyGTNVY9fRjZ699dWWnIqBDSAFdF0ZEjeMIdMLeJVoDjYMJ3vWRe
.0GQMwLZCv+nUbq7iMeqK5oyIq0vHJoZqC87.JTqiUl0FTlNLjAnb1hquoch
pDMVDL8R5dFfXaVy3fv4sgKhO.k0FMOQI4RtPExobptKN9vK63t39OXRaEut
FzYG98IErQ4jujMbeNo.jZcvJBmMkRXv9Dpr.oxk2JUdrMIdRoYbTlYLK8ZY
xnfYqocHIWCzPGFGeCFL4HBjM9mh.0fThW.WP.TH2O+Va.E4FetnvNlZ8+r6
UJ4T+GcsxE5JAcH0RCQsQ2fZkn+yXFC9i1oufXywUgZATd2N.YSPG5.7rbKs
6HP01JJDhBE2kBtyM4i5zcGeyotbOpVo6.cIAyuKAcoe9JaYOWggelzOFWA5
NfANbc+DPKsPSJ9Nraz0XGgYuKwQuNgtVLRLccN6xXV2zH+zXfj2HpZsc6cq
5g16pyAohvr8xNRoRmNACyOEPoO.PouHPEO.NmwZtXNHtdcfNG4zKQF8ZAWs
QytGx4cwt3CjsX5C8x.k+.wxhNHaA8.3jeANtic3UqVCBoWYKD5hLexsanS5
amRXto1i8IBXMoUeac7DrPWMQoKkzHb2ecyXWczjZtN0f0P7YGZxogzV.ybW
W4JriG15bw6h+GvfS6Ru
-----------end_max5_patcher-----------
</code></pre>
</details>

![](./media/Max:MSP-ORCA-Template.png)

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

### MIDI to Ipad via Bluetooth

You can also connect ORCA from your macbook to an iPad connected via bluetooth. first you need to go to Audio MIDI setup, and then open the tap called "window" and select "show MIDI studio". 

![](./media/show-midi-studio.png)

inside the MIDI studio, click the "bluetooth" icon

![](./media/click-bluetooth-icon.png)

inside the bluetooth configuration window, click advertise in order to connect a MIDI bluetooth Device.

on your ipad connect to the advertised MIDI bluetooth device.

finally on ORCA select the bluetooth midi device as your output, and now ORCA is sending MIDI data to the ipad app.

### OSC

By default ORCA has an OSC port 49162, this port is assigned to the Max object "udpreceive" from here I am using the "route" object to get the data from either address /a or /b. On /a I am sending numerical values with one of the numbers changing randomly. On /b I am sending the message "HelloWorld".

![](./media/MaxMSP-Aufbau-ORCA-OSC-and-Base36-encoding-and-decoding.gif)
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

When I was exploring the ways of sending OSC messages between Max/MSP and ORCA I found that sending number values were very easy in comparison to sending strings of words. All letters would be received as encoded Base36, which meant that "HelloWorld" would be recieved in Max as "17 14 21 21 24 32 24 27 21 13". Thanks to Italo Lombardo and Rajan Craveri I was able to assemble two ways of decoding the Base36 message. I have marked these as simple and complex decoders aswell as an encoder for the Base36.

| **0** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **A** | **B** |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0     | 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 11    |
| **C** | **D** | **E** | **F** | **G** | **H** | **I** | **J** | **K** | **L** | **M** | **N** |
| 12    | 13    | 14    | 15    | 16    | 17    | 18    | 19    | 20    | 21    | 22    | 23    |
| **O** | **P** | **Q** | **R** | **S** | **T** | **U** | **V** | **W** | **X** | **Y** | **Z** |
| 24    | 25    | 26    | 27    | 28    | 29    | 30    | 31    | 32    | 33    | 34    | 35    |



### UDP (Orca->MaxMSP)

By default ORCA has an UDP port 49161, in order to receive the raw UDP message in Max the UDP port should be assigned to the Max Object "mxj net.udp.recv" as an attribute "@port 49161".

![](./media/MaxMSP-Aufbau-ORCA-RawUDP.gif)

### UDP (MaxMSP->Orca)

In order to communicate from Max/MSP to ORCA, we can use ORCA's default UDP port 49160 with the Max object "mxj net.udp.send" with the attributes "@address 127.0.0.1" and "@port 49160". This enables ORCA to be controlled and clocked with MaxMSP. it enables ORCA to be remotely controlled with "start, stop, run, frame:0, find, copy, paste, erase, BPM, APM, skip and rewind" along with being able to control the position and writing in operators into ORCA.

![](./media/ORCA_MaxBPMAPM.gif)

<details>
  <summary>UDP-Max-Patcher</summary>
  <pre><code>
----------begin_max5_patcher---------- 6079.3oc6c01bjiab9yq9UvZp6CIUIqfFuRdNoJeWbxkWN633DGam6tRE0LT yxcGQNgCGs6ZW2+8PBPxgTZdAbH.GHJsWcRZ3KC59AMdP2.M.9qW8tY2k94n My79Zuev6cu6ud06dm7RkW3cUe9cydH7yyWEtQ9XyRh9T5ceX10pakG84b4k W688Q44QYat82t8g6J9c8Sjr8gzs4qhxkuNt5ppKk+k0QpxdVbR9rq8lcWXx xYd+T0SsNLe96iSVdaVz7b0Cxn92vt1CyuAcsG.P4uv3aPMuSQ4EmTWbnpKF uPJjEB9ufhDyZ+0GkUorUZ66lce7pnGKzf3zjxaAWWc8v0qac4205UJgnOjJ +h7ut4RwIpKAMWJK5w352mzb0vrBkLuPC2lIQiYelSms6qIcQTVx1X42j5h+ 7U0hjrZII7gnMqCmqd4xZu5auC1Pk3j7Gbp7WTezNPqnNe4pz4eLZQKPqnRZ cTRbx5rnMQI4g4UBdysWDce31U42deZR9l3+hr3ghph8c+6qDu8dyREPJ6eS Vb3pFoeYV7hzjRgnS0P4kqKtevCXRCAVakQ9DIgq2yKWXATfIG3laJTxsatK LqrV5tUQsLXKrzSSW08VMu2pn6yqt853jjmfh4oqO7MyhW99i7t2kVbyGN12 s7Natcah5t2VXPje6lvG6h14gqVU0vs6W+mCSheHLOJOVUEfQM2LJIrPQe+l 4YoqV0QeU24w8bmEEF3yi9T7h72KKn1FCEOd75ZinYM0xKhWFsIu60xCWto6 U1j+EEn25RauqpA7s4QOrdUgVz8A5Ps0t0ZaJtNW+XTcco6tOK8gMe4g6RW0 91c45fV24Y7cMjbGhnCHTokMIn7WhmQz8bxt1kWKBORAaR8M94qtp9Ot17fx Gi9x10GFOnGCOp3+e9uNINgH2HJ5Q.PRdMFR18vQAJzA.JFyj.0caKZ6lbll Gc5G7DlHXAQ9KZ8O6uIBkOqSQkUvHWzY9spV5RLabLg1DsxC7vdDOpGyi6I7 78B7PdeiWn225cm2+n2bues2Bu+IuHu+Yu689Nukd+Kdu26e0K16ey6Cd+6d ez668V48a7dv625k38e3k5867V68e58+4868x79u7138e6k68G7158+38n2e z6Sd+IuO68m89h2+q2eosLsJNIZd51DofwNX0Hmbx5wqe62uV98oayRgRBJP H4o.JVxtyOVi1NVXcZ0NVD6w4ogmIQlNT3LIyMPktxobO83D3GBP.w30S2X2 OWEHM7d4.tIAIkBdXv.oiVQXB4uP0+r28fQQr1xv7zGdHJoqWkx2HYQzmaEI kK.AU8haBLf2KL.uGLXWPTkc+c.umkJQ482O3rIca17Z68ZOPKh9riBUDOPd bRSPk+vNJM4SpU0SukiBG7zTNJXRrnbT5tkVxgrJ0hxg90K1WN.GQNvNhbPb D4f5HxAyQjCtiHGBGQN7cD4HvU3wbFBUWgQEbEJUvU3TAWgTEbEVUvUnUAWg WEbEhUvUXVwtByJ1Y7U0UXVwtByJ1UXVwtByJ1UXVwtByJ1UXVwtByJwUXVI tByJwYFF.WgYk3JLqDWgYk3JLqDWgYk3JLqDWgYk5JLqTWgYk5JLqTmYDVcE lUpqvrRcElUpqvrRcElUpqvrxbElUlqvrxbElUlqvrxblIuxUXVYtByJyUXV YtByJyUXV4tByJ2AXVqyDDMxUimmcIoYKTquD3BKb6KEbZDNjkDNtAx1lpKV ujWlUtzFVbqZYbbaXddV7cayUIpT60vSuVtAKWkdW3ppESPyhQYOqFgq1Ibx epfIcV0TqheL5lE6VcKydLbWI0byef8S8bYSUl8f2uJML+nKZJLVt7AHb0R+ ATK.nCsnof8snon6VzTOO4vgNUNM0JGo94wvUaiRu+4Kjpce80ZYS5y05daS hyaVRH66AdnPej4N6tkfR6auJMY4wf+m7cEJqZIn8+ks48oYsVCS+teyrqZa EaS6EpcrWH.cn1KjWC1KTCXu7sFwd4fqJyEQEUSQ62JANjUxIWEl.guaUXxN mEgI9sEg4aKBy2VDlusHLu7KitpUVwvWEc.0kVEcXwgAMrNqYMcANhbMLQEm dc6fODvgeac6bx0sCJv4V2NXCrlUfAutcryZVAnZG2OX0we.qcTzVcsyTX9o qbfm5QyePusKbdIK+uaSg2F8LtrNqizi54sjrU43M2u2NdSBBdyw62b79MGu eywaWwwaLwenNdiDioi21GXBXR2DM.v3R6qGHO3vfVu1EMz0o6.gZWBa.ao. HitGKjmtb4pH6uUJvgAa4.NhkyK3P1v9AyFulWD7HEuONX2rBbVw6i88cusf BLdfgxRBDuT2BJT82XBHv2Q2AJPZOQ4AVcme.o8bhWBkVTNzdme.IrtbnUVd X2cBi5wvQC4vlixRYOF5IGkbn1TN70FOfWsi1SXVV5mtsvAkCrY2ROzn8nlA 9qO7ebzj4fHtgHZl8Ur.tIn3yn5+wD8dLgnuBGSH.TAGf8eabgdabgdabgbn g+vGnxszUluJKSN+vXw9BGZ.Pr+Lx1fbL4tj9fhQiMcmS1FXRQ9OnP7M5TWW zs0lvkQ6EmP1Zml12WbyNalhn6YmqMiv+E1FnLhxuAyJy3czPYZDANBSS78d +MeUL382+O3g9a8xeeThmh+vNVOAfbvCpPPnxoT7YQViLo4Sbx7EQyOS0tqa 3mnkSs0CZ.8SMpC25Eglg6Ww4plA6gPyPeYQyfwJBVNcfiJOVvdkRxvU1NJD bPjLB9KLRl51MUVOCfjQHl7jLADrrCcJYvrLbzX4YGXOO6.osiIPC3E07f1n 4hfgx4xwNTHjLv5yxWcSHRvPyqWLmXzXHkGrXmo5+rjqSMvlGbb1NE3nVZTL UNiSNK6pSms3OQRaFNwhxaRYxU2Z0DlbrolImufo.GCXxwcDStKpuAXBav8F JlL9FXBzv+EouAXe9f8MH30ouAP.anD0BzT02.fSFJQs.dy2fmzZ0Dlb3opu Alvji7Z12…wUSXFYncFxHu3cMfwUI34vwhWVIOcsQvfydZLi85xufJjinVC 0CgilwmZbz0XiZx3GBEMS7lWAcnnLg8l+TydqJe1Mf4VvadDTv+CCsWPpXh3 QfIvBi1ba4lOEWHq3Azf6jpt.UM2iU6IVApUKx4n7jQczBFCvgALSANTzTCb JOQWMkki+TCb.t4ZVMpSq8XEEBNXviNIfeUFEBFAC0qP.MQiBA3AC0sPj+aQ gz0sngaugXSynPLg4F50bTHb.Zmo5Cv0aH.+xJqIEBYV0xDnA1OHDPdcl0j7 BupD6fvgj1jP.8E+5b.W.Cp1RzA2VBdY0VhpT1gmAxf+qzk4.Nv2TofL3yGs ADByrV9iTsFpvCN2RALZBfGBtvX3gqOO0GQ8In5kT2Y27.SlV6lWBhpkBEOz 8yqBVmoEzvqXUMAz3Jqz2zjni2QDV6s5LcgORfpQG6ri.Ev9u38uSPf1TPCh AN3E+T1zXaLbzffFokBdQK1rzh9NPiAmCgI6nVk4TmIv.i2Zje65wdUxKJ.n xgLTkfvCXQxCD7rwbiumY6w8qFY7QCbf+.BY5tKKT2PyDFPzokATCzX.KHiN zw0aYe6Ca90oeJw6aJ2yqN6MZvF8Vs2ZBLV8Bmu+N7QlBQQyoDSE0HQLAvCV 0J81D3g+KunnqUeCDE83lrIivlENmXpPEG2TMYDfFrvXPC75KJ5Z3y.QQSe4 uaPw3HSE2HcBrTHvBigFzoTTzM.yvihlxlxQQy7ACEEMkOpAAwsd1yTgLCOF Hylg0N1gQPUCMSX.4OwLfpgFCXAELVQQ+GVOvXnazZCDCMaJLyqTgwhgFASA 7.arXnQu.mI5Z02.wPilXyDMIvXwPilXyDc8h0vDPi+quXnqgOCDCMJ3EeLz j.iECM7xeWHrw1v.nALkhgtAXFdLzi4In83GCMELULz.YTCAhX6PfpQlgGAD PmtwPW2PyDFP7okATCzX.KHwXEC82Gce9.ihtQuMPTzf+DHpQBBapnFmBSDM lwLDbD7BLF5Zs2DwPOwNalwXrwBTjMsfFvmaLng95KF5Z3yDwPid4uZ8f.CE 0X.6EeHzMlFCGLHSoHnavkAGAc.cJG.MlhLS.zAia3OTaG9SMvL3ne78mtgO W2Jy.lOhok4SCxLX6m.+wJ34ee4gq5.idtQuGdzyl8v7ZDNOlZ1FA33AdfLQ 4tx4wz4iYCbahoYZ2DRvr5rHfbFMfHc1setP6CLEleWFbrIzqJbje93HwAvw Kl8XSpTOX6QbvqY6wlE18vsGQiDNNFGke06lSU6oQC4.CcL65Potm+p9RMhY 7.3FerfS3Ap+4iKinUZebNdNPB5XZT6yS6S6b4ajrHRpjf6fHXN0RPBzKHA6 PFIHlkfDbufDh6.I9pDj17HBoWHBcOHRSgNaUbRzFk79TPRpRk2e+P0lzsYy qIPqhA5Zut5yhnM4wIg4woIsePh5A0ppp2Rgn3KGzQJ7ssTf0PJjaPh1SL3Z BF991VJzCLrpXvz09jZSofpoT.10xf3DfAVavP7rm7g3EqSiSx2T2oLSc9.R U9k09iVR780lwicRouZRZCvpQmKPI7keryqklsHJS+99smFg0Ui.0t5bc0Q4 G2uFgtrZjp8FniJoFtPBTkn9c+HwuZ6xs5nl0+ogM0nvfUT3xgkRKEV5soma JakaxhGT1rigBQWFQ4NVeoghcDCr1hguMECj1hQfEEixggQOwfhroX3KzUND 9isgaeDN5X2hG6qqWWMpgkjCsaWUKwVRN.somIiekEnMHgFeybsojDAVsFT6 JP73WApa+qAzQu9SDzWNTKIG9lnEH5BKb6qspsstDBsQNj6JbXAe7qV4ZKbV s2GAqutJXI4fZBKIzEV31mMm0My0NLEA1p0fZ6OE2tr4Z6xh.YU4PauS3V0O Wd+hXxdxg1cjwsp2ZbgiHGZ2C.2p8.v0tG.NXU4PaRVNwpxg17ob61dA2qAb wdxg17obq1+BG4FxASa9TlU6mioMeJypdtwzlOkwspbnMeJyp7GLVuFuV6IG ZymxrZ+KLhaHGTsau.Vk+fJbD4.oYp.zLvBVTNza.NroXTOqEWZ3fD3Fvgts VnbqKFPeh71RxgvMfCga.G.tWSMp8jCs4NnVUNP522hUiY.osuGTqxdfztdA Yy97A8ysJqlBhf1IWEDfspbfMwTUgtvBG1erGjUH.5I+uKJaGM+drTkpef1V 91zsp8k9PGJQir4no.BykeiDPkPYXd27ajau7arbeUVS4mZyAc.jceoUFDKH VWN.svCqZVocPkkGhCmvthE.sx7zx01zEIyS6iNgOUhZVqSpLyjWsJUexGqR TSlfbYRTydnw6I7rCnwprski3WlrsEnZmq+Bq1A.kqcKUgUkCVurpsmbnsqw Tq5hNk3Hxg1q7.JXc4PO6TjUkCsm1G61wFpmhwXRWizlt9jNyU2oCkKWh5be 0JK9IerbSzR1gEohMO3lw0cdRPuZsZqzuFzd3I2mD+DnuouQ05DpyGsl7KLn 7WaMv6J+1LN.h18hQrJKEgpq2Ebt0kCsXsIVsWLsWyJ.9j1UhpMDGUb.BJbg hCnG5j+ohCnVmTN96i8aGGP8GqhCPPoWn3.5gFi0sVTEGfPHtPwAHWFS50R0 pib.Qa+qHVcjCHPurpsmbnuSLV0uWsWXW1VNz1yBrv5xgV1oXq1yFV6T72pc zi48TLFQ5ZskM.iNIccUmNUN96yvsiCn9iUwA3ioWn3.vjd0Z0ZwAf0Npc7I G2yl9FUwAz4iVS9QlS9arF3ckeaFGf9ymAXUVaP6QYjEXc4PKVavp8d.ZO5d vIojn31yG.EcolO.80ITvohCnVmp1mW86Le.0erJN.J5RMe.8Piw5VKphCfR tTyG.PztkpcagPztkpUiGAv8xp1dxg1wiX0zREzNktrrbfzNdDqtGUsOtrCI GVMN.sSwMhcqVD8YapxZ9ch38DMFwdMzV1JOdjOUuFnNSKAC5LsD0erJbDp+ kZZIzNuGIjwu5P6gJ+z6nYUagTUvOghZWaT+wpZilzCZ7qMn8r1vRhAoW8jX OtB86g+jw3032lJF0NezZxOXP42uybU0H+1LFUDR6dPs5byncRQ2z.ZuaTqW UIPWoJlvGiVbawaEMO+1v77r361lq1.WaIPkEz7r300ETyFC6rEwKKjgtWa4 pz6BWI0unrlsI7lamGtTsc3N6pcBm7mJXRVls1QcUxvw1jy2sAm+iy79w5RZ +6W2GYqMeua.7Te47dv1+4d2d2xx6r45Bpiu5dpeK27o3BYAueUAePU45SnN b04aiRcHJd99oN0mQc6eSFu9MT6evvYn4qheL5lE61Q4m8X3Nanla9C3e5Lf lt6J6687yM.cCujQQMqWTP4WxgPH34HD.GCffNM6ZZucjVdOFtZaT58MjD0T Ds95q0xlsO5V2aaRb9l7ur5fOvpzjkGCe67vadeZ1tM9++7lnUUGVKULLmUa YMqwI1oFGSD2Pjaz3hysFGOIpwIZTi+mF0ZbvRswQxSehytEtXRTcC5z.ec5 lQq51J00DbQDlA.u4e97AzRmLEp40nUtYp16bbrsyEs0gerv2T4+c1Npcvye lixviUU4vyOVH6VyS2GGeS25cNxYvpibFC48ZA6ZgTW70J9we7W54W9Cj7G0 OYY3ByS2p7tBOtnW0YMZQPN0mDRZ603tSduw.89JnDy9Jr7mD4Ooiskl5XNB H8Ofgcmg4l.qNRavMiWKPZgoCG2pEHBNNtP1me0rQvF5SYw4QecQLjd+xh+u pc3HCRMMzfda7PGOHpaqrw1Npp80Y.Q3Q.hhxB2DYxQg.HpUgEdWX68Ro8Yy Ln5sNbStYUu.hboBp5Ywu+pGwjp27z0ewBZGlqFj89qcfI0t6iSVXRsCijFk 9G3fH+jZm.eNZWw25cQYmQHCcNFw26.9gj0VDetNi32dBRfd7QHyfchmEsNJ YgWVzmJpS+ZiNpmJPfpNQBCX8GDHtUsJETTmmesJdjqU27w30FsNsBBppS8g 9CAnYlWMCW+fQ0RrJMkp0RRu0RhvjrsYaSLo1EnRrr5EVSuIawHi1URYCguF YRErpBS1Jk1e+b.i5Hvl7z0lT43vtwcjzeOWAiV4sdUnY8xAOHky2BbK2YXt EBPGF2B2fJ4Ce9CdIQ42rcw5a1Tps+pvEKxJprKpID2THg2.d+p0oY4Esi.N xrt7oF4TU6SeZuwgNNzJeqtGanJX4oSPdE377CjsNIHyglS7cyH9yvesKHxX UPvXUPiT4zcu82lEjNkCFZmPGOIAtraQWNHV6xd4mjIUmcQyGIzkpSKMJwDk zX0TipikY6cJiyujP5XgTluHseJCYb1mBGLs4opvgSV3LifxTcTTgQJJcLR4 FojzwJ02L32H0viDDniNYrR5Tle.xHEUm8ShCTTBiURmrMkwJoS2opwJJxI6 D0DEkXrryg.scLX3k0X4JLQa+rLdWYDsgSi2QFdrHG0xoDa3DKVKuDrB3Bik KexYXWCqWpUzRbOZhZ151m1d7P5MyHXr1DD3gVTZQ5Yhtm.PakhLzh57XZTi kR350OFkso5gkkwrGB+PpzFx+Z4GiSTeTN5LyxhdLt94k4dwrvr4uONOZd91 L0by+YtJ4Bl8PZg0Xx13JCR4JIXlLOzdx32zLs9e.+KpxdpBE49vsqx6p82s bd5Jk37CdnaHXFM35x+fxPA9x+RntFzZPlJGIL46cabRo5FU+9TBNfCkulOv Hb4WPffSEvA9BpeQeNVPYxWTfX99p+xmRdxK1TI14sC3nhmU9NkeMRA.XbeN QJ.Mu8cKuOd0plWscBAVO.byVlEtHNJIuYMSHebnAgpzlh+pT5jEJsiLV8F3 52.Gff.t7MJfTDU8WfDmd9q062JLYoZhvvhxwFr5pqyRKG.xJ6phWMnSxDdc UKhrBEsIOFqV7FydnvJItltscKnFqpOtYUbgk3erzL8XVWszHUxG09G0sdFn rnFi1uc01niaoGNedQAz0ZGJqLKQVdgINB+LqUCJfeWVTTRukPToHwHk+SZS yKamXTgSNsueW5pE8V1JAJjzBkEfAlDGg1Vn8W.UbnxweuTB2rNTwLKGl9q9 4q9+ATa9BXC -----------end_max5_patcher-----------
</details>

## Structure

Max/MSP and ORCA share a lot of communication protocols such as MIDI, UDP and OSC, which means that there is a lot of different ways of establishing a connection between the two programs. All of the protocols can be used for sending out values to Max/MSP, however it seems that only MIDI and UDP receive values from MaxMSP. This means that the only bidrectional communication possible is through MIDI or UDP, this is worth considering when composing using the two programs together.

## Compose
In the previous parts we have established that you can connect ORCA and Max/MSP in a lot of different ways. In this final part is about using the above methods for auditive composition. by providing a quick start up template.

[![IMAGE ALT TEXT HERE](https://i.vimeocdn.com/video/862947495.jpg)](https://player.vimeo.com/video/396270237)


### Sources

- https://github.com/hundredrabbits/Orca

  
