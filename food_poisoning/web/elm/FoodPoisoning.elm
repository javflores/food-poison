module FoodPoisoning exposing (..)

import Html.App as Html
import Html exposing (..)
import Src.Messages exposing (Message(..))
import Src.Models exposing (Model, initialModel)
import Src.Update exposing (update)
import Src.View exposing (view)
import Food.Commands exposing(fetchAll)


init : ( Model, Cmd Message )
init =
    ( initialModel, Cmd.map FoodMessage fetchAll )

subscriptions : Model -> Sub Message
subscriptions model =
    Sub.none

main = 
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }