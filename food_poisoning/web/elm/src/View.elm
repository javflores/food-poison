module Src.View exposing (..)

import Html exposing (Html, div, text)
import Html.App
import Src.Messages exposing (Message(..))
import Src.Models exposing (Model)
import Food.List


view : Model -> Html Message
view model =
    div []
        [ page model ]

page : Model -> Html Message
page model =
    Html.App.map FoodMessage (Food.List.view model.food)