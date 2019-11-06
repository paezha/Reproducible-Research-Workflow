## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(packr)
library(tidyverse)

## ----load-data-----------------------------------------------------------
data("energy_and_emmisions")

## ----summary-data--------------------------------------------------------
summary(energy_and_emissions)

## ----call-help-----------------------------------------------------------
?energy_and_emissions

## ----energy-by-population------------------------------------------------
ggplot(data = energy_and_emissions, aes(x = Population, y = bblpd)) +
  geom_point()

## ----energy-per-capita---------------------------------------------------
energy_and_emissions <- energy_and_emissions %>%
  mutate(EPC = bblpd/Population)

## ------------------------------------------------------------------------
summary(energy_and_emissions$EPC)

## ----country-max-epc-----------------------------------------------------
energy_and_emissions[energy_and_emissions$EPC == max(energy_and_emissions$EPC), "Country"]

## ------------------------------------------------------------------------
ggplot(data = energy_and_emissions, aes(x = GDPPC, y = EPC)) +
  geom_point()

## ------------------------------------------------------------------------
cor(energy_and_emissions$GDPPC, energy_and_emissions$EPC)

