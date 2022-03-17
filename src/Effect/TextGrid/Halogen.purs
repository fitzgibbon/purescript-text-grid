module Effect.TextGrid.Halogen where

import Prelude
import Effect.TextGrid.Class (class TextGrid)
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

newtype HalogenTextGrid a
  = HalogenTextGrid a

instance textGridHalogenTextGrid :: TextGrid (HalogenTextGrid a) where
  mkTextGrid fRender =
    H.mkComponent
      { initialState
      , render
      , eval: H.mkEval H.defaultEval { handleAction = handleAction }
      }
    where
    initialState _ = 0

    render state = HH.div_ [ HH.text "hello" ]

    handleAction _ = H.modify_ (_ + 1)
