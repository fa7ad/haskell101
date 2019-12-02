module Lib
  ( fibonacci
  , fizzbuzz
  , fizzbuzzGen
  )
where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fibonacci :: Int -> [Int]
fibonacci n = take n $ map fib [1 ..]


isMod :: Int -> Int -> Int -> Bool
isMod a n m = n `mod` m == a

isMod0 :: Int -> Int -> Bool
isMod0 = isMod 0

fizzbuzz :: Int -> String
fizzbuzz n | isMod0 n 15 = "FizzBuzz"
           | isMod0 n 3  = "Fizz"
           | isMod0 n 5  = "Buzz"
           | otherwise   = show n

fizzbuzzGen :: Int -> [String]
fizzbuzzGen n = take n $ map fizzbuzz [1 ..]
