module Main exposing (..)

import App exposing (Model, Msg, init, subscriptions, update, view)
import Html
import Html.Styled exposing (toUnstyled)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = toUnstyled << view
        , update = update
        , subscriptions = subscriptions
        }
