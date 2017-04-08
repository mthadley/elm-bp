module Styles.App exposing (CssClasses(..), css, namespace)

import Css exposing (..)
import Css.Colors exposing (..)
import Css.Elements exposing (..)
import Css.Namespace as NS
import Html.CssHelpers exposing (withNamespace)


type CssClasses
    = Greeting


css =
    (stylesheet << NS.namespace namespace.name)
        [ class Greeting
            [ color red
            ]
        , body
            [ backgroundColor <| hex "EEE"
            ]
        ]


namespace =
    withNamespace "MyApp"
