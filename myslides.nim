import nimib, nimiSlides
import nimib / blocks
import std / [strutils, strformat]
export strutils, strformat

# custom init
template myInit*(sourceFileRel = "") =
  when defined(noReveal):
    nbInit(thisFileRel=sourceFileRel)
  else:
    nbInit(theme = revealTheme, thisFileRel=sourceFileRel)
    setSlidesTheme(Moon)
    useScrollWheel()
    showSlideNumber()
    footer("[github.com/pietroppeter/pymi-timeseries-forecasting-nixtla](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)")
  addStuff

template useSource*(filename: string) =
  nb.source = read(filename.RelativeFile)


template addStuff* =
  nb.useLatex()
  addNbTextSmall
  # addNbCodeDontRun
  # addNewAnimateCodeBlocks
  # addNimibCodeBlocks
  # addNbCodeNoLineNumbers
  # addNbCodeDontRunNoLineNumbers
  # addBigButtons
  # optionalInitPython


# small text
template addNbTextSmall* =
  nb.partials["nbTextSmall"] = "<small>" & nb.partials["nbText"] & "</small>"
  nb.renderPlans["nbTextSmall"] = nb.renderPlans["nbText"]
