# MaxMSP Interfacing ORCA
The German word "Aufbau" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages. This constitutional process is realized through three interpretations of the word "Aufbau". In this part we will examine the Aufbau between Max/MSP and ORCA.

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
----------begin_max5_patcher----------
6075.3oc6c01biibb9yq9ULEq6CIUovLuO.WRpxmiSt7xYGGm3X6r9JUPjPb
wtT.LffZ20ttx+0CvL.f.R.fCdY.GRo8pSRDf.SOOS2OS2Cltwe9l2s39nu3
ueA3aAuG7t28mu4cuSdnrC7t7O+tEO58kUa81K+ZKB8+bz8ebwspSk3+kD4g
2A9A+jD+3828qN738o+t3aDrVd9zq4ugBEEGM7viAga8Sj2SX9A24kr5CAga
tK1eUhRlXTmkraAX9R3s.DBk8KLdID7iGuQQGRJtS37ipNTxW24qtMKBBSVb
KXw8dgaVTdsx1yONuyl2ae2hGB15+TZOHHJL6TnayOt2tcUN76pbIYPzGij2
HmaKOTPn5PnxCE6+Tvyuso223zdcRZW9PrTbW7ENcwwaSzZ+3vCAxqQcve5l
BQRNrD58n+9cdqTWb1nWwoOhivLfS9CNU9KpC7HJlNluYazpO4utxvQJJtyO
LHbWr+d+vDujbAu7zq8ev6v1j6dHJLYeveR17nzwllN+C4hWimLqCHk8uKNv
aaozuINXcTXlPTaXH6vEM26AHlTyfUsyH+Fgd6Z3hSUCSwjVN49zN4g826Em
MJc+V+JZToZ5QQaqepxqaq+CI4mdWPX3yPwjncsex3fMeniq89nzS9XW2a4Y
1e2gP0YuKUgH4t8dOUGsS71tM2vs9s+KdgAO5k3mDnFBvvxS5G5k1Q+v9UwQ
a2Vq+pNySMbl0oJ3q7+bv5jOHanpJCoe8fcEJQKJGkWGrweeR8ik3sYe8irO
4qJPuxgNbetA7cI9OtaaZun9WnF0VUq0pTb0NdWTc0o6dHN5w8e8w6i1V8zU
35HUrgeNeGpxIZfyCQnRcZha1uDufyqAdup2wWv8kR3Ub1e5laJ9iamdP4S9
e8vt1vCFqU7.dB7.RVJRmD.AkLWLnbFgtADZW.R9jAu7WSJPc+gTa2v1fCJe
QsdcbJGX5zm2orsdNpL.0GrfH+Es3mCU8IeNy4QEZu+V.BfAD.Ev.bf.3.bA
Pv2A7.+bv8f+QvJvu.rF7OA7A+yfG.eOXC3eA7Av+JH.7uA9H3eG7IvO.1B9
kfGA+JPH3+.DA90fcf+Sv+G32.hA+Wf8f+aPB32BN.9e.OA9cfOC98fu.9Cf
uB9eA+opxz1fP+UQGBkBFqsgw1sx4jSLNQQYJxHgTeFQwRqcdmCT0tmMORc6
a+90xumMqxfjHu1HxPhVs.NgA.SRminRO3TdkNlo4lbB7tmoqU7fOz44xwiK
qY4TMaKfAExFpSPJvfvDxeAK9YGfQUzcUziO5GV2qRorEt1+KUhjZNf.9H8C
zXX.tAL3XPTYS+0h2yRYM67MCN6iNDupPKrzl.TWtSiGHIHrLnx2WgMI6ap0
vSukiLePsA4HyqA.GoifP4lWPfVhfvbsEAwwVDDgsHHbaQPX1hfPsEAgXKBB
1RDDagOyVH3skwEaQQ0ZrbsEG.rD4vVlryVl82VbGBYMDp1BiJxVnTQ1BmJx
VHUQ1BqJxVnUQ1BuJxVHVQ1ByJ1VXVwViup1ByJ1VXVw1ByJ1VXVw1ByJ1VX
Vw1ByJ1VXVI1ByJwVXVIVyx.XKLqDagYkXKLqDagYkXKLqDagYkXKLqTagYk
ZKLqTagYkZMqvpsvrRsElUpsvrRsElUpsvrRslG6r07f3s.l0hcfwokC9Kel
eQwqU40AzLBGW+GyH0J.I4NwpMPBYHUIt1BW6ZR4GrHkWVjkZCquSkFG24kj
DGb+gD0FUpZN7zqzMXy1n681lmLAkIiRCYivMGEN4OUvjNYM01fm7Wt9X1sr
3IuisT4IeO6GaLsoJ1jwMtOwQMkRUn1SoJLVlQADtJOfPprAp+oTU11I7gsQ
dIGSnJ0fS4nRGiOO4s8fezCuLQpN1C2+gn3JoFzu9WdLmnN9kJjGXCm6PXPR
YdizzW3wT.StqpOlmJUO81nvMcMF8r6kmb7mjs8MuopVrI0WnMquPlR8EBhd
Apu7ysF8E5bnuzZVYt1OcTvuQsDbeSFSDgeLYLYmJWLQsoH7VRX9VRX9VRX9
VRXNEoQGhZpznKOaLtbyhNrnUPC2ZJIf0BTHxbUiJzHkcv5jvZ1Pd6.ceKuc
N5a.Zb4sCdNyaGyjyJY5CZlqHXiFhOVa4vrK0.U6n4QW6Qy2p21oNuDm72tO
0aiF73l351aOtkDsJGt4NCs3mTKuQeyw62b79MGueyw6Q53MTXVGuwDGa0w6
S.LFqvd3xjtVZu.yIhHABPsBZzQVDAbEpBDlNUQfdUCMlVDJIZyls9shBHCG
LKGMMpN1QoV.675JjsSXdQvshSNiLder6wk929h2uyPYIthQVBJv3K7RPAw0
YwnlxwXPvrUAJjTEZE8pzXwXQQWd2Ocz7cDE8DDMewcWC4vnqp.T67jFxMtb
nGdXzJCBT6c8hqYkCsqXKtNuZWsGu33nOeWpCJ6ab0dn8c0dvDwRhn7IrhEn
ktoeFV7Olny0+g10Sdu7+eMt9OHjJ7.ryaqAzaqAzaqAzzrTGXGisFPNHprj
uxbT63jKuE6n0m9J1gMznwJQElrnnaqwiMvf4wCMX9RXQQueoDNe5zV68132
HNAaCkDCNTdGGwxi5NoQzyropJc2DMBWiUrjgT9RLKqH3Au.YZBd.7W8MAHv
e++..9WCR9feHPYS2hMFbvKD.RtR.4nDJ2AUqQ8IHb0Z+Us1sM15plaTUn7.
GqxSw9i8rSyPGJMC2ImKV8jqurnYXlROAiUjub5E3ytomjLhAWvac4JcGEJc
gQxHLlyvElT4JOWMjLb3PIYbIX4j1ThUxxzEZfZEMPC2yNjTAwRQiNelmXN1
byMmCKB2Kum5YVHjLTqOQONYrlNDW6dO7JeIhUsS19xj8BvwX6I7RvSkKTL0
dCmnM3UacBIKgcZDd6YXUK5RkiMV9oqYUNisoebDLE3cwpxMLeCDikfCSXWO
9F3LVaOKEMNguAtl12.rC+py2.wncqF4xtVIpEHS6a.hSd04af.OV9oqYUNh
o8M3xUkaP9FvFbvOHHW8fyHWMtFvF7J0x3pM0I4xyw.FybOOHkFxk3Nk9Djz
L9HMaHpbg9ZjilILrBEQ8v5eU4U.yYbTSWy5atlMSOtbU2FjGATwHo1v46kl
qAOBnizryRwhM6+bPpD2JaCY3lTm.VDv7mKYdgvxUkVHCmOZ54hNE3PglBbX
H1kN3PbLE3j8pa8RGbDlBbPbq2rp6nPPXC6zH185a0IQvwNUMDcs5UHzwvJT
Ht6qtnPfrQ5NzUr9Fzz4at6qnnPPtCdUv4HT0cv9E0tlD4Zr02VHjaqVl.d0
uqIQtzgtqI4odNINBSV21lbX1RCd2vgSgAksD8xyVxwXqKDUADuF1AxHmAuC
jwtNV8VPtyEDByZCPvvwlxY3KvcZaG3wfmoVvE1Ld7RuAq0sM2L04vBAVjBd
izYYy3VW2juXisI9DDkUDEeYVTydVsDdRStgbFWKFZ5XhonP+tlHBO3khu.V
HtJCJ1TE8okDqD1cvLvDTUplqgGYCh.GsdhchFcX5jRfDGkNSQqpHDznAElb
RZ0tiZLfxrxo7I+udXWqfxfyRdQJXjsDfpMB7URMuqCe7HCdWhUfTNvqtpbO
hPGp9SgQ0qGEH1X4erbMnhxyWSXyuH5ygfuKq9V0J7L3frKgGU42DwXEIOeW
0UvyeTijAuKS3TxUXTzjguQSxyz6KxnnIlauakCKWzQQSM2CUhStrihlZt56
LVb8FEMc3uthxgkq0nnojg+rsgWcQQSoiVO45KJZJazfx0WTzT9fKb7Nnqwn
n4shTC1m2Bj5ZLJ5N1h0P8Lpd8n.4NV9mK3nn+s65NFZ1fqGekfyEVLzvAun
tTw0XLzvA6aKEeAGCMjXt84xUPLzl6cHEw8BOFZysGoKRViqxXngCdZ3BX4Z
MF5gmPBD2quXnQnQqmb8EC8veeYWBJWewPiHCMFHJ5pLFZRqH0fWWpBj5ZLF
ZzfWClBipWOJPhwx+bAGC8O3+PR2QQiF7q2tR34BKJ5gqO.wWeAQO77tByXW
vwPar8jaArbYGCsAKl+3K7XnMVARF4vuhigd3otdNrbkFCs6feFiXj60VHzt
jQqkb0EAsKczXxUW.ztCN9GLEdMF+LsEfZ3u8xK.pqvvm63sZNTOKpWKpOtN
ik64BN34eS1KW0NidVL35NPI7btBdty2GSTi8HzJKv.b7E46iomgYZWtXHid
UvoBIhk+pHfnMh0q5AyrgiopeCCGGsChE3H+p.GGp9Hdz6rn2zGk5iiN4Su7
zGOw6KTikr6E04o7JZjMN0gpMZSWwcv6XMtZQy3tnkNXAmvcU+yAmEwqT+4D
tNT4LE97T8sctTTCW6K6jn4CQPCtXyvoyIjfmOHAOXkDHaNgDx7AIjEi3UUz
7gHzFPjx68hsAg96Uh0yAIojmc9lgp8QGhWUvZUV7AA0k6096SBB8RBhBq8M
YpuoVCV8WNbzUNPPCJGYKGD.qEb3XRwPnsXXRz.q6fhrt48ruYT7Z+X8C1ru
xlrNOpmFiS6xFxPxFUafiXvwux6tFxA1fxQ1p.nmX3vme8HjlBGkO65QYEhP
MG+PlTOxQ+APWSJGTcGqvlULf8TLlQUFrtCUD37KahdJalQLxVBM.RGsYhQY
mIZyNKmBqtD+Xv5cQAgI6KJ8epkAUsH4NXm7Wrl09HwQ9f6DTp58mryyWj.S
q.zid7KmcukdLRVS0EBg58Ma1Gm04O5QexU29jqrzGInHUeJ6iM2mvFpOQ01
BgYTKDltXqYYLjS8qEdPEFUNzk.UVsF5lwf4hpvXvye3.O6i4LFLA4LwXneO
l3bJqqhdrhwfC4mIFidLJRzsOoXLxVQyyCiA0QaKDy5Zl1dLSoFUNzdVApQY
PoTKQNX8h4xbynnOexImslyTrhXthyrfPgKWIPCI+NSn7WHvz5xO0jxuauzG
Qm8P3ZRi44bv4yNR4xGgIO+ko8y9X1lrTNyZtRS1Gm2oczNrGpYclBqsJfQW
TC8WcSrv3xgViKEw1elW4.4KxfSDHSdHl41.NLbUShhOlaR3fomISBr1yRmU
FjMGaDVaSB7I8HrLRXEqdsOZL4GNcxeo1.ut7azYUQ8ZkXLmb.6k9n4FOcsC
4HK6l0iZDYTu4QZ6EcVEdn63to3pwcScpE2cwGyi6lBOWwc2id7IWothdrJt
aJ4bE2s98IDT29jJtaJ7bE2MR6UlBYTmXPZGWExnLFPse7G3Y+wen8dbfXzP
fQZOICxrxAxRjCbuH2Mmpq13A7jNQQcpszDkbtlzIJHdBkeRskln1GMl7S5k
9H5rSg0jFyywQXsklfgpszDEeLONrRklYONrF7ZpstrQCAFpseuFc6egf5tZ
oM7vGM9rXzdJalai5oiFiiw2md5HEtlTJbzdgrj6VvNiNAmWlITgiPP7pQmT
7w7nSxpWGmknSztC6dxXSJ5upXSvo7hmkXSzuGwzsGohLAicOOQl3pcOxn6w
Fs2eyk7ZFTNzaFNlULyB5jO1iBy+bmIHTXUeKJ9XtuEDD9b4agtQl5RMnWct
56b7oA9BVJkyw09nozaDSm3WpJvqK9FL1D82O1Fc+zq81w10jbQtLaPJzday
gIBCZWh0dCAPMYjGDsSlAhiQQCGa.MvHbuTNLlbna3fXJzjiJ5ueyMYXFXs2
6FFULz9YjojWiMnn8xnhM5dBEqsGcXpQ0Nn5mAeXiJGB6PNXZOAGynYVIiZI
xg15GLpQkCt1xAwnxg15oLiNWKSaVclQ4O3ZOtvMpdJWa6EtQ0O3ZyevMZN.
y0d9ENxnxg149G2n75bnkHGZyevcMpb3XGxgP6XF3FkGSnu9gQ8KTns8hvn7
GBs4wDl8w7qcocf4Z78zldxgQ0OXrdsjCla6f6nKdHHFOG+zSNL67b8aQGL2
dQkpKdv4FOas0SNLZbCbbuV2Aywmpscqvn3gPa+0EF0ecg19qKDy8lknolrM
ga1q7IXGs8PvAN6BmPa2JanaX5gUGs8wSXVt.smqPX1UFV28ASoAgAe7EVfb
P08o8Wp7ZvUr2BjCG8qUWFctBGsm6zwn5GNh9Z2NmSKH5qCFy4DpZu6CcOCy
YIlBgCclqyYDWzbibZWf35T1Pm4BMHwEO+FqSgrgNytvQbI1qyucJbnFKTq2
jKk2nZaum7WeW5sxeUxcdIIwA2eHQU.WqHkYs9p3fcEsdYggcw5fMoBV8isY
az8dakcZ+3x5Kd4oS71nJGtKt4nvI+oB6jsYkJpqRF5pHmer.m+WJNR0BqKp
nJv2XkKuwp+N0QViqXM+tsq4xucqEj7d121r+yAoRDtwtRwqQqtp43M2MCT0
zWT68Zt5cgipWST6Lx1603V602Nzd91fm7Wt9XYnewSdG0eJO46w+XCPS4ak
5FQFTSHSGPA0Etjmsw+T07LJRkBJCCLJp.60L4Js05vp6IusG7idnj0nfynR
Wb+GhhOVC++C68OVB+q7sJDHXCm6PXPx9juts0uv1nvMMOJbSU1kAYGq4HNo
wQb7TNhmFl3RhrthKtjFw+8y3HNYFGwQMMhKlTSbn7cQwElA9tn8y0vMZ9Ft
aZptobrlfQKEtHd4+b3WbF5y2H+DLrW6Uw1Q2y148oTmUk+Ww4Z8cPScpdTi
tvQ0fOGqFgQu78BYKtwU6UNCt3UNyT4cWadtlximJ6os3e7O92k1rY+DJ+Qw
2LK9gUQGTdwg6G5Q6qCvknW9KZTDjU7ZPxpQuuQBeeiD99Fh7mzdpowFLVgU
uiiPDnUno0gM399aAhZFWHcMAqixG5BKPHxps.+bbPh+2B9KRCPkUXufndaj
UBPkFYWD.TcardAQ3ACQE1VVND4G6s2ugNtSuYUPDUg.FeLX74aIHZq6syae
RicORu6dtDYMAVMshicz8VEs6qM06PCr2g4pjM0N5cODDttofp5sQIFJUJcZ
4UPtY6co2768iah9s+KMVGQLvfxQPhCWqk.ryfDp79DehlBO1eme3ZPr+mSG
S+1l.ilMHOcGlpdgC5xlWc11GUwS4nJEonSs5Q08eJXWiiovECq6lOl5fl4w
zt6ld6drodIQz2dIVUs6J5kD6fsM9PXSN.A6KYqqplKV7t2XdIaacpjLSwuE
1TbB81Sf7ALoEI0R7yYeRztl5b8dziiNtFiDjk3D2VuF8xo2N4fOe8sSvsbe
ybK79RsPPzyH0RKcxG+xGAg9IKOrd2x8Y81el250woC1oiHhkoR5RD3msKJN
I0bBwazHs2Tr40+Uk4oyD4Pq7pq+BCUAKO+4kmCNubmYTuddz1yHGUail8rG
d+KFSLQiCeYiilfFGcxFuxFVaDsEUmNpXRZJhFMEeRZIrFsjyTfeDWWcZpIq
kNkVQ02QsinozQonZRrOxl5j55SVKgOQKIlrVhbJ3CMEMEhoyH0jzR5nnilD
RIrVbuLSP76LW3oCYtZHzb0PyT6HvyUCoEIHpY0Pj4aZoE.dps.3yD5R0wRi
NEL+z4xTipilIENId3LWz9h4pgz1Xax82lnsw1jOcCdtFG0RyzDLYn4x3S9v
80PEhZhwQMabSn89bih152rIAi01JEO1lRKOamhPPPHs6Tjw1TCybWsVJd61
8je797urrMV7n2Gij5PN2J+XPn5ixEoYQr+SAEee0Q7hW8gfD+UIGhUOL+uv
U6rgEOFkpMFdHHWgTlCAKj6urms9Mk6CfOhKVqozNxCdG1lTu2mslVqh1pDn
2CfKc3XAkca1eIfLGG0e4PInTKxJq2TIZV6pc4vzuq7ZxtMnr+Bw3NbR1e4V
d02u4gfsaKuzp6KuhEqZwlXu0A9gIkosf7qiJZJhfSExFfjIcxFkVSFyuBbw
UfcgHWt7JftNPp5uRODpoKq2WkW3F0yDCKfE61gTbJNJak.yGfSuT25o+w8a
p0ZDLi5JaBJKs4j+kPcrpne4v1cAgY5a9EWOkfkRV5..hQ3xafaNRgVVpwda
tEQbJ9Vt+DySPjEOlpkDTP2V0BpTq5S62FjpI96xTS6R6pRWSsAjp9iIRVTq
Q6Oe6A+t0z8VsJsApC1nLjICh3oHLDaFvRIfeerueXukPXlHwHY+SZJwyLOm
TgS9Xe+9nsq6srkATPogAyEiXRbDU0vn+BnhCUt96YR39cdJlY4xzeyOcy+u
EZH.2
-----------end_max5_patcher-----------
  </code></pre>
</details>

## Structure

Max/MSP and ORCA share a lot of communication protocols such as MIDI, UDP and OSC, which means that there is a lot of different ways of establishing a connection between the two programs. All of the protocols can be used for sending out values to Max/MSP, however it seems that only MIDI and UDP receive values from MaxMSP. This means that the only bidrectional communication possible is through MIDI or UDP, this is worth considering when composing using the two programs together.

## Compose
In the previous parts we have established that you can connect ORCA and Max/MSP in a lot of different ways. In this final part is about using the above methods for auditive composition. by providing a quick start up template.

[![IMAGE ALT TEXT HERE](https://i.vimeocdn.com/video/862947495.jpg)](https://player.vimeo.com/video/396270237)


### Sources

- https://github.com/hundredrabbits/Orca

  
