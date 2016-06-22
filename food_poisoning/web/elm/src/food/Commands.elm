module Food.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Food.Models exposing (FoodId, Food)
import Food.Messages exposing (..)


fetchAll : Cmd Message
fetchAll = 
    Http.get collectionDecoder fetchAllUrl
        |> Task.perform FetchAllFail FetchAllDone

collectionDecoder : Decode.Decoder (List Food)
collectionDecoder =
    Decode.list memberDecoder

memberDecoder : Decode.Decoder Food
memberDecoder =
    Decode.object3 Food
        ("id" := Decode.int)
        ("name" := Decode.string)
        ("caloriesPerHundredGrams" := Decode.float)

fetchAllUrl : String
fetchAllUrl =
    "http://localhost:4000/api/food"




