module Src.View exposing (..)

import Html exposing (Html, div, text)
import Src.Messages exposing (..)
import Src.Models exposing (..)


view : Model -> Html Message
view model =
    text model