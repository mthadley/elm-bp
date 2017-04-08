module App exposing (Model, Msg, init, update, view, subscriptions)

import Html exposing (..)
import Styles.App as Styles


-- MODEL


type alias Model =
    { greeting : String
    }


init : ( Model, Cmd Msg )
init =
    Model "Hello World" ! []



-- VIEW


{ class } =
    Styles.namespace


view : Model -> Html Msg
view model =
    main_ [ class [ Styles.Greeting ] ]
        [ text model.greeting ]



-- UPDATE


type Msg
    = Noop


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Noop ->
            model ! []



-- SUBS


subscriptions : Model -> Sub Msg
subscriptions =
    always Sub.none
