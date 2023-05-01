import nimib
import nimiSlides

nbInit(theme = revealTheme)
nb.useLatex()
setSlidesTheme(Moon)

useScrollWheel()
showSlideNumber()
footer("[github.com/pietroppeter/pymi-timeseries-forecasting-nixtla](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)")

slide:
  bigText: "Time Series Forecasting with [Nixtla](https://www.nixtla.io/)!"
  nbText: "[Python Milano](https://milano.python.it/) meetup"
  nbText: "_Milan, May 18th 2023_"
  nbText: "Pietro Peterlongo" # add links to github, twitter, mastodon

slide:
  nbText: "### 👨‍👩‍👧 Me - PIetro Peterlongo"
  unorderedList:
    listItem: nbText: "now in Milan, previously in Pisa, Trieste, Paris"
    listItem: nbText: "math, climate science and cryptography, now ML"
    listItem: nbText: "Supply Chain Planning Software at [ToolsGroup](https://www.toolsgroup.com)"
    listItem: nbText: "Started with Python in the early 2000s, serious around 2015"  # when Dive Into Python was one of the best resources to start with
    # 2015-2016, when starting a new project with Python 2(.7) was something still somewhat reasonable
    # amplifon python project in 2016!
    # there were some scientific libraries that still did not support python 3 I believe...
    # recall that f-strings came out in 3.6 (december 2016!), we use to use as reference https://pyformat.info/
    listItem: nbText: "This is my first official Python presentation"  # so be gentle... (and my first time at a Python Milano meetup was... uh... 2018? 2017?)
    listItem: nbText: "...also active in Open Source with [Nim](https://nim-lang.org/)"

nbSave