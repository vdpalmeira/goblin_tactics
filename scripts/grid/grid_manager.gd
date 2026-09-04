class_name GridManager

const TILE_SIZE := 64 

var grid_size: Vector2i = Vector2(16, 9)

func grid_to_world(cell: Vector2i) -> Vector2:
    return Vector2(
        cell.x * TILE_SIZE,
        cell.y * TILE_SIZE
    )

func world_to_grid(world_pos: Vector2) -> Vector2i:
    return Vector2i(
        floori(world_pos.x / TILE_SIZE),
        floori(world_pos.y / TILE_SIZE)
    )

func is_in_bounds(cell: Vector2i) -> bool:
    return (
        cell.x >= 0 and 
        cell.x < grid_size.x and 
        cell.y >= 0 and 
        cell.y < grid_size.y
    )

func manhattan_distance(cell_a: Vector2i, cell_b: Vector2i) -> int:
    return absi(cell_a.x - cell_b.x) + absi(cell_a.y - cell_b.y)