module Main (main) where

main :: IO ()
main = do
    putStrLn "nothing to do ..."

f :: Double -> Double
f x = x ** (1 / 3)

g :: Double -> Double
g y = exp y + 8 ** y

h :: Double -> Double
h x = 1/ sqrt ((x-5) ** 2 +16)

gamma :: Double -> Double
gamma  beta = 1 / sqrt (1 - beta **2)

u :: Double -> Double
u x = (1/ (10 + x)) + (1/(10-x))

l :: Double -> Double
l x = sqrt (x*(x+1))

e:: Double -> Double
e x = 1/(abs x ** 2)

e_ :: Double -> Double
e_ z = 1/ ((z**2 + 4) ** (3/2))