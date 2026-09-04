extends Node 

### - EVENT BUS
# Central de eventos globais


# Turn Signals
signal turn_started_cycle(cycle_number: int)
signal turn_ended_cycle(cycle_number: int)
signal turn_started_unit(unit_id: int)
signal turn_ended_unit(unit_id: int)

# Unit Signals
signal unit_hovered(unit_id: int)
signal unit_unhovered(unit_id: int)
signal unit_selected(unit_id: int)
signal unit_deselected(unit_id: int)

signal unit_moved(unit_id: int, new_position: Vector2)
signal unit_damaged(unit_id: int, damage_amount: int)
signal unit_destroyed(unit_id: int)

# Unit Resources Signals
signal unit_ap_changed(unit_id: int, ap: int)
signal unit_mp_changed(unit_id: int, mp: int)
signal unit_hp_changed(unit_id: int, hp: int)

# Phase Signals
signal phase_changed(new_phase: String)
signal action_executed(action_id: String, target_id: int)

# UI Signals
signal battle_log_message(message: String)

# Cursor/grid Signals
signal cursor_moved(origin_cell: Vector2i, new_cell: Vector2i)
signal tile_confirmed(cell: Vector2i)