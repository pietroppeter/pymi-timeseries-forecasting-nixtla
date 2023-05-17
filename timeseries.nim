import nimib, nimiSlides, myslides
import memes
export memes

template slideWhatIsTimeSeriesForecasting* =
  slide:
    nbText "### What is Time Series Forecasting?"
    columns:
      column:
        nbText: """
|t | y |
|---|---:|
|0 | 5|
|1 | 35|
|2 | 15|
|3 | 23|
|4 | 25|
|5 | 30|
|6 | ?|
"""
      column:
        nbText: """
Given:

$$y_t$$
$$t=0, 1, \ldots, T$$

Provide:

$\hat{y}_{T + 1}$

(+ confidence)
"""
    speakerNote: """
- time series is confirmed participants in python milano meetup
- see https://www.meetup.com/it-IT/python-milano/events/
- actual value to forecast is for current meetup: 26
"""
#[
"""
t  | 0 | 1 | 2
---|---|---|---|
y  | 5 |35 |15 |
"""

]#        

template slideDomainsOfTimeSeriesForecasting* =
  slide:
    nbText: "### Domains of applications"
    unorderedList:
      listItem: nbText: "events planning (how many?)"
      listItem: nbText: "weather forecasting (sun or rain?)"
      listItem: nbText: "economics (growth next year?)"
      listItem: nbText: "control theory (reactor will heat?)"
      listItem: nbText: "finance (stock up or down?)"
      listItem: nbText: "web analytics (how much traffic?)"
      listItem: nbText: "energy (how much consumption?)"
      listItem: nbText: "supply chain (how many sales?)"
    speakerNote: """
- note there is also an implicit "why?"
- to take decisions!
  - which room? how much food?
  - plan hiking trip or not?
  - set aside money?
  - need to cool down the reactor?
  - invest or not?
  - turn on or off a plant?
  - how much to buy, produce, stock and where?
"""

template slideHowToForecast* =
  slide:
    nbText: "### How to forecast"
    unorderedList:
      listItem: nbText: "equations with $t$ (ODEs, PDEs, ...)"
      listItem: nbText: "judgmental forecasts"
      listItem: nbText: "statistical forecasting"
      unorderedList:
        listItem: nbText: "classical (ETS, ARIMA, ...)"
        listItem: nbText: "ml (random forest, LGBM, ...)"
        listItem: nbText: "neural (NBEATS, DeepAR, ...)"
      listItem: nbText: "ensemble forecasting"
    speakerNote: """
"bayesian" (prophet) could be a subclass of classical
"""

template slideUncertainty* =
  slide:
    nbText: "### Dealing with Uncertainity"
    nbImage("images/probability-distributions.png")
    speakerNote: """
- demand forecasting and inventory optimization
- safety stock
- demand planner ("paid to be wrong" quote) and supply planner
- Millions of timeseries (SKU/Locations or Areas)
"""

template slideSupplyChain* =
  slide:
    nbText: "### Supply Chain"
    nbImage("images/supply-chain-network-flows.png")

template slideRefHyndman* =
  slide:
    nbText: "### FPP: Forecasting Principles and Practices"
    columns:
      column:
        nbImage("images/fpp3_front_cover.jpg")
      column:
        nbRawHtml: "<br>"
        nbText: """
by **Rob J Hyndman** and George Athanasopoulos

Monash University, Australia

3rd edition, May 2021

**free!** [otexts.com/fpp3/](https://otexts.com/fpp3/)

**R-based**
"""

template slideOtherRefs* =
  slideText: """### Other references

- Youtube (+ Kaggle) course by Konrad Banchewicz (Feb 2022): [video 1](https://www.youtube.com/watch?v=kAI67Sz92-s&list=RDCMUCBPRJjIWfyNG4X-CRbnv78A&index=20), [kaggle 0](https://www.kaggle.com/code/konradb/ts-0-the-basics/notebook)
- [Time Series Analytics and Forecasting](https://www.forecaster.guru/time-series-analytics-and-forecasting.html), Lectures by Lorenzo Nespoli (May 2023) 
- [Demand Forecasting con Serie Temporali gerarchiche](https://open.spotify.com/episode/4RfNlSNsjdg2SgAeXhx9jt?si=868b049dce204ecc), intervista Pythonista Ep10 (Nov 2021)

"""

template slideRefPythonLibraries* =
  slide:
    nbText: """
### Python Libraries for Timeseries

[Hyndman's suggestions](https://robjhyndman.com/hyndsight/python_time_series.html)

> The best Python implementations for my time series methods are available from [Nixtla](https://github.com/nixtla).

- [statsmodels](https://www.statsmodels.org/stable/index.html)
- [sktime](http://www.sktime.net/en/latest/)
- [skforecast](https://github.com/JoaquinAmatRodrigo/skforecast)
- [Darts](https://unit8co.github.io/darts/)
- [Prophet](https://facebook.github.io/prophet/) (from Facebook)
- [GluonTS](https://ts.gluon.ai/stable/) (from Amazon)
- [Merlion](https://github.com/salesforce/Merlion) (from Salesforce)
- ..., [awesome-time-series](https://github.com/lmmentel/awesome-time-series)
"""

template slideMethodology* =
  slideText: """### Methodology
1. think about your why
2. gather data (process, explore)
3. baseline
4. measure
5. improve
6. restart from step 4 or less 
"""

template slideBaseline* =
  slideText: """## Baseline
- Historical average
- Naive (aka persistence in weather forecasting)
- Moving Average
- Seasonal Naive
- ..., existing forecast (benchmark)
"""

template slideMetrics* =
  slide:
    nbText: "### Metrics"
    columns:
      column:
        myImage "metrics_forecasts_plot.png"
        nbText: """
1. low
2. median
3. average
"""
        nbTextSmall "from [Forecast KPIs: RMSE, MAE, MAPE & Bias](https://towardsdatascience.com/forecast-kpi-rmse-mae-mape-bias-cdc5703d242d)"

      column:
        nbText: """

$$
  \text{MAPE} = \frac{1}{N} \Sigma \frac{\left| e_t \right|}{d_t}
$$ 

$$
  \text{MAE} = \frac{1}{N} \Sigma \left| e_t \right|
$$ 

$$
  \text{RMSE} = \sqrt{\frac{1}{N} \Sigma e_t^2}
$$ 

"""
        myImage "metrics_results_table.png"

template slideBacktesting* =
  slide:
    nbText: "### Cross Validation (aka Backtesting)"
    myImage "ChainedWindows.gif"

template slideDecomposition* =
  slide:
    #nbText: "### Decomposition"
    myImage "emplstl-1.png"

template slideETS* =
  slide:
    nbText: "### ETS (Error, Trend, Seasonal)"
    myImage "statespacemodels-1.png"
    nbText: "AutoETS performs automatic model selection"

template slidesWhy* =
  slide:
    sectionSlide "Why Forecasting?"
    slideWhatIsTimeSeriesForecasting
    slideDomainsOfTimeSeriesForecasting
    slideHowToForecast
    slideUncertainty
    slideSupplyChain

template slidesCrashCourse* =
  slide:
    sectionSlide "A Crash Course"
    slideMethodology
    slideBaseline
    slideMetrics
    slideBacktesting
    slideDecomposition
    slideETS

template slidesRefs* =
  slide:
    sectionSlide "References"
    slideRefHyndman
    slideOtherRefs
    slideRefPythonLibraries
    slideMemeChaplin
    slideMemeReturn


when isMainModule:
  myInit("timeseries.nim")
  slidesWhy
  slidesCrashCourse
  slidesRefs
  nbSave
