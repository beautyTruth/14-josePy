module HaskellFunctions where

main = print "HaskellFunctions"

half x = x / 2
square x = x * x

areaCircle radius = pi * square radius



volumeCylinder :: Floating a 
               => a -- ^ radius 
               -> a -- ^ height
               -> a -- ^ volume
volumeCylinder r h = areaCircle r * h


gauge10Volume :: Floating a 
              => a -- ^ length of gauge10 cable in mm
              -> a -- ^ volume in mm^2
gauge10Volume = volumeCylinder (2.58826 / 2)

-- operations
add1 = (+) 10 2            
add2 = 10 + 2              
mul1 = (*) 10 2            
mul2 = 10 * 2              
floatingDiv = 10 / 4       
intDiv1 = div 10 4         
intDiv2 = 10 `div` 4       


factorial :: Integral a => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)