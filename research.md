---
title: Research
permalink: /research/
---

# Research

My long-term goal is to build *AI-native wireless systems*: systems in which machine learning is not an afterthought bolted onto a traditional radio stack, but a first-class component that understands, predicts, and adapts to the physical world. This page sketches the vision behind each thrust; concrete papers are listed on the [Publications](/publications/) page.

## Wireless Digital Twin: Closing the Radio–Vision Loop

Radio waves and light are both electromagnetic waves, yet computer vision has powerful learned scene representations while wireless systems still rely on hand-crafted channel models. I work on closing this gap by building **wireless digital twins**: neural representations of the radio environment that are learned from measurements and grounded in physics.

Our work on **NeRF2** (MobiCom'23, Best Paper Runner-up) introduced neural radiance fields to the RF domain, learning how a scene scatters and attenuates radio signals. **RadioTwin** (DySPAN'25) takes the next step, building digital twins of building materials that predict wideband, cross-link, and cross-band wireless channels. The vision is a closed loop between the radio world and its digital replica: the twin predicts the channel, the radio measures reality, and the discrepancy refines the twin, enabling intelligent spectrum use, localization, and network planning in NextG systems.

## IoT & Backscatter Systems

Billions of deployed devices, RFID tags, NFC chips, barcodes, and acoustic transducers, were each designed for one narrow task. I ask how far we can stretch them beyond their original specifications. This line of work spans cross-technology communication (**Cross-Frequency Communication**, MobiCom'18; **MagCode**, MobiCom'23), backscatter networks embedded in infrastructure (**In-Concrete Backscatter**, SIGCOMM'22), spatially controllable RFID identification (**RFID+**, NSDI'24), cross-medium networking with mechanical antennas (MobiCom'24), and acoustic sensing on everyday devices (**LeakyFeeder**, SenSys'25).

## Privacy & Security of Wireless Systems

Every new sensing capability is also a new attack surface. We have shown that wireless chargers can be induced to issue inaudible voice commands (**IEEE S&P'23**) and that wired audio can be eavesdropped wirelessly (**RF-Parrot**, INFOCOM'24). On the defense side, we build physical-layer fingerprinting and privacy protection, including **RF-DNA** (MobiCom'22), **NFChain** (INFOCOM'23), and metasurface-based motion privacy protection (**MetaRFence**, TMC'26). The goal is to understand physical-layer threats before adversaries do, and to design defenses that work on commodity hardware.

## Emerging Direction: Embodied & Spatial AI

Recently, I am extending these ideas toward AR/VR glasses and robotics: efficient physical AI and 3D vision-language models for spatial computing, and neural ray tracing that lets machines reason about the radio and acoustic world the way vision models reason about images.
