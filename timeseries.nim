import nimib, nimiSlides, myslides

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
    speakerNote: """
"bayesian" (prophet) could be a subclass of classical
"""

when isMainModule:
  myInit("timeseries.nim")
  # what is time series forecasting?
  #  - what is a time series
  #  example of confirmed participants at recent Python Milano events
  #slideWhatIsTimeSeriesForecasting
  #slideDomainsOfTimeSeriesForecasting
  slideHowToForecast
  nbSave