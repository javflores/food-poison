module Src.Models exposing (..)

import Food.Models exposing (Food)

type alias Model =
    { food: List Food
    }

initialModel : Model
initialModel =
    { food = []
    }