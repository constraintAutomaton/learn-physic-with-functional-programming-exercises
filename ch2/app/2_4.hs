module Main (main) where

import Lib (printTest)

sinDeg :: Double -> Double
sinDeg d = sin $ d * pi/2

test30Deg :: Bool
test30Deg = (sinDeg 30 - 0.5) < 0.001

main :: IO ()
main = do
    printTest "sin 30 degree" test30Deg