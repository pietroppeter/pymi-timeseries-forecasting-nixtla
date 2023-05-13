
## content draft

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

## todo

- [x] add notes
- [x] add and run nimislides showcase to keep as reference
- [x] start slides
  - [x] pick a (dark) theme: moon
  - [x] title slide
- [x] me slide - first draft
  - [ ] a bit more about ToolsGroup?
- [ ] code structure
  - [x] myslides.nim: embrace nimconf22-nimib setup
  - [x] refactor index into intro
- [x] python environment? kaggle notebooks!!!
- [ ] "agenda" slide?
- [ ] time series forecasting slides
  - [ ] why
    - [ ] demand forecast and inventory optimization
  - [ ] basic concepts
    - [ ] basic terms
    - [ ] naive forecast
    - [ ] decomposition
    - [ ] stats models: Arima and Ets
  - [ ] benchmarking and evaluation
    - [ ] M competitions
  - [ ] overview: other time series libraries
- [ ] nixtla slides
  - [ ] nixtla overview
    - [x] structure
    - [ ] ecosystem overview
    - [ ] history, business model, team, strengths
  - [ ] nixta - statsforecast
- [ ] ref slides
- [ ] notebooks
  - [x] Intro to NixtlaVerse (or Nixtla Ecosystem) - Part 1 - Basic API
    - [ ] adjust title, summary and link to part 2
  - [ ] Intro to NixtlaVerse - Part 2 - Making better forecasts

nice to haves:
- [ ] compare arima and ets on half passengers time series (to see multiplicative coefficients)
- [ ] ask in nixtla
  - why unique_ids as index and monthly forecast has end of month?
  - will datasets become a repo by itself?
  - will plot become not linked from stasforecast?
- [ ] a thank you for listening slide with some p5nim art!

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
