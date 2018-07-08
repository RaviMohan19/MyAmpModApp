# Simualtion App for Amplitude Modulation

## Introduction:

The following document is written with an intention to make the user understand the process of Amplitude Modulation. In communication systems including both Analog and Digital, a message carrying signal has to be transmitted over a long distance for reliable communication.

## Modulation:

Modulation is the process of strengthening the message signal with a carrier signal to transmit the signal over long distances. Here in this shiny app, an Modulation with respect to "Amplitude" is performed. A message signal could be mathematically represented as a sine wave

## Amplitude Modulation:

A message signal or in technlogical terms referred also as "Baseband Signal"
consists of the following components

- Amplitude measured in Volts
- Frequency measured in HZ or frequency is interpreted as reciprocal of time in seconds
- Phase measured in degrees

## Expressions for R Representation

Message is represented by 

**msg = a * sin(omega * t)**

here omega is equal to the product of twice the pi and message frequency 
**2 * 3.14 * f**

Carrier signal aids in transmitting the message signal, it is represnted as

**carrier = a * sin(omega * t)**

here omega is equal to the product of twice the pi and carrier frequency 
**2 * 3.14 * f**, for experimental purposes carrier frequency is set as 1MHz or 1000000 Hz.

Now the Amplitude Modulation is represented as
**am_wave** <- **((1 + msg) * carrier)**


## Executing the App locally:

Required Packages for the app to run
- ggplot2 : library(ggplot2)
- shiny: library(shiny)
- for installing shiny use the following script *install.packages("shiny", dependencies = TRUE)*
- for installing ggplot2 use the following script *install.packages("ggplot2", dependencies = TRUE)*

Download the **ui.R** and **server.R** locally to your system with the above mentioned packages being installed


## Inputs: 

t = Time in seconds
a = Amplitude in Volts
f = Frequency in Hertz

## Outputs:

An Amplitude Modulated wave based on the inputs time - t, amplitude - a, frequency -f.

## Variables being evaluated on the server side using the inputs:

- *"msg"* is message signal,
- *"carrier"* is carrier signal,
- *car_f* is carrier frequency, here in the app is set to 1 MHz, amplitude is set to 5 Volts for carrier signal.

## Summary and Future Work:

At Present, this app plots a Amplitude Modulated Wave for a message signal with time period varying between 1 sec to 60 sec,
amplitude for message signal is between 1 to 5 volts,frequency for message signal is between 100 Hz to 1000 Hz. This App performs Modulation with respect to Amplitude.Future work includes calculation of power to transmit the message signal relevant with hardware requirements and Demodulation of the modulated wave, also Modulation with respect to frequency and phase will also be performed.


