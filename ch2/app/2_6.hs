module Main (main) where

main :: IO ()
main = do
    putStrLn $ "the value of 0.8 is: " ++ show ((\beta -> 1 / sqrt (1 - beta ** 2)) 0.8)
