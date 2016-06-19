module Src.Update exposing (..)


import Src.Messages exposing (..)
import Src.Models exposing (..)

update : Message -> Model -> ( Model, Cmd Message )
update message model =
    (model, Cmd.none)