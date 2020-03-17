# MaxMSP Interfacing Shiftr.io (MQTT)
The word "Interfacing" is here primarily understood as a process of establishing interoperational constitution between Max/MSP and other programming languages. In this part we will examine the interface between Max/MSP and MQTT Broker [Shiftr.io](https://shiftr.io/).

## History

The creator of Shiftr.io [Joël Gähwiler](https://github.com/256dpi) has already worked with interfacing Max/MSP with Shiftr.io via an [mxj object](https://github.com/256dpi/max-mqtt). This mxj object wraps the Java MQTT Client, and allows max-patches to communicate around the world using an MQTT Broker like shiftr.io.

Unfortunatly Gähwilers Max External has not been maintained since dec. 2019 and I have not been able to get it to work. Luckily there is another way of using MQTT with Max/MSP using the newly added Node for Max.

## Set-up: NPM, JS-files and Node for Max

1. create a folder somewhere on your computer, and access this through your Terminal or CMD via the command "cd [folder path]"
2. install [node](https://nodejs.org/en/) and [npm](https://www.npmjs.com/)
3. initialize an npm project by writing "npm init"
4. add the MQTT node module by writing "npm i -S mqtt"

Now that Node is setup we can create the javascript files needed

- mqtt-subscriber.js
- mqtt-publisher.js

Now that everything is ready we can connect the two js-files to a max-project file

<details>
  <summary>Max/MSP patcher</summary>
	<pre><code>
----------begin_max5_patcher----------
1062.3oc4XssaihCF9ZxSAxR6cYHbLIzqlGgUZub6pHC3j3Vvlw1j1pQy695
CPKYKog3PhVo4hDD+13e+8e7y9myb.YzWQbf6Ct+sqiyOm43nEoD3z9tCnB9
ZdIjqmFHmVUgHBvbyXBzqBs7+rIqDy2iXciPZpnMhRjP+c9sRqgh78XxtMLT
tvn2nDO+4tAA5+WFodD56469OseBtPq.Z1SeKIt2piIcKdfR1ulMS827qDG+
USFOmgyr.Hgq76ijjuDIgSFRHnWjq3m.RMCUiHEt0FGyvnI3znYUrd+GrV8H
07RXOvXVEwa0Hy7AfAwo+sFm7ZFlH159HXgb5U7Z2+n3QfkvMX8J8CERsBuw
oSGdapNYTX3YARhFHI9i.GycAYPxtgwyZv6phAqPBDaCh.yJQ8SFtU9Vo9XT
IH7c+NLWfOfbCrzwltzjZldd6wosEIC5aCmN7xfjBZkarusgugZu9xkmGkxb
lgAY7jAxJDmC2g9DJyoDhbi6V8Cg3gEKDr2dP966YL5yHlGeOdqf4goceWIV
NaZCQzOvezFFS2kj9cWThtzz5natU4QPXj2JKpb001w30GUF+fPb08xwiJ.1
4ECMYwo1VbNJ7lCQdG8A2EOUvYKxy3KDnp5K2qlpSkSMAtQqsDxgqt00rHzB
jmBy0lL5u8tIf48D+hae0EMGcDKpy1.aXveBRVsB4vCnhMxIJU9FnPH2yMBC
aXm2sAN.XifxEPlnWGOGPAZqr4beIJCwlLLYiDU606Av6CUWchQdQYAzKiVf
1k7+o5rRVjbIMYn.SIaNZFQVVmJdYOGqEkhSt6Az0cGswl341JWKMgyIqulv
4eKhlOE0HWAciZSc4UR8W8wwxRRssP5v7h7mxdGlXNtfZQ6hXM7hLj.ZOEsE
j.t8MH6.oJD7RQYPRjWxGnz1CkFbqKgv+5f0ydYHQll+lhFGAv9QjIS1QMOi
yRlv6hIRWVYokL2Z8XoVSiY53emo2jebv5CXzKGvbbFtDKdqOZna2xQsvP25
p+c4TRyeFUTvf6jFIpzvzyulWhyeVrmQa1suubyAm2+4OvLvgOOP1tJUTTeI
TVwQkpGuqHNXYu63H1u8jB9i+vvDXExD2GW4UQIXAk4IstRkAFvoEb1.T8Jq
Yd7etDR81WI+XOIm1vx61ac2Og6G6+BDWfIZ1J8mTpYRCFsLZMkNBMottqqV
ScKxWpovo.Rwiw3sdJzTxXzT7Tnon6jwKLd7JpK6pK0M35hOFihmj3iwnnjo
vVt5dAow40Ngay+5TczcybFNlrMkMOXJzTv4vTvTfoQ.onvI.RA14kLcxf00
GPLd6r05Px93IpN7Y8b8qXh4UcmZ.CoHeXlu9H0.HS13VH6Z2vLMaecogVNP
wEfQZvskPjnalhrgjYipwLuFZ.hl.zreM6egjK92E
-----------end_max5_patcher-----------
</code></pre>


## Structure



## Compose



### Sources
- https://github.com/256dpi/max-mqtt

- https://www.znibbl.es/video/mqtt-subscriber?fbclid=IwAR29o8ZHZ535gwXB5unP2hHsdQDwF-UwOSQrWS7cWQeP9rtQACxnJ0XxIR8

  
