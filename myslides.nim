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
    #footer("[github.com/pietroppeter/pymi-timeseries-forecasting-nixtla](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)")
  addStuff

template useSource*(filename: string) =
  nb.source = read(filename.RelativeFile)

template kaggleNotebook*(slug: string) =
  nbRawHtml:
    block:
      let slug1 {. inject .} = slug
      fmt"""<iframe src="https://www.kaggle.com/embed/{slug1}" height="600" style="margin: 0 auto; width: 100%; max-width: 950px;" frameborder="0" scrolling="auto" title="nixtla - statsforecast - getting started"></iframe>"""

template slideText*(text: string) =
  slide:
    nbText: text

template pyAnimateCode*(highlightLines: string, pyCode: string) =
  newNbSlimBlock("pyAnimateCode"):
    nb.blk.context["highlightLines"] = highlightLines
    nb.blk.context["pyCode"] = pyCode

template addPyAnimateCode* = 
  nb.partials["pyAnimateCode"] = "<pre style=\"width: 100%\"><code class=\"python hljs\" data-noescape data-line-numbers=\"{{&highlightLines}}\">{{&pyCode}}</code></pre>\n"

template addStuff* =
  nb.useLatex()
  addNbTextSmall
  addPyAnimateCode
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
