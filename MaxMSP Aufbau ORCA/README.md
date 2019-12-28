# MaxMSP Aufbau ORCA
The German word "Aufbau" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages. This constitutional process is realized through three interpretations of Aufbau. In this part we will examine MaxMSP Aufbau of ORCA.

## Set-up

### MIDI

![](./media/MaxMSP-Aufbau-ORCA-Midiin.gif)

![](./media/MaxMSP-Aufbau-ORCA-MidiOut.gif)

![](./media/MaxMSP-Aufbau-ORCA-MIDIcc.gif)

### OSC

![](./media/MaxMSP-Aufbau-ORCA-OSC-and-Base36-encoding-and-decoding.gif)

When I was exploring the ways of sending OSC messages between Max/MSP and ORCA I found that sending number values were very easy in comparison to sending strings of words. All letters would be received encoded through the Base36 tabel, which meant that "HelloWorld" would be recieved in Max as "17 14 21 21 24 32 24 27 21 13". Thanks to Italo Lombardo and Rajan Craveri I was able to assemble two ways of decoding the Base36 message. I have marked these as Simple and Complex decoders aswell as an encoder.

### UDP

![](./media/MaxMSP-Aufbau-ORCA-RawUDP.gif)

## Structure

Max/MSP with ORCA share as lot of communication protocols which means that there is a lot of different ways of establishing a connection between the two programs. ORCA has three protocols which can be used for communication  MIDI,OSC and UDP. All of the protocols can be used for sending out values to Max/MSP, however only MIDI can also receive notational values. This means that the only bidrectional communication possible is through MIDI, this is worth considering when composing using this setup.

## Compose

### Sources

- 