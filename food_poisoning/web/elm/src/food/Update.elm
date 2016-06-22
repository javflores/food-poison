module Food.Update exposing (..)

import Food.Messages exposing (Message(..))
import Food.Models exposing (Food)

update : Message -> List Food -> ( List Food, Cmd Message)
update action food =
    case action of
        FetchAllDone newFood ->
            ( newFood, Cmd.none )

        FetchAllFail error ->
            ( food, Cmd.none )