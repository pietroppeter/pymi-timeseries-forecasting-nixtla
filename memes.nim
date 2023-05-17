
import nimib, nimislides, myslides

template slideMemeChaplin* =
  slide:
    nbImage "https://i.imgflip.com/7m9hpj.jpg"
    #nbRawHtml """<a href="https://imgflip.com/i/7m9hpj"><img src="https://i.imgflip.com/7m9hpj.jpg" title="made at imgflip.com"/></a><div><a href="https://imgflip.com/memegenerator">from Imgflip Meme Generator</a></div>"""

template slideMemeReturn* =
  slide:
    nbImage "https://i.imgflip.com/7m9iqx.jpg"

when isMainModule:
  myInit("memes.nim")
  slideMemeChaplin
  slideMemeReturn
  nbSave
