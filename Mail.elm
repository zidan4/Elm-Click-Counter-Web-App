module Main exposing (main)

import Browser
import Html exposing (button, div, text)
import Html.Events exposing (onClick)

-- MODEL
type alias Model = Int
init : Model
init = 0

-- UPDATE
type Msg = Increment
update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment -> model + 1

-- VIEW
view : Model -> Html.Html Msg
view model =
    div []
        [ div [] [ text ("Count: " ++ String.fromInt model) ]
        , button [ onClick Increment ] [ text "+1" ]
        ]

-- MAIN
main = Browser.sandbox { init = init, update = update, view = view }
