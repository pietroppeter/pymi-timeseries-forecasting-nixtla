import nimib, nimiSlides, myslides

template slidesNixtlaOverview* =
  slide:
    bigText: "Nixtla Exosystem Overview"
    # which are the libraries provided and which we will go through

  slide:
    bigText: "Team, brief history, business model"

when isMainModule:
  myInit("nixtla.nim")
  slidesNixtlaOverview
  nbSave
