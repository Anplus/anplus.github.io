---
title: Research
permalink: /research/
---

# Research

Our group designs and builds wireless networking and mobile computing systems, validated through end-to-end implementations on custom hardware or off-the-shelf equipment. Below are the major research themes and selected publications from each project direction. The complete list lives on the [Publications](/publications/) page.

## AI-Native Wireless and Radio Twins

Future wireless systems will be extraordinarily complex, and we believe AI should be designed into them from the ground up rather than bolted on afterward — an *AI-native* approach in which learning is a first-class part of how a system communicates and senses. Much like robotics, wireless has to cope with data that is scarce, high-dimensional, and highly diverse, largely because the radio environment itself is so complex. Our work therefore starts by building *radio twins*: physics-grounded, learnable simulations of the wireless environment that can generate large amounts of synthetic data on demand. On top of this foundation, we design AI-native wireless networks and AI-native wireless sensing systems that can be trained from synthetic data, real-world measurements, or both. Because the radio twin is interactive, an agent that controls the network can act within the simulated environment, observe how the radio world responds, and improve from that feedback — closing the loop between simulation and reality.

<div class="thrust-works" markdown="1">
**Representative work**

- *Neural RF ray tracing* — [NeRF2](https://xpengzhao.github.io/NeRF2/) (MobiCom'23), RadioTwin (DySPAN'25), RIS-NeRF2 (INFOCOM'25 / TMC'26)
- *RL for antenna design* — ColiCode (MobiCom'21)
</div>

## Intelligent Sensing Systems

The same physical signals that carry data also carry rich information about the world they travel through. We build sensing systems that turn ordinary signals — radio, acoustic, and vibration — into an understanding of people, their activities, and their surroundings. This includes localizing devices and people indoors, fusing radio with vision so that radios can effectively "see," sensing fine-grained motion and gestures using the microphones and speakers already in everyday devices, and reading subtle vibrations that reveal what is happening around a sensor. The aim is perception that runs on commodity hardware, without instrumenting the environment.

<div class="thrust-works" markdown="1">
**Representative work**

- *AI for indoor localization* — LocGPT (MobiSys'24), [iArk](https://www.youtube.com/watch?v=-zrk6UHad0w) (MobiSys'20)
- *RF and vision* — RFCamera (SECON'20)
- *Acoustic sensing* — [Earbuds Gesture](https://leekyfeeder.github.io/results/) (SenSys'25), Ultrasound Localization (MobiCom'19), Acoustic Metasurface (RAL'25)
- *Vibration sensing* — mmWave (TMC'24), RFID (INFOCOM'19)
</div>

## Ubiquitous IoT Network

Billions of devices are already deployed around us — RFID tags, NFC chips, backscatter radios — yet each was designed for a single narrow task. We stretch these off-the-shelf, ultra-low-power devices far beyond their original specifications, turning them into a connectivity fabric that reaches places conventional networks cannot. This work makes RFID systems faster and more scalable, pushes communication into challenging media such as concrete, water, and the human body, and lets heterogeneous technologies that were never meant to interoperate — WiFi, RFID, NFC, AM radio, and cameras — talk directly to one another. The goal is ubiquitous, near-zero-power connectivity woven invisibly into the physical world.

<div class="thrust-works" markdown="1">
**Representative work**

- *Efficient RFID* — Spatial-Controlled RFID (NSDI'24), Hash Protocol (MobiCom'17, INFOCOM'19)
- *IoT in challenging media* — Air–Water (MobiCom'24), [In-Concrete](https://anplus.github.io/In-concrete-Backscatter/) (SIGCOMM'22), In-Vivo (INFOCOM'21)
- *Cross-technology communication* — WiFi–RFID (MobiCom'18), RFID–AM Radio (MobiCom'21), NFC–Camera (MobiCom'23)
</div>

## IoT Security

Every new sensing or communication capability is also a new attack surface. We study physical-layer threats in wireless and sensing systems before adversaries do, and turn that understanding into practical defenses that run on commodity hardware. On the offensive side, we reveal how ordinary devices can be coerced into leaking information or accepting forged signals through unintended physical channels. On the defensive side, we build physical-layer fingerprinting and metasurface-based protection that authenticate devices and shield users' privacy without requiring new hardware. Treating the physical layer as a first-class security boundary, this work aims to make pervasive wireless and IoT systems trustworthy by design.

<div class="thrust-works" markdown="1">
**Representative work**

- *Metasurface protection* — MetaRFence (INFOCOM'25, TMC'26)
- *Side-channel attacks* — [Audio Injection](https://anplus.github.io/magsound/) (S&P'23), [Eavesdropping](https://genglinwang.github.io/RFRA4audio/) (INFOCOM'24)
- *Hardware fingerprinting* — RF-DNA (MobiCom'22), NFC Fingerprinting (INFOCOM'23)
</div>
