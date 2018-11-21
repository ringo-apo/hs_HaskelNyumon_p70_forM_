module Main where

import Lib
import Control.Monad (forM_)

main :: IO ()
main = do
    forM_ [1..20] $ \i -> do
        putStrLn (fizzbuzz i)
  where
    fizzbuzz n | n `mod` 15 == 0 = "FizzBuzz"
               | n `mod` 3  == 0 = "Fizz"
	       | n `mod` 5  == 0 = "Buzz"
	       | otherwise       = show n
    f str act = do putStrLn str
                   act
