module Var
  where

import Data.IORef
import Data.Maybe(fromJust, isNothing)

import Lens.Simple

import Types
import Utils

latestValue :: Var a -> StateIO a
latestValue (Var ref) = do
  n <- readIORefT (getRef ref)
  let v0 = valueSetDuringStb $ n^.node.kind
  if (isNothing v0) then return (mvalue $ n^.node.kind)
                    else return (fromJust v0)




