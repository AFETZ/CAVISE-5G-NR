#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASE_DIR="${BASE_DIR:-$HOME/NEWWAY_repro_base}"

"$ROOT/scripts/bootstrap_base.sh" "$BASE_DIR"

cd "$BASE_DIR"
SUMO_GUI="${SUMO_GUI:-1}" USE_SIONNA="${USE_SIONNA:-1}" SIONNA_SERVER_IP="${SIONNA_SERVER_IP:-127.0.0.1}" \
SIONNA_LOCAL_MACHINE="${SIONNA_LOCAL_MACHINE:-1}" PHY_ONLY="${PHY_ONLY:-1}" ALLOW_MANUAL_RX_DROP="${ALLOW_MANUAL_RX_DROP:-0}" \
my_scenarios/truck_lane_change_scenario/run.sh
