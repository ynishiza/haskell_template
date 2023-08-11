{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import B.Lib qualified
import Test.Hspec

main :: IO ()
main = hspec $ describe "App" $ do
  it "Hello" $ do
    B.Lib.message `shouldBe` "Hello"
