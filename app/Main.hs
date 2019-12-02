module Main where

import Lib

join :: [Char] -> [[Char]] -> [Char]
join sep xs = foldr (\a x -> a ++ sep ++ x) "" xs

main :: IO ()
main = do
  putStrLn $ join "\n" $ map show $ fibonacci 10
  putStrLn $ join "\n" $ fizzbuzzGen 100
