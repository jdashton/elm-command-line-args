port module Main exposing (..)

import Json.Decode as Decode


port stdout : String -> Cmd msg


port stdin : (List String -> msg) -> Sub msg


type alias Model =
    {}


type Msg
    = StdIn (List String)


init : ( Model, Cmd msg )
init =
    ( Model, stdout "Starting up" )


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        StdIn list ->
            ( model
            , list
                |> String.join " "
                |> stdout
            )


subscriptions : Model -> Sub Msg
subscriptions model =
    stdin StdIn


main : Program Never Model Msg
main =
    Platform.program { init = init, update = update, subscriptions = subscriptions }
