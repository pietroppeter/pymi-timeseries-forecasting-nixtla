import nimib, nimislides, myslides

template slideTitle* =
  slide:
    bigText: "Time Series Forecasting and [Nixtla Ecosystem](https://www.nixtla.io/)!"
    nbText: "[Python Milano](https://milano.python.it/) meetup"
    nbText: "_Milan, May 18th 2023_"
    nbText: "[github/pietroppeter](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)" # add links to github, twitter, mastodon

template slideMe* =
  slide:
    nbText: "### 👨‍👩‍👧 Me - Pietro Peterlongo"
    unorderedList:
      listItem: nbText: "**past**: Math (Pisa, Trieste), Climate Science (Paris), Cryptography (Trento)"
      listItem: nbText: "**now** (since 2015): Principal Data Scientist at [ToolsGroup](https://www.toolsgroup.com): Supply Chain Planning Software"
      listItem: nbText: "**Python**: started early 2000s, serious around 2015, my first presentation in... May 2023 ;)" 
      listItem: nbText: "...also active in Open Source with [Nim](https://nim-lang.org/)"
    speakerNote: """
started:
- when Dive Into Python (2000-2004) was one of the best resources to start with
- when matlab was far superior in a scientific context
2015-2016:
- when starting a new project with Python 2(.7) was something still somewhat reasonable
(amplifon python project in 2016!)
- there were some scientific libraries that still did not support python 3 I believe...
- recall that f-strings came out in 3.6 (december 2016!), we use to use as reference https://pyformat.info/
- and my first time at a Python Milano meetup was... uh... 2018? 2017?
"""

when isMainModule:
  myInit("intro.nim")
  slideTitle
  slideMe
  nbSave
