module App.ChatCreator exposing
 ( init
 , update
 , view
 , subscriptions
 , Model
 , Msg
 )

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

type Msg =
  CreateChat

type alias Model =
  { chatUrl: Maybe String
  }

init : (Model, Cmd a)
init = (
  {
    chatUrl = Nothing
  }, Cmd.none)

update : Msg -> Model -> (Model, Cmd a)
update action model =
  case action of
    CreateChat -> (model, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions = always Sub.none

view : Model -> Html Msg
view model =
  let
    chatUrl = case model.chatUrl of
      Just url -> url
      Nothing -> ""
  in
    div []
      [ button [] [ text "Create Chat!" ]
      , h1 [] [ text chatUrl ]
      ]