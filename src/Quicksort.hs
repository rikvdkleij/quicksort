module Quicksort(quicksort, blabla, kk) where


quicksort :: (Ord t) => [t] -> [t]
quicksort [] = []
quicksort (x:xs) = quicksort smallerOrEqual ++ [x] ++ quicksort larger
    where smallerOrEqual = [y | y <- xs, y <= x]
          larger = [y | y <- xs, y > x]

vvv  = [(x,y)| x<-[1..2], y<-[x..3], let z = x+y, odd z]



blabla :: Integer
blabla = 1

kk :: String
kk = "sss"
--blabla :: Num a => (a -> b) -> [b]
--blabla f = fmap f [1,2]





inttest y = 1
  + 2

 + 3 + y
    + 4
