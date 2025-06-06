module Main (main) where

import Lib (g, v)
import System.Environment (getArgs)
import Text.Read (readMaybe)


vRock30 :: Double -> Double
vRock30 t = v - g *t

main :: IO ()
main = do
  args <- getArgs
  case args of
    [valStr] ->
      case readMaybe valStr :: Maybe Double of
        Just val -> putStrLn $ "The velocity at " ++ show val ++ ": " ++ (show . vRock30) val
        Nothing -> putStrLn "Should be a number."
    _ -> putStrLn "Usage: first <number>"
