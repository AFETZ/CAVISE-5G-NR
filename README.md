# Reproducible Scenario Pack

This repository contains only the scenario layer needed to reproduce two experiments:

- `truck_lane_change_scenario`
- `intersection_crash_scenario`

It is intentionally slim: you apply this overlay on top of the base simulator repository and run ready-made scripts.

## 1) Prepare base workspace

```bash
scripts/bootstrap_base.sh
```

Default target workspace:

- `$HOME/NEWWAY_repro_base`

You can pass a custom directory:

```bash
scripts/bootstrap_base.sh /path/to/base_workspace
```

## 2) Start channel server (GPU)

Start your channel server in a separate terminal (same way as in your local setup).

## 3) Run experiments

Truck lane-change experiment:

```bash
scripts/run_truck_lane_change.sh
```

Intersection crash experiment:

```bash
scripts/run_intersection_crash.sh
```

Outputs are written to `$HOME/NEWWAY_runs/<date>/...`.

## Included artifacts

`overlay/my_scenarios/*/output/` contains frozen CSV outputs used for figures and thesis tables.
