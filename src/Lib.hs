{-# LANGUAGE TemplateHaskell #-}

module Lib
    ( someFunc
    ) where

import           Control.Monad.Log
import           Control.Monad.TestFixture
import           Control.Monad.TestFixture.TH

mkFixture "FixtureInst" [
      ''MonadLog
    ]

someFunc :: IO ()
someFunc = putStrLn "someFunc"
