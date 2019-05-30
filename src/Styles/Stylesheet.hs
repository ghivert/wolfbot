{-# LANGUAGE OverloadedStrings #-}
module Styles.Stylesheet (mainStylesheet) where

import Clay

zero :: Size LengthUnit
zero = px 0

mainStylesheet :: Css
mainStylesheet = mconcat
  [ normalize, login ]

normalize :: Css
normalize = mconcat
  [ bodyNormalize ]

bodyNormalize :: Css
bodyNormalize = body ? do
  margin zero zero zero zero
  padding zero zero zero zero

login :: Css
login = ".login" ? do
  maxWidth (px 500)
  backgroundColor white
  padding (px 60) (px 60) (px 60) (px 60)
  display flex
  flexDirection column
  alignItems center
