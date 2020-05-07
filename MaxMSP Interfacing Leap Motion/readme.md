# Max/MSP interfacing with Leap Motion (Node for Max)

## minimum requirements to connect Leap Motion with Max/MSP
in order to connect leap motion controller with Max/MSP we are going to use Node for Max with the cylon-leapmotion npm package

First you will have to make sure that node.js is installed on your system. Next up you have to initialize an npm project. This is done by "cd" to the correct directory using the terminal/CMD then you want to type in "npm init" and go through the setup.

in order to enable the cylon-leapmotion package you just have to follow their guide, or just type in "npm i cylon-leapmotion". After all of this has downloaded you are ready to setup the Node for Max environment.

create a Max-patch with the node.script object and name the .js file that you want to use for the leap motion input. save you patch as a max project and open it up in a text editor of your choice. I have used atom for this project. now create the .js file that you linked with you node.script object in max. (here it is a good idea to refresh the node.script object in max).

Now in order to get all of that cool data from the Leap Motion write this code in the .js file

```javascript
const maxApi = require('max-api');

var Cylon = require('cylon');

Cylon.robot({
  connections: {
    leapmotion: { adaptor: 'leapmotion' }
  },

  devices: {
    leapmotion: { driver: 'leapmotion' }
  },

  work: function(my) {
    my.leapmotion.on('hand', function(payload) {
      maxApi.outlet(payload.toString());
    });
  }
}).start();
```

run the code by enabling the the node.script object in max/msp and connect a message-box through the "cold" input, so that you can see all of the data.

![](./media/maxpatch-node-for-max.png)

<details>
  <summary>Max/MSP Patch</summary>
    <pre><code>
----------begin_max5_patcher----------
674.3ocyU0zaaCCC8r8uBAcZCv0vR1w4iS639OrVDHaqjnVaICI4zTz0+6Sh
xoMYMYAocXXWLfHoD46wGoeNNBWo1wMXzBzOPQQOGGEAl7FhFOGg6X6paYFH
LbG2XXq43jfOKemEreK96LYC5Ks7U1u5dMQyBT9DzOQ8r1NzVdqpVXeZQ9zx
zYYyStoXxzzRJMgLuHMKapKPS+Ftlip4RKWufjOKMaVBsflNobZR47zhRxDz
cnaw6ycqPxqUCRn.xGM1yr0aDx0K07Za.XjrzrDDgLIcRBhlOwepXdZF5tw6
HG5DxVtEPHcznnAvkp59algeKP0fcejjQqAS1m54g7gwn67ddIN1+I4SxrlZ
sn2hLVUO97fbVN.xodLVBPjRuBHR+OAiLsEewNY.jkWMHIz+IfrBpbtdex1J
3OtUXDUhV2HvQIb0JCeDa.zxN.MtIlG3MMZ1ZG6nZa8gkM5qtUT+fciVMrdy
g14RVUKey6uPvw126nZcmpgejEktwU7GX4DcB5TpudygptHKKzKNr7krN3Yw
xhtzNkTXU5TGO4dL7o5WjSHJux1UESt9i0xj7GcI7cxRoiZRG0lsbVemxJTx
z6MnuwFrJPthHWTvVR.5gj+mUrmfAHmlAnmUvl.h1Q2F1VdyR263pmkLqUKp
Frg08QuRDQ3WgxAEQDtgu5HUPDvFKqDxkNfBpt8ahct56NimG8jB7LfAnuru
6.EJrF+29EDvjd6G2xLpAc8dnNROn2HyFtwJjLeK5fXbK1PjyHJtl7PtPdng
Z4SkG+V3KBHxegDQnenDEZXr99sbsYLXHGtoo6UfZYVBbTHCGA4DVy86+BwC
+nFyztQEqSWNnCaI1UVfCW0oxzxAAb6XO5h866bSp9MJldV.Hv.c7Kw+BP1U
U.I
-----------end_max5_patcher-----------
</code></pre>

</details>


## source
- https://www.npmjs.com/package/cylon-leapmotion
