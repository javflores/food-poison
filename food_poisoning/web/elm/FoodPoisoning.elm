module FoodPoisoning exposing (..)

import Html.App as Html
import Html exposing (..)
import Src.Messages exposing (..)
import Src.Models exposing (..)
import Src.Update exposing (..)
import Src.View exposing (..)


init : ( Model, Cmd Message )
init =
    ("Woo hoo, I'm in a view", Cmd.none)

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