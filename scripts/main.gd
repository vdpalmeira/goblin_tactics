extends Node
var grid_manager: GridManager

func _ready():
    # Inicialização do jogo
    # Setup Grid
    _setup_grid()
    _setup_cursor()
    print("Game is ready.")

func _setup_grid():
    grid_manager = GridManager.new()
    var grid := GridView.new()
    grid.grid_manager = grid_manager
    add_child(grid)

func _setup_cursor():
    var cursor := TurnCursor.new()
    cursor.grid = grid_manager
    add_child(cursor)