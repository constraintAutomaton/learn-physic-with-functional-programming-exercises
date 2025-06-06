module Main (main) where

import Lib (g, v)
import System.Environment (getArgs)
import Text.Read (readMaybe)

yRock30 :: Double -> Double
yRock30 t = v * t - g * t ** 2

main :: IO ()
main = do
  args <- getArgs
  case args of
    [valStr] ->
      case readMaybe valStr :: Maybe Double of
        Just val -> putStrLn $ "The distance at " ++ show val ++ ": " ++ (show . yRock30) val
        Nothing -> putStrLn "Should be a number."
    _ -> putStrLn "Usage: first <number>"
