class_name TurnCursor
extends Node2D

## Cursor de navegação para a grid.

var grid: GridManager
var cell: Vector2i = Vector2i.ZERO

func _ready() -> void:
    position = grid.grid_to_world(cell)

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("move_up"):
        _try_move(Vector2i(0, -1))
    elif event.is_action_pressed("move_down"):
        _try_move(Vector2i(0, 1))
    elif event.is_action_pressed("move_left"):
        _try_move(Vector2i(-1, 0))
    elif event.is_action_pressed("move_right"):
        _try_move(Vector2i(1, 0))
    elif event.is_action_pressed("confirm"):
        EventBus.tile_confirmed.emit(cell)

func _try_move(delta: Vector2i) -> void:
    var new_cell = cell + delta
    if grid.is_in_bounds(new_cell):
        var origin_cell = cell
        cell = new_cell
        position = grid.grid_to_world(cell)
        EventBus.cursor_moved.emit(origin_cell, cell)

func _draw() -> void:
    var tile_size = grid.TILE_SIZE
    
    draw_rect(
        Rect2(Vector2.ZERO, Vector2(tile_size, tile_size)),
        Color(0.2, 1, 0.3, 0.4), # Cor do cursor (verde)
        true # Preencher o retângulo
    )
    draw_rect(
        Rect2(Vector2.ZERO, Vector2(tile_size, tile_size)),
        Color(0.3, 1, 0.4, 1), # Cor da borda do cursor (verde)
        false # Não preencher o retângulo
    )
    