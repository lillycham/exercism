module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum (filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..1000])
