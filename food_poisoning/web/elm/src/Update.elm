module Src.Update exposing (..)


import Src.Messages exposing (Message(..))
import Src.Models exposing (Model)
import Food.Update

update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        FoodMessage subMsg ->
            let
                ( updatedFood, cmd ) =
                    Food.Update.update subMsg model.food
            in
                ( { model | food = updatedFood }, Cmd.map FoodMessage cmd )