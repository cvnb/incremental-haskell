module Incremental (
    hello
  ) where

import qualified Node as N
import qualified Var as V
import qualified State as S

hello :: IO ()
hello = putStrLn "Welcome to Incremental"
