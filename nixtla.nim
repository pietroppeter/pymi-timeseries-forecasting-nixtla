import nimib, nimiSlides, myslides

template slideNixtlaOpenSourceEcosystem* =
  slide:
    nbImage("images/nixtla-homepage-offering.PNG")
    # which are the libraries provided and which we will go through

template slideWhyNixtla* =
  slideText: """
### Why Nixtla?

- open source
- api
- performance
- vision

**Risks**: moving fast, iterating on business model
"""
#[
- modern python (type hints, nbdev)
- algorithms (classical, ml, neural)
- probabilistic (classical, conformal)
- benchmarks
- forecasting pipelines
- scale
- breadth (hierarchical, tsfeatures)
- emojis
- endorsements
]#
# meme python vs R, python point of view: https://twitter.com/Jiminy_Kirket/status/1429867059333287941
# meme python vs R, R point of view: https://twitter.com/ChelseaParlett/status/1461173106081296388
# very competent implementations!

# risks:
# - moving fast (some documents are - slightly - out of date)
# - still building their business model

# after this I should have some tweets to quote with various claims by Nixtla
# did a webinar on M5 in our group on Feb 23 2022!
# 2021:
# Oct 15: MVP launched Open Source Forecasting Pipeline (M5): https://twitter.com/fede_gr/status/1449091329837965318?s=20
# (nixtla repo starts Oct 2021, statsforecast Nov 2021, neuralforecast and mlforecast start Apr 2021)
# Oct 23: mlforecast released: https://twitter.com/fede_gr/status/1452712825596616711?s=20
# Dec 7: Toward Data Science article on statsforecast: https://twitter.com/TDataScience/status/1468058437921775616?s=20
# 2022:
# Jan 24 pydataNYC presentation by Max: https://www.youtube.com/watch?v=iKW-WQO1d1A
# Feb 22: announcement of statsforecast: https://twitter.com/fede_gr/status/1496256854674001925?s=20
# (my first like on a tweet by Fede)
# May 3: 1M time series in 30 minutes with Ray: https://twitter.com/fede_gr/status/1521500565406167042?s=20
# May 10: AutoArima faster and more accurate than FB-prophet: https://twitter.com/fede_gr/status/1524046166249324546?s=20
# Jul 19: fastest ETS: https://twitter.com/fede_gr/status/1549475612485722113?s=20
# Jul 26: HierarchicalForecast: https://twitter.com/fede_gr/status/1551980414788669441?s=20
# (recognizes Hyndman, as usual, but also sktime, darts, scikit-hts, pyhts)
# Aug 17: ETS more accurate and faster than NeuralProphet: https://twitter.com/fede_gr/status/1559943993726832645?s=20
# (retweet by Sean Taylor)
# (Oct 3: quarto pub by sean taylor, reveals he is an advisor: https://twitter.com/seanjtaylor/status/1576971015149604864?s=20)
# (Oct 6: endorsement by Konrad Banachewicz: https://twitter.com/nixtlainc/status/1578062271254765570?s=20)
# (Nov 17: endorsement by Jeremy Howard (because of nbdev): https://twitter.com/jeremyphoward/status/1593022419278893056?s=20)
# (Nov 25: milestone 1 million download: https://twitter.com/MergenthalerMax/status/1596217596248047616?s=20)
# (Nov 25: new endorsement by Sean Taylor: https://twitter.com/seanjtaylor/status/1596228352305602560?s=20)
# Dec: release of plot method
# 2023:
# Feb 22: new release of mlforecast with conformal prediction: https://twitter.com/nixtlainc/status/1628141883514912793?s=20
# May 11: published Data Council talk on hierarchical forecasting: https://www.youtube.com/watch?v=lotzOJuwxYs&list=PLAesBe-zAQmF-GpvZ3ba5YpVzoVbgzl8M&index=21

