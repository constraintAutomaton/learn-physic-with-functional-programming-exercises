module Main (main) where

f :: Double -> Double
f x = sqrt $ 1 + x

test_f_0 :: Bool
test_f_0 = f 0 == 1

test_f_1 :: Bool
test_f_1 = abs (f 1 - 1.414) < 0.001 

test_f_3 :: Bool
test_f_3 = f 3 == 2

printTest :: String -> Bool -> IO ()
printTest name passed =
  putStrLn $ name ++ ": " ++ if passed then "PASSED" else "FAILED"

main :: IO ()
main = do
  printTest "f(0) = 0" test_f_0
  printTest "f(1) = 1.414" test_f_1
  printTest "f(3) = 3" test_f_3
