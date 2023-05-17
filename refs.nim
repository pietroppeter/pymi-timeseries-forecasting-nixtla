import nimib, nimiSlides, myslides

template slideNixtlaArticles* =
  slide:
    nbText: "todo"

template slideHyndmanFPP3* =
  slide:
    nbText: "todo"

# see linkedin post by Emanuele on FPP3, Nixtla, Awesome time series


when isMainModule:
  myInit("refs.nim")
  slideNixtlaArticles
  nbSave
