# HPE Aruba CX OS CLI CheatSheet

A comprehensive command-line interface (CLI) cheat sheet and reference guide for network engineers and administrators working with **HPE Aruba CX OS (AOS-CX)** switches.

## Table of Contents

- [Overview](#overview)
- [Quick Reference Categories](#quick-reference-categories)
- [Core Command Examples](#core-command-examples)

---

## Overview

Managing modern enterprise networks running ArubaOS-CX requires familiarity with its modern modular architecture and CLI structure. This repository serves as a quick, ready-to-use reference guide for everyday switch configuration, troubleshooting, interface management, and system monitoring tasks on Aruba CX switches.

---

## Quick Reference Categories

The cheat sheet covers essential operational domains for AOS-CX:

**System & Management**: Basic setup, hostname configuration, user accounts, system clock, and firmware management (`boot image`).

**Interface Configuration**: Port settings, description, speed/duplex settings, administrative states (`enable`/`disable`), and breakout configurations.

**VLANs & Layer 2**: Creating VLANs, assigning access/trunk ports, Spanning Tree Protocol (STP), and Link Aggregation Groups (LAG / LACP).

**Routing & Layer 3**: Static routing, OSPFv2/v3, BGP configurations, and Virtual Routing and Forwarding (VRF).

**Security & Access Control**: Access Control Lists (ACLs), port security, 802.1X authentication, and SSH/HTTPS hardening.

**Monitoring & Troubleshooting**: Diagnostics (`ping`, `traceroute`), interface packet counters, event logs, and support file generation.

---

## Core Command Examples

Here are a few foundational AOS-CX commands frequently used during day-to-day operations:

### 1. Entering Configuration Mode & Saving

```text
switch# configure terminal
switch(config)# hostname Core-Switch-01
Core-Switch-01(config)# write memory
```

### 2. Configuring an Interface

```text
Core-Switch-01(config)# interface 1/1/1
Core-Switch-01(if-1/1/1)# description Uplink-to-Router
Core-Switch-01(if-1/1/1)# no shutdown
Core-Switch-01(if-1/1/1)# vlan trunk allowed all
```

### 3. Checking System Status and Interfaces

```text
Core-Switch-01# show system
Core-Switch-01# show interface brief
Core-Switch-01# show mac-address
```
