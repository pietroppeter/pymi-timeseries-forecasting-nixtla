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
template slideNotebookStatsForecastQuickstart* =
  slide:
    kaggleNotebook("pietroppeter/nixtla-statsforecast-quickstart")

template slideMlForecast* =
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
mlf.fit(df)
forecast_df = mlf.predict(12)
"""

# could add a tweetroll: first tweet by Nixtla, tweet by Sean Taylor, ...
when isMainModule:
  myInit("nixtla.nim")
  #slidesNixtlaOverview
  #slideWhyNixtla
  #slideNotebookStatsForecastQuickstart
  slideMlForecast
  nbSave
