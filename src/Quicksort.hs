module Quicksort where

quicksort :: (Ord t) => [t] -> [t]
quicksort [] = []
quicksort (x:xs) = quicksort smallerOrEqual ++ [x] ++ quicksort larger
    where smallerOrEqual = [y | y <- xs, y <= x]
          larger = [y | y <- xs, y > x]
