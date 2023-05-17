import nimib, nimislides, myslides
import intro, timeseries, nixtla, thankyou

when isMainModule:
  myInit("index.nim")
  useSource("intro.nim")
  slide:
    slideTitle
    slideMe
  useSource("timeseries.nim")
  slidesWhy
  slidesCrashCourse
  slidesRefs
  useSource("nixtla.nim")
  slidesNixtlaStory
  slidesNixtlaVerse
  useSource("thankyou.nim")
  thankyouSlide
  nbSave