module Page.Index exposing (Data, Model, Msg, page)

-- import Html exposing (..)

import Css
import Css.Global
import DataSource exposing (DataSource)
import Head
import Head.Seo as Seo
import Html.Styled as Html exposing (..)
import Html.Styled.Attributes as Attr
import Page exposing (Page, StaticPayload)
import Pages.PageUrl exposing (PageUrl)
import Pages.Url
import Shared
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw
import View exposing (View)


type alias Model =
    ()


type alias Msg =
    Never


type alias RouteParams =
    {}


page : Page RouteParams Data
page =
    Page.single
        { head = head
        , data = data
        }
        |> Page.buildNoState { view = view }


data : DataSource Data
data =
    DataSource.succeed ()


head :
    StaticPayload Data RouteParams
    -> List Head.Tag
head static =
    Seo.summary
        { canonicalUrlOverride = Nothing
        , siteName = "elm-pages"
        , image =
            { url = Pages.Url.external "TODO"
            , alt = "elm-pages logo"
            , dimensions = Nothing
            , mimeType = Nothing
            }
        , description = "TODO"
        , locale = Nothing
        , title = "TODO title" -- metadata.title -- TODO
        }
        |> Seo.website


type alias Data =
    ()


view :
    Maybe PageUrl
    -> Shared.Model
    -> StaticPayload Data RouteParams
    -> View Msg
view maybeUrl sharedModel static =
    View "Sasky home page"
        [ Html.toUnstyled <|
            div []
                [ header [ Attr.css [] ]
                    [ a [ Attr.href "#" ] [ Html.text "Sasky" ]
                    ]
                , main_ []
                    [ h1 [] [ text "It's all about (language) Design" ]
                    , p [] [ text "Elm is a language that has been meticulously designed for building stable, fast, error free UI's on the web. To compare the Elm vs JS and the design of the language, an analogy may help." ]
                    , p [] [ text "If we think about this for a sec, the only thing different here is the design of the road. Because one road leads onto the other, there really are no other variables. It's the same drivers, in the same cars, with the same weather, with the same police enforcement. \nIt's is only the design of the road that can account for the polar opposite safety stats of these roads.\n\nThis is the importance of design, and for the rest of this post. I'm going to try and convince you that Elm is the Expressway and JS is the highway north.\n\n(As much as I hate to admit this, I hate cars and think she shouldn't build more roads until we have solved climate friendly transport)" ]
                    ]
                , footer [] []
                ]
        ]
