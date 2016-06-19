module Food.Models exposing (..)

type alias FoodId =
    Int

type alias Food =
    { id : FoodId
    , name : String
    , caloriesPerHundredGrams: Float
    }

new : Food
new =
    { id = 0
    , name = " "
    , caloriesPerHundredGrams = 0.0 
    }