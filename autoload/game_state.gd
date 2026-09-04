extends Node
## GameState - Guarda o estado do jogo, incluindo informações sobre turnos, unidades e fases.

enum Phase {
    BOOT,
    PLACEMENT,
    PLAYER_TURN,
    ENEMY_TURN,
    BATTLE_END
}

var phase: Phase = Phase.BOOT
var current_unit_id: int = -1
var turn_cycle = 0