#[
  - youtube video with team (Jul 22): https://youtu.be/i7JNt5qN2Sg?t=35
  - hierarchical forecasting (May 23): https://www.youtube.com/watch?v=lotzOJuwxYs&list=PLAesBe-zAQmF-GpvZ3ba5YpVzoVbgzl8M&index=22
]#

template slideNotebookStatsForecastQuickstart* =
  slide:
    kaggleNotebook("pietroppeter/nixtla-statsforecast-quickstart")

template slideNotebookStatsForecastMore* =
  slide:
    kaggleNotebook("pietroppeter/nixtla2again")

template slideMlForecastApi* =
  slide:
    pyAnimateCode(""): hlPy"""
import lightgbm as lgbm
from mlforecast import MLForecast
from window_ops.expanding import expanding_mean
from window_ops.rolling import rolling_mean

mlf = MLForecast(
    models = [lgbm.LGBMRegressor()], # list of models
    freq = 'MS', # frequency of time series: month start
    differences=[12], # differences to apply to target
    lags=[1, 12], # lags to use as feature
    lag_transforms=( # lag transformation to apply to specific lags
        1: [expanding_mean],
        12: [(rolling_mean, 24)],
    )
)
"""
    nbText: "A declarative feature engineering pipeline!"

template slideMlForecastApiPredict* =
  slide:
    pyAnimateCode(""): hlPy"""
mlf.fit(df)
forecast_df = mlf.predict(12, levels=[90])
"""
    myImage "hierarchical-predict-bad-quality.png"

template tweetPipeline* =
  slideTweet """<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">Hi! At nixtla, we have just launched our MVP: Open Source Forecasting Pipeline. We want to democratize access to state-of-the-art forecasting models. Feedback and comments are welcome! <a href="https://t.co/1y7ttPYNgy">https://t.co/1y7ttPYNgy</a></p>&mdash; fede garza (they/them) (@fede_gr) <a href="https://twitter.com/fede_gr/status/1449091329837965318?ref_src=twsrc%5Etfw">October 15, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>"""

template tweetStatsRelease* =
  slideTweet """<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">I&#39;m thrilled to announce that we&#39;re releasing the fastest <a href="https://twitter.com/hashtag/autoarima?src=hash&amp;ref_src=twsrc%5Etfw">#autoarima</a> implementation for <a href="https://twitter.com/hashtag/Python?src=hash&amp;ref_src=twsrc%5Etfw">#Python</a> today! 😍<br><br>It is a mirror implementation of <a href="https://twitter.com/robjhyndman?ref_src=twsrc%5Etfw">@robjhyndman</a>&#39;s <a href="https://twitter.com/hashtag/autoarima?src=hash&amp;ref_src=twsrc%5Etfw">#autoarima</a> (R) and it is optimized using <a href="https://twitter.com/numba_jit?ref_src=twsrc%5Etfw">@numba_jit</a>. It is 20x faster than pmdarima and <a href="https://twitter.com/MetaAI?ref_src=twsrc%5Etfw">@MetaAI</a>&#39;s Prophet. 😎<br><br>🧵<a href="https://twitter.com/nixtlainc?ref_src=twsrc%5Etfw">@nixtlainc</a></p>&mdash; fede garza (they/them) (@fede_gr) <a href="https://twitter.com/fede_gr/status/1496256854674001925?ref_src=twsrc%5Etfw">February 22, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>"""

template tweetFastWithRay* =
  slideTweet """<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">Forecast 1M time series in 30 minutes. <a href="https://twitter.com/nixtlainc?ref_src=twsrc%5Etfw">@nixtlainc</a> + <a href="https://twitter.com/raydistributed?ref_src=twsrc%5Etfw">@raydistributed</a> + <a href="https://twitter.com/numba_jit?ref_src=twsrc%5Etfw">@numba_jit</a> = 🤩 🚀 ⚡<br><br>Recently, we launched the fastest version of <a href="https://twitter.com/hashtag/AutoARIMA?src=hash&amp;ref_src=twsrc%5Etfw">#AutoARIMA</a> for <a href="https://twitter.com/hashtag/python?src=hash&amp;ref_src=twsrc%5Etfw">#python</a>. Now you can scale your computation horizontally for millions of time series, leveraging the power of <a href="https://twitter.com/raydistributed?ref_src=twsrc%5Etfw">@raydistributed</a> <a href="https://t.co/zkfBL0FYJ4">pic.twitter.com/zkfBL0FYJ4</a></p>&mdash; fede garza (they/them) (@fede_gr) <a href="https://twitter.com/fede_gr/status/1521500565406167042?ref_src=twsrc%5Etfw">May 3, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>"""

template tweetHierarchicalRelease* =
  slideTweet """<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">🎉Today at <a href="https://twitter.com/nixtlainc?ref_src=twsrc%5Etfw">@nixtlainc</a>, we are excited to release our new 👑HierarchicalForecast library. 🔥<br><br>You can simply reconcile forecasts for hierarchical problems using statistical approaches such as Bottom Up, Top Down, Middle Out, Minimum Trace, and ERM. <a href="https://twitter.com/hashtag/Python?src=hash&amp;ref_src=twsrc%5Etfw">#Python</a> <a href="https://twitter.com/hashtag/Forecasting?src=hash&amp;ref_src=twsrc%5Etfw">#Forecasting</a></p>&mdash; fede garza (they/them) (@fede_gr) <a href="https://twitter.com/fede_gr/status/1551980414788669441?ref_src=twsrc%5Etfw">July 26, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>"""

template tweetConformalRelease* =
  slideTweet """<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">🎉 We are thrilled to announce the release of the latest version of mlforecast a <a href="https://twitter.com/hashtag/Python?src=hash&amp;ref_src=twsrc%5Etfw">#Python</a> library for Scalable <a href="https://twitter.com/hashtag/machinelearning?src=hash&amp;ref_src=twsrc%5Etfw">#machinelearning</a> 🤖 for <a href="https://twitter.com/hashtag/timeseries?src=hash&amp;ref_src=twsrc%5Etfw">#timeseries</a> <a href="https://twitter.com/hashtag/forecasting?src=hash&amp;ref_src=twsrc%5Etfw">#forecasting</a><br><br>🚀 This version comes with exciting new features that are sure to make forecasting even more efficient and accurate<br><br>🧵 <a href="https://t.co/UR7wM0DTUJ">pic.twitter.com/UR7wM0DTUJ</a></p>&mdash; nixtla (@nixtlainc) <a href="https://twitter.com/nixtlainc/status/1628141883514912793?ref_src=twsrc%5Etfw">February 21, 2023</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>"""

template videoDeepLearning* =
  slideYoutube """<iframe width="800" height="400" src="https://www.youtube.com/embed/i7JNt5qN2Sg?start=36" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>"""

template videoNeuralBridge* =
  slideYoutube """"""

template videoHierarchical* =
  slideYoutube """<iframe width="800" height="400" src="https://www.youtube.com/embed/lotzOJuwxYs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>"""

template slideTeam* =
  slide:
    nbText: "### Team"
    myImage "nixtla-team.png"

template slidesNixtlaVerse* =
  slide:
    sectionSlide "Nixtlaverse"
    slideNixtlaOpenSourceEcosystem
    slideNotebookStatsForecastQuickstart
    slideNotebookStatsForecastMore
    slideMlForecastApi
    slideMlForecastApiPredict

template slidesNixtlaStory* =
  slide:
    sectionSlide "Nixtla Story"
    tweetPipeline
    tweetStatsRelease
    tweetFastWithRay
    tweetHierarchicalRelease
    tweetConformalRelease
    videoDeepLearning
    #videoNeuralBridge
    videoHierarchical
    slideTeam
    slideWhyNixtla

when isMainModule:
  myInit("nixtla.nim")
  #slidesNixtlaStory
  slidesNixtlaVerse
  nbSave
