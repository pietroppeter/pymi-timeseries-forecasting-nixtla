

## title, abstract, author

title: Time Series Forecasting and Nixtla Ecosystem

abstract:
Predicting the future, or - as Data Scientist like to call it - Time Series Forecasting,
is a time-honored activity where people get paid to be wrong.
We will first review some of the basic concepts and methods for creating and evaluating predictions,
then we will explore Nixtla's open source ecosystem:
a recently released set of libraries providing state-of-the-art implementations for most classical and modern forecasting technologies
(statistical, hierarchical, machine learning, neural)
that has the potential to become the reference framework in the field.

author:
Pietro Peterlongo is a Data Scientist at ToolsGroup.
Since the company sells software to forecast demand (and optimize inventory),
he is supposed to be able to pretend to know about time series forecasting.

## todo

- [x] add notes
- [x] add and run nimislides showcase to keep as reference
- [x] start slides
  - [x] pick a (dark) theme: moon
- [x] code structure
  - [x] myslides.nim: embrace nimconf22-nimib setup
  - [x] refactor index into intro
  - [x] refactor timeseries
  - [ ] refactor columns around using empty columns?
- [ ] my slides
  - [x] emptyColumn
  - [ ] center slideTweet
- [x] python environment? kaggle notebooks!!!
- [ ] notebooks
  - [x] Intro to NixtlaVerse (or Nixtla Ecosystem) - Part 1 - Basic API
    - [ ] adjust title, summary and link to part 2
  - [ ] Intro to NixtlaVerse - Part 2 - Making better forecasts
    - [x] prep notebook 1: strategy to reduce M5 datasets
    - [ ] data + exploration: load M5, extract subset + basic exploration
      - use tsfeatures and datasetsforecast
    - [ ] cross validate AutoArima vs ETS (vs Naive)
    - [ ] exogenous variables
      - [ ] AutoArimaX
      - [ ] mlforecast
        - [ ] which features/strategy?
      - [ ] add to evaluation
    - [ ] hierarchical forecast (and add to evaluation)
    - [ ] add neural forecast?
- [ ] finalize index

slides:
- [ ] intro
  - [x] title
  - [x] me - first draft
    - [ ] a bit more about ToolsGroup?
- [ ] time series
  - [x] WHY generic intro/motivation/use case
    - [x] what is
    - [x] domains
    - [x] how to (methods)
    - [x] dealing with uncertainity
    - [x] focus case supply chain: demand forecast and inventory optimization
  - [ ] WHAT crash course in time series forecasting
    - [x] methodology
      - [ ] use list that appears one by one
    - [x] baseline - naive forecast and baseline methods
    - [x] metrics
      - [x] structure
      - [ ] improve layout
    - [x] cross validation
    - [ ] simple exponential smoothing
    - [x] decomposition (additive and multiplicative)
      - [ ] fix layout
    - [x] ETS
    - [ ] maybe
      - [ ] Arima
      - [ ] Arima and ETS: Venn Diagram
      - [ ] Auto methods
    - [ ] stationary vs not: examples from Hyndman
    - [ ] hierarchical forecast reconciliation
      - [ ] replace image with mermaid
    - [ ] advanced themes
      - [ ] probabilistic forecast
      - [ ] how to use ml (generic regressor)
    - [ ] example benchmark: M5 competition
      - [ ] aggregate metric?
  - [x] refs
    - [x] hyndman's book
    - [x] konrad and nespoli?
    - [x] python time series libraries
  - [ ] meme
    - [ ] charlie chaplin distracted by R
    - [ ] michael j fox distracted by Nixtla
- [x] nixtla
  - [x] nixtla overview
    - [x] twitter history
    - [x] youtube (neural)
    - [x] team
    - [x] strengths (why?) + risks
  - [x] code overview
    - [ ] nixtla - statsforecast
      - [x] basic api - kaggle notebook
      - [ ] multi time series + cross validation - kaggle notebook
      - [ ] api as code in slides?
    - [ ] nixta - mlforecast
      - [x] basic api
      - [ ] split in 2 + add probabilistic?
    - [ ] nixta - hierarchicalforecast
      - [ ] basic api
- [ ] thank you slide
- [ ] source code

nice to haves:
- [ ] how to have bigger plots? (esp height)
- [ ] compare arima and ets on half passengers time series (to see multiplicative coefficients)
- [ ] ask in nixtla
  - why unique_ids as index and monthly forecast has end of month?
  - will datasets become a repo by itself?
  - will plot become not linked from stasforecast?
  - why blog posts not accessible from home page?
  - unclear how exogenous stuff plot was produced
- [ ] corrections for Nixtla
  - signature of datasetsforecast.m5.M5 static dataset has not ds in columns: https://github.com/Nixtla/datasetsforecast/blob/main/nbs/m5.ipynb
  - StatsForecast.plot messes u y axis if it has an additional categorical column!
  - StatsForecast.plot does not allow to plot more than 8? cannot plot 10?
  - Method section in hierarchicalforecast lib is empty
- [ ] a streamlit app to explore data and forecasts (of M5 competition and others)
- [ ] a "thank you for listening slide" with some p5nim art!
  - https://openprocessing.org/sketch/1240159
  - particle text effects: https://openprocessing.org/sketch/377231


## (old) content draft

- me
  - toolsgroup: demand forecasting in supply chain (ML)
  - nim
- time series forecasting
  - why
  - use cases
    - demand forecasting and inventory optimization
  - plot
    - with matplotlib/seaborn: passengers
    - with vegalite: weather
    - with plotly: demand (M5)
  - basics
    - naive
    - exp smoothing
    - decomposition: additive/multiplicative
  - benchmarking and evaluation
    - M4 and M5
    - metrics
  - list of timeseries libraries (R ecosystem, statsmodels, gluonts, sktime, darts, prophet, ... nixtla)
- nixtla
  - ecosystem overview
  - business: prediction at scale
  - statsforecast
  - hierarchical forecast
  - tsfeatures (maybe not)
  - mlforecast (lightgbm? mention conformal prediction)
  - neuralforecast (deepar?)
- prophet and the zillow story? likely as a follow up slide
- references
  - hyndman (IT!)
  - banachewicz on kaggle/youtube
  - articles by Nixtla
  - articles on prophet?

## resources on forecasting

- Hyndman, Forecasting: Principles and Practice https://otexts.com/fpp3/
- kaggle, Store Sales - Time Series Forecasting: https://www.kaggle.com/competitions/store-sales-time-series-forecasting
- course series by Konrad Banchewicz (organized by Abishek Thakur): https://www.youtube.com/watch?v=kAI67Sz92-s&list=RDCMUCBPRJjIWfyNG4X-CRbnv78A&index=19
  - Kaggle code: https://www.kaggle.com/code/konradb/ts-0-the-basics/notebook
- m5 competition:
  - kaggle https://www.kaggle.com/c/m5-forecasting-accuracy
- Thread by mark Tenenholtz, TOC of his course: https://twitter.com/marktenenholtz/status/1633090131514241026?s=46&t=rgwKilBEovDNcjjJFTIcKg
- alternatives python libraries listed here: https://robjhyndman.com/hyndsight/python_time_series.html
- Awesome time series: https://github.com/lmmentel/awesome-time-series
  - TIL there is a tidy verse for timeseries and there is a framework called Etna by tinkoff
- article by Makridakis (learnings from M5)
