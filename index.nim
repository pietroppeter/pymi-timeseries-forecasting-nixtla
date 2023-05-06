import nimib, nimislides, myslides
import intro, nixtla

when isMainModule:
  myInit("index.nim")
  useSource("intro.nim")
  slideTitle
  slideMe
  useSource("nixtla.nim")
  slidesNixtlaOverview
  nbSave