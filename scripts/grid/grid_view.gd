class_name GridView
extends Node2D

## Renderiza o grid na tela: tiles com fundo e bordas definidas.

var grid_manager: GridManager

func _draw() -> void:
    if not grid_manager:
        push_error("GridManager is not assigned to GridView.")
        return

    var tile_size = grid_manager.TILE_SIZE
    var cell_color = Color(0.2, 0.2, 0.2, 1.0) # Cor do fundo do tile
    var border_color = Color(0.5, 0.5, 0.5, 1.0) # Cor da borda do tile

    for x in range(grid_manager.grid_size.x):
        for y in range(grid_manager.grid_size.y):
            var cell_pos = Vector2i(x, y)
            var world_pos = grid_manager.grid_to_world(cell_pos)

            # Desenha o fundo do tile
            draw_rect(Rect2(world_pos, Vector2(tile_size, tile_size)), cell_color)

            # Desenha a borda do tile
            draw_rect(Rect2(world_pos, Vector2(tile_size, tile_size)), border_color, false)