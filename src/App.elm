module App exposing (Model, Msg, init, update, view, subscriptions)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css)
import Css exposing (..)
import Theme exposing (theme)


-- MODEL


type alias Model =
    { greeting : String
    }


init : ( Model, Cmd Msg )
init =
    Model "Hello World" ! []



-- VIEW


view : Model -> Html Msg
view model =
    main_
        [ css
            [ backgroundColor theme.secondary
            , color theme.primary
            ]
        ]
        [ span
            [ css [ color theme.accent ]
            ]
            [ text model.greeting ]
        ]



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
