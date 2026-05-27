# [ZP] Give Packs

A simple admin utility plugin for **Zombie Plague** servers in **Counter-Strike 1.6**.
Allows administrators to give ```Ammo Packs``` to players using console commands.

## Plugin Information

  - **Name**: [ZP] Give Packs
  - **Version**: 1.0
  - **Author**: DadoDz
  - **Game**: Counter-Strike 1.6
  - **Mod**: Zombie Plague

## Requirements

- AMX Mod X **1.9+**
- Zombie Plague Mod

## Installation
1. Place ```zp_give_packs.sma``` in: **addons/amxmodx/scripting/**
2. Compile it with your AMXX compiler.
3. Place the compiled .amxx file in: **addons/amxmodx/plugins/**
4. Add this line to your plugins.ini: ```zp_give_packs.amxx```
5. Restart your server.

## Required Natives
This plugin uses custom natives to get and set ammo packs, you must change these natives based on your zombie plague version.
- ```native zp_get_user_packs(index)```
- ```native zp_set_user_packs(index, packs)```

## Commands

| Console Command                 | Description     |
|---------------------------------|-----------------|
| `zp_packs` `<name>` `<amount>`  | Give Ammo Packs |

## Notice
> This plugin was originally created for my own server.
The concept already exists, this is simply my own lightweight implementation adapted for **Zombie Plague** servers.
