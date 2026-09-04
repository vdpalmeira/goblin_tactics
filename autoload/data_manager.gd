extends Node
## DataManager - Gerencia os dados do jogo, incluindo unidades, recursos e informações de batalha.

# FUTURE: Carregar, actions, reactions e passivas de resources/data

var specs: Dictionary = {

}

func get_spec(spec_id: String) -> Dictionary:
    if spec_id in specs:
        return specs[spec_id]
    else:
        push_error("Spec ID '%s' not found in DataManager." % spec_id)
        return {}

