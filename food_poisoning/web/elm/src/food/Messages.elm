module Food.Messages exposing (..)

import Http
import Food.Models exposing (FoodId, Food)

type Message =
    FetchAllDone (List Food)
    | FetchAllFail Http.Error