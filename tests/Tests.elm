module Tests exposing (..)

import App
import Test exposing (..)
import Expect


all : Test
all =
    describe "MyApp"
        [ describe "Unit test examples"
            [ test "Addition" <|
                \() ->
                    Expect.equal (3 + 7) 10
            ]
        ]
