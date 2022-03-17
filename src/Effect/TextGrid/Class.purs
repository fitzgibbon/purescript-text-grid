module Effect.TextGrid.Class where

import Data.String.CodePoints (CodePoint)
import Effect (Effect)

class TextGrid a where
  mkTextGrid :: (Int -> Int -> Int -> Int -> CodePoint) -> Effect a
