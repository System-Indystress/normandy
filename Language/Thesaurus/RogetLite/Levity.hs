{-#LANGUAGE QuasiQuotes#-}
module Language.Thesaurus.RogetLite.Levity where 
import Language.Thesaurus
levity :: ThProg
levity = [thesaurus|
# Matter
## Levity
noun:
* levity
 lightness, imponderability, buoyancy, volatility
*feather
 dust, mote, down, thistle, down, flue, cobweb, gossamer, straw, cork, bubble, balloon, float, buoy, ether, air
*leaven
 ferment, barm, yeast
verb:
* be light
 float, rise, swim, be buoyed up
*render light
 lighten, leaven
adj:
* light
 subtile, airy, imponderous, imponderable, astatic, weightless, ethereal, sublimated, gossamery, suberose, suberous, uncompressed, volatile, buoyant, floating, portable
*light as a feather
 light as a thistle, light as air
|]
