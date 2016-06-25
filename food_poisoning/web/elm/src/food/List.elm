module Food.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, style)
import Food.Messages exposing (..)
import Food.Models exposing (Food)

view : List Food -> Html Message
view food =
    div []
        [ nav food
        , list food]

nav : List Food -> Html Message
nav food =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ] [ text "Food" ] ]

list : List Food -> Html Message
list food =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Name" ]
                    , th [] [ text "Calories" ]
                    , th [] [ text "I have eaten this" ]
                    ]
                ]
            , tbody [] (List.map foodRow food)
            ]
        ]

foodRow : Food -> Html Message
foodRow food =
    tr []
        [ td [] [ text food.name ]
        , td [] [ text (toString food.caloriesPerHundredGrams) ]
        , td [] [ buttonAddFood ]
        ]

buttonAddFood : Html.Html Message
buttonAddFood =
    a [ (class "btn ml1 h1"), style [("backgroundColor", "black")] ]
        [ i [ class "btn-primary" ] [] ]