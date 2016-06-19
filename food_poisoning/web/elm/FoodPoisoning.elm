module FoodPoisoning exposing (..)

import Html.App as Html
import Html exposing (..)

type alias Model =
    String

type Message = NoOp

init : ( Model, Cmd Message )
init =
    ("Woo hoo hoo, I'm in a view", Cmd.none)

update : Message -> Model -> ( Model, Cmd Message )
update message model =
    (model, Cmd.none)

subscriptions : Model -> Sub Message
subscriptions model =
    Sub.none

view : Model -> Html Message
view model =
    text model

main = 
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }