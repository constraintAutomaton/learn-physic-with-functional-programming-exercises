module Lib
  ( g,
    v,
    printTest
  )
where

g :: Double
g = 9.81

v :: Double
v = 30


printTest :: String -> Bool -> IO ()
printTest name passed =
  putStrLn $ name ++ ": " ++ if passed then "PASSED" else "FAILED"