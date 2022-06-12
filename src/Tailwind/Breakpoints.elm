module Tailwind.Breakpoints exposing (..)

import Css
import Css.Media


sm : List Css.Style -> Css.Style
sm =
    Css.Media.withMediaQuery [ "(min-width: 576px)" ]


md : List Css.Style -> Css.Style
md =
    Css.Media.withMediaQuery [ "(min-width: 960px)" ]
