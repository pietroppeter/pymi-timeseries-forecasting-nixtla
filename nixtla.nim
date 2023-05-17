import nimib, nimiSlides, myslides

template slidesNixtlaOverview* =
  slide:
    bigText: "Nixtla Ecosystem Overview"
    # which are the libraries provided and which we will go through

  slide:
    bigText: "Nixtla Story"
    # team, brief history, business model
    # story through tweets!

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
# they actually made available for python something that was R unique, see: https://twitter.com/ChelseaParlett/status/1461173106081296388
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
