module CollatzConjecture (collatz) where
import Data.Maybe (fromMaybe, fromJust, isJust)

collatz :: Integer -> Maybe Integer
collatz x = if x == 0 || x < 0 then Nothing else collatzInt x (Just 0)

collatzInt :: Integer -> Maybe Integer -> Maybe Integer
collatzInt x r = do
  if x == 1 then do
   Just r' 
   else if x `rem` 2 == 0 then do
    collatzInt (round $ fromIntegral (x) / 2) (Just (r' + 1))
  else if x `rem` 2 /= 0 then do
    collatzInt (x*3 + 1) (Just (r' + 1)) 
  else Nothing

  where r' = if isJust r then (fromJust r) else 1