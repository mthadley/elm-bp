module Main exposing (..)

import App exposing (Model, Msg, init, subscriptions, update, view)
import Html


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
