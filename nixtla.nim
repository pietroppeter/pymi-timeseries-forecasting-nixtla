import nimib, nimiSlides, myslides

template slidesNixtlaOverview* =
  slide:
    bigText: "Nixtla Ecosystem Overview"
    # which are the libraries provided and which we will go through

  slide:
    bigText: "Nixtla Story"
    # team, brief history, business model

template slideWhyNixtla* =
  slideText: """
Why Nixtla?
- open source
- api
- performance
- modern python (type hints, nbdev)
- algorithms (classical, ml, neural)
- probabilistic (classical, conformal)
- benchmarks
- forecasting pipelines
- scale
- breadth (hierarchical, tsfeatures)
- vision
- emojis
- endorsements
"""
# very competent implementations!

# risks:
# - moving fast (some documents are - slightly - out of date)
# - still building their business model

# after this I should have some tweets to quote with various claims by Nixtla

template slideNotebookStatsForecastQuickstart* =
  slide:
    kaggleNotebook("pietroppeter/nixtla-statsforecast-quickstart")

# could add a tweetroll: first tweet by Nixtla, tweet by Sean Taylor, ...
when isMainModule:
  myInit("nixtla.nim")
  #slidesNixtlaOverview
  slideWhyNixtla
  slideNotebookStatsForecastQuickstart
  nbSave
