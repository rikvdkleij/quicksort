module QuicksortSpec(main, spec) where

import           Quicksort
import           Test.Hspec
import           Test.QuickCheck

{-# ANN module ("HLint: ignore Redundant do"::String) #-}

main :: IO ()
main = hspec spec

spec :: Spec
spec =  do
  describe "quicksort" $ do
    it "sorts empty list" $ do
      quicksort [] `shouldBe` ([]::[Int])

    it "sorts list of size 1" $ do
      quicksort [2] `shouldBe` ([2]::[Int])

    it "sorts list of size 2" $ do
      quicksort [2,1] `shouldBe` ([1,2]::[Int])

    it "sorts list of chars" $ do
        quicksort "bca" `shouldBe` "abc"

    it "returns same result if called twice" $ property $
       \xs -> (quicksort . quicksort) xs == (quicksort xs :: [Int])
