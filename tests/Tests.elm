module Tests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "My App"
        [ test "Should pass" <|
            \_ -> Expect.equal (2 + 2) 4
        ]
