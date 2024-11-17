[![Release](https://github.com/notnotmelon/enable-all-feature-flags/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/notnotmelon/enable-all-feature-flags/actions/workflows/release.yml)

### Enable all Feature Flags

A simple mod to enable the following feature flags in Factorio 2.0

```lua

  "quality_required": true,
  "space_travel_required": true,
  "spoiling_required": true,
  "freezing_required": true,
  "segmented_units_required": true,
  "expansion_shaders_required": true,
  "rail_bridges_required": true

```

---

### Why?

The use-case for this mod is for another mod to add an optional dependancy.
This way the dependant mod could either use DLC features, or not use DLC features based on if the player owns the DLC.