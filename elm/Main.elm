import Html.App
import App.ChatCreator as ChatCreator

main : Program Never
main =
  Html.App.program
    { init = ChatCreator.init
    , view = ChatCreator.view
    , update = ChatCreator.update
    , subscriptions = ChatCreator.subscriptions
    }
