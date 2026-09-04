# GoblinTactics — Roadmap MVP (2D)

> RPG tático 2D simples com temática goblin  
> Grid ortogonal + sistema de turnos AP/MP + Dual-Spec  
> Construído com Godot Engine 4.3+

---

## 📋 Índice

1. [Visão Geral do Projeto](#visão-geral-do-projeto)
2. [Pilares de Design](#pilares-de-design)
3. [Roadmap — Fases e Milestones](#roadmap---fases-e-milestones)
4. [Detalhamento por Fase](#detalhamento-por-fase)
5. [Cronograma Estimado](#cronograma-estimado)
6. [Riscos e Mitigações](#riscos-e-mitigações)
7. [Critérios de Sucesso](#critérios-de-sucesso)

---

## 🎯 Visão Geral do Projeto

### Propósito
Criar um RPG tático 2D simples e divertido com temática goblin, focado em combate por turnos em grid, com sistema de AP/MP e classes híbridas (Dual-Spec).

### Público-Alvo
- Jogadores que gostam de RPGs táticos por turnos
- Fãs de jogos com temática goblin / humor caótico
- Pessoas que querem um jogo tático acessível e sem complexidade excessiva

### Diferenciais do MVP
- **Grid 2D ortogonal** — simples, legível e rápido de implementar
- **AP/MP System** — 3 AP por turno para ações, 5 MP para movimento
- **Dual-Spec** — classes formadas pela combinação de 2 Domínios
- **Temática goblin** — humor, caos e personalidade forte
- **Foco em jogabilidade** — combate funcional acima de features avançadas

### O que NÃO entra no MVP
- Grid isométrico / altura (Z)
- Multiplayer
- Editor de mapas completo
- IA inimiga avançada
- Sistema de status effects complexo
- Centenas de habilidades
- Narrativa longa / campanha elaborada

---

## 🏗️ Pilares de Design

| Pilar            | Descrição                                              | Prioridade |
|------------------|--------------------------------------------------------|------------|
| **Tático**       | Posição e alcance importam tanto quanto atributos      | Alta       |
| **2D Claro**     | Grid ortogonal legível e fácil de usar                 | Alta       |
| **AP/MP**        | 3 AP por turno. Movimento tático. Ações combináveis    | Alta       |
| **Dual-Spec**    | Classes flexíveis via cruzamento de 2 Domínios         | Alta       |
| **Feedback**     | Números e efeitos visuais claros                       | Média      |
| **Personalidade**| Temática goblin forte (humor, caos, atitude)           | Média      |

---

## 🗺️ Roadmap — Fases e Milestones

### Visão Geral das Fases

```
FASE 0: Setup do Projeto              [1 semana]
FASE 1: Grid 2D + Câmera              [1,5 semana]
FASE 2: Unidades + Seleção            [1,5 semana]
FASE 3: Turnos + AP/MP                [2 semanas]
FASE 4: Movimento + Pathfinding       [2 semanas]
FASE 5: Sistema de Actions básico     [2,5 semanas]
FASE 6: Dual-Spec mínimo              [2,5 semanas]
FASE 7: Combate + Feedback visual     [2 semanas]
FASE 8: UI de Batalha                 [1,5 semana]
FASE 9: Polish + Save simples         [1 semana]
```

### Milestones Principais

| Milestone          | Fases   | Entregável Principal                          |
|--------------------|---------|-----------------------------------------------|
| **M1: Fundação**   | 0–1     | Projeto configurado + grid 2D funcional       |
| **M2: Unidades**   | 2–3     | Unidades se movendo e com turnos              |
| **M3: Actions**    | 4–5     | Movimento + sistema de ações básico           |
| **M4: Combate**    | 6–8     | Dual-Spec + combate + UI jogável              |
| **M5: MVP Pronto** | 9       | Versão estável com save e polish              |

---

## 📝 Detalhamento por Fase

### FASE 0: Setup do Projeto [1 semana]

**Objetivo:** Configurar estrutura base do projeto Godot e ambiente de desenvolvimento.

#### To-Dos:
- [X] Criar projeto Godot 4.3+ com configurações básicas
- [X] Configurar estrutura de diretórios limpa
- [ ] Configurar Autoloads (EventBus, DataManager, GameState)
- [ ] Configurar tema dark padrão para UI
- [ ] Configurar sistema de logging/debug simples
- [ ] Criar cena principal vazia
- [ ] Configurar resolução padrão (1920x1080)
- [ ] Configurar input básico (mouse + teclado)
- [ ] Setup de version control (gitignore)
- [ ] Documentar setup de desenvolvimento

#### Critérios de Aceite:
- Projeto abre sem erros
- Autoloads funcionando
- Estrutura de diretórios criada
- Tema aplicado

#### Dependências:
- Nenhuma

---

### FASE 1: Grid 2D + Câmera [1,5 semana]

**Objetivo:** Implementar grid ortogonal funcional com conversões e rendering básico.

#### To-Dos:
- [ ] Implementar GridManager com sistema de coordenadas (x, y)
- [ ] Criar sistema de conversão grid ↔ mundo
- [ ] Implementar distância Manhattan
- [ ] Criar sistema de geração de tiles 2D (TileMap ou sprites)
- [ ] Configurar câmera ortográfica com zoom e pan
- [ ] Implementar sistema de picking (clique no tile)
- [ ] Criar sistema de highlight de células
- [ ] Adicionar suporte a tipos básicos de terreno (chão, bloqueado)
- [ ] Criar sistema de bounds checking
- [ ] Implementar sistema de walkable tiles

#### Critérios de Aceite:
- Grid renderizado corretamente
- Clique em tile retorna coordenada correta
- Destaque de células funciona
- Câmera com zoom e pan funcional
- Terrenos básicos diferenciados

#### Dependências:
- Fase 0 completa

---

### FASE 2: Unidades + Seleção [1,5 semana]

**Objetivo:** Implementar sistema de unidades com posicionamento e visualização.

#### To-Dos:
- [ ] Criar classe UnitData com atributos básicos (HP, nome, team, stats)
- [ ] Implementar sistema de posicionamento no grid
- [ ] Criar sistema de tokens visuais (sprites ou ColorRect + label)
- [ ] Implementar sistema de seleção de unidades
- [ ] Adicionar indicador de unidade ativa
- [ ] Criar sistema de teams (Player / Enemy)
- [ ] Implementar sistema de anel/indicador de seleção
- [ ] Adicionar display de HP
- [ ] Criar sistema de morte visual básica

#### Critérios de Aceite:
- Unidades aparecem no grid
- Posicionamento correto nos tiles
- Seleção visual funciona
- HP display atualiza
- Unidades podem “morrer” visualmente

#### Dependências:
- Fase 1 completa

---

### FASE 3: Turnos + AP/MP [2 semanas]

**Objetivo:** Implementar sistema de recursos de ação e ciclo de turnos.

#### To-Dos:
- [ ] Criar sistema de AP (Action Points) — 3 por turno
- [ ] Implementar sistema de MP (Movement Points) — 5 por turno
- [ ] Criar sistema de iniciativa por velocidade
- [ ] Implementar ciclo de turnos
- [ ] Criar sistema de reset de recursos por turno
- [ ] Implementar sistema de ordem de turnos
- [ ] Adicionar indicador visual de turno atual
- [ ] Criar sistema de display de AP/MP
- [ ] Implementar sistema de gasto de AP
- [ ] Adicionar sistema de validação de AP
- [ ] Criar sistema de End Turn
- [ ] Implementar sistema de Skip Turn

#### Critérios de Aceite:
- Turnos seguem ordem de velocidade
- AP e MP resetam corretamente por turno
- Gasto de AP funciona
- Display de recursos atualiza
- Indicador de turno funciona

#### Dependências:
- Fase 2 completa

---

### FASE 4: Movimento + Pathfinding [2 semanas]

**Objetivo:** Implementar sistema de movimento com pathfinding e alcance.

#### To-Dos:
- [ ] Implementar algoritmo BFS para alcance
- [ ] Criar sistema de pathfinding A* (ou BFS simples)
- [ ] Implementar custo de movimento por tile
- [ ] Adicionar sistema de blocked cells
- [ ] Criar sistema de highlight de movimento
- [ ] Implementar validação de movimento
- [ ] Criar sistema de animação de movimento simples
- [ ] Implementar sistema de update de posição
- [ ] Adicionar sistema de colisão com unidades
- [ ] Criar sistema de range de movimento

#### Critérios de Aceite:
- Unidades se movem corretamente
- Pathfinding evita obstáculos
- Highlight de movimento funciona
- Custo de movimento respeitado
- Animação de movimento funciona
- Colisão com unidades funciona

#### Dependências:
- Fase 3 completa

---

### FASE 5: Sistema de Actions básico [2,5 semanas]

**Objetivo:** Implementar sistema de ações/habilidades com targeting e execução.

#### To-Dos:
- [ ] Criar classe AbilityData com parâmetros básicos
- [ ] Implementar sistema de target types (enemy / ally / self)
- [ ] Criar sistema de target modes (single / self)
- [ ] Implementar sistema de range (min/max)
- [ ] Criar sistema de validação de actions
- [ ] Implementar sistema de execução de actions
- [ ] Adicionar sistema de AP cost
- [ ] Criar sistema de cooldowns básicos
- [ ] Implementar sistema de action cancel
- [ ] Criar sistema de action history simples

#### Critérios de Aceite:
- Actions podem ser executadas
- Targeting funciona corretamente
- Range validation funciona
- AP cost respeitado
- Cooldowns funcionam
- Actions podem ser canceladas

#### Dependências:
- Fase 4 completa

---

### FASE 6: Dual-Spec mínimo [2,5 semanas]

**Objetivo:** Implementar sistema de classes híbridas com specs e traits (versão reduzida).

#### To-Dos:
- [ ] Criar classe SpecData básica
- [ ] Implementar 6 specs (ex: Courage, Mind, Blood, Subtlety, Nature, Flame)
- [ ] Criar sistema de ClassData (combinação de 2 specs)
- [ ] Implementar sistema de traits exclusivos simples
- [ ] Criar sistema de stat calculation
- [ ] Adicionar sistema de growth stats básico
- [ ] Criar 2–3 habilidades por Spec (total ~15–18)
- [ ] Implementar sistema de trait passives simples
- [ ] Adicionar sistema de class-specific abilities

#### Critérios de Aceite:
- 6 specs definidas e funcionais
- Classes híbridas funcionam
- Traits exclusivos aplicam efeitos
- Stats calculados corretamente
- Habilidades por Spec funcionam

#### Dependências:
- Fase 5 completa

---

### FASE 7: Combate + Feedback visual [2 semanas]

**Objetivo:** Implementar sistema de combate com fórmulas e feedback visual.

#### To-Dos:
- [ ] Criar sistema de EffectData básico
- [ ] Implementar fórmulas de hit/crit simples
- [ ] Criar sistema de cálculo de dano
- [ ] Adicionar sistema de defesa física/mágica básica
- [ ] Implementar sistema de críticos
- [ ] Adicionar sistema de accuracy simples
- [ ] Criar sistema de healing
- [ ] Implementar números de dano flutuantes
- [ ] Adicionar feedback visual (flash / shake leve)
- [ ] Criar Battle Log básico

#### Critérios de Aceite:
- Ações executam corretamente
- Fórmulas de hit e dano funcionam
- Healing funciona
- Feedback visual claro
- Battle Log informativo

#### Dependências:
- Fase 6 completa

---

### FASE 8: UI de Batalha [1,5 semana]

**Objetivo:** Implementar interface de batalha completa e intuitiva.

#### To-Dos:
- [ ] Criar BattleHUD principal
- [ ] Implementar sistema de action menu
- [ ] Adicionar display de stats de unidade
- [ ] Criar sistema de targeting visual
- [ ] Implementar sistema de preview de ação
- [ ] Adicionar sistema de battle log
- [ ] Criar sistema de damage numbers
- [ ] Implementar sistema de cooldowns visuais
- [ ] Adicionar sistema de tooltips simples
- [ ] Criar botão End Turn + Cancel

#### Critérios de Aceite:
- HUD mostra informações relevantes
- Action menu funciona intuitivamente
- Targeting visual claro
- Battle log informativo
- Feedback visual satisfatório
- Tooltips funcionam

#### Dependências:
- Fase 7 completa

---

### FASE 9: Polish + Save simples [1 semana]

**Objetivo:** Estabilizar o jogo e adicionar persistência básica.

#### To-Dos:
- [ ] Criar sistema de serialização simples (Resource ou JSON)
- [ ] Implementar save de batalha
- [ ] Implementar load de batalha
- [ ] Adicionar tela de vitória/derrota
- [ ] Corrigir bugs críticos
- [ ] Ajustes de usabilidade
- [ ] Balanceamento básico
- [ ] Testes de fluxo completo de batalha

#### Critérios de Aceite:
- Batalhas podem ser salvas e carregadas
- Fluxo completo de batalha funciona sem bugs críticos
- Tela de fim de combate funciona
- Jogo está estável o suficiente para ser jogado

#### Dependências:
- Fase 8 completa

---

## ⏱️ Cronograma Estimado

### Timeline Total: ~15–17 semanas (≈ 4 meses)

| Mês   | Fases   | Foco Principal                     |
|-------|---------|------------------------------------|
| **1** | 0–3     | Fundação + Grid + Unidades + Turnos|
| **2** | 4–6     | Movimento + Actions + Dual-Spec    |
| **3** | 7–8     | Combate + UI                       |
| **4** | 9       | Polish + Save + estabilização      |

### Marcos Temporais

- **Semana 3:** Milestone M1 (Fundação)
- **Semana 6:** Milestone M2 (Unidades + Turnos)
- **Semana 10:** Milestone M3 (Actions)
- **Semana 14:** Milestone M4 (Combate + UI)
- **Semana 16–17:** Milestone M5 (MVP Pronto)

---

## ⚠️ Riscos e Mitigações

### Riscos Técnicos

| Risco                              | Probabilidade | Impacto | Mitigação                              |
|------------------------------------|---------------|---------|----------------------------------------|
| Pathfinding lento em grids grandes | Baixa         | Médio   | Usar BFS simples + limitar tamanho do grid |
| Complexidade do Dual-Spec          | Média         | Médio   | Começar com 6 specs e 2–3 skills cada  |
| Bugs de estado de turno            | Média         | Alto    | Máquina de estados clara + logs        |
| UI poluída                         | Média         | Médio   | Priorizar clareza sobre quantidade de info |

### Riscos de Escopo

| Risco                              | Probabilidade | Impacto | Mitigação                              |
|------------------------------------|---------------|---------|----------------------------------------|
| Vontade de adicionar features      | Alta          | Alto    | Scope lock rígido no MVP               |
| Dual-Spec crescer demais           | Média         | Médio   | Limitar a 6 specs e poucas skills      |
| Exigir multiplayer ou campanha     | Média         | Alto    | Deixar explicitamente fora do MVP      |

### Riscos de Tempo

| Risco                              | Probabilidade | Impacto | Mitigação                              |
|------------------------------------|---------------|---------|----------------------------------------|
| Atraso em combate ou Dual-Spec     | Média         | Alto    | Buffer de 1–2 semanas no final         |
| Curva de aprendizado Godot         | Baixa         | Médio   | Protótipos rápidos no início           |

---

## ✅ Critérios de Sucesso

### Critérios Técnicos
- [ ] Grid 2D funcional e clicável
- [ ] Sistema de turnos estável
- [ ] Movimento com pathfinding funcionando
- [ ] Sistema de actions básico robusto
- [ ] Dual-Spec mínimo jogável
- [ ] Combate com feedback visual claro
- [ ] Save/Load simples funcionando

### Critérios de UX
- [ ] Interface intuitiva
- [ ] Feedback visual claro
- [ ] Controles responsivos
- [ ] Performance estável (60 FPS em resolução padrão)

### Critérios de Conteúdo
- [ ] 6 specs funcionais
- [ ] Classes híbridas básicas
- [ ] 15–18 abilities no total
- [ ] Fluxo completo de batalha jogável

### Critérios de Qualidade
- [ ] 0 bugs críticos
- [ ] Poucos bugs moderados
- [ ] Documentação mínima das classes principais
- [ ] Jogo pode ser jogado de ponta a ponta sem quebrar

---

## 🎯 Considerações Finais

### Flexibilidade do Roadmap
- Fases podem ser ajustadas conforme progresso
- Features não críticas devem ir para backlog pós-MVP
- Priorização sempre baseada em “o combate está jogável e divertido?”

### Processo de Decisão
- Review ao final de cada milestone
- Scope lock após Fase 5
- Qualquer feature nova só entra se não atrasar o MVP

### Próximos Passos Imediatos
1. Validar este escopo do MVP
2. Setup do projeto (Fase 0)
3. Implementar grid 2D básico
4. Definir as 6 specs iniciais
5. Começar a prototipar o ciclo de turnos

---

**Versão:** 2.1 (MVP 2D — RPG Tático)  
**Data:** 2026-09-04  
**Status:** Planejamento — Escopo Reduzido  
**Próxima Revisão:** Após Fase 2  
**Última Atualização:** Ajustado de VTT/TTRPG para RPG tático simples com temática goblin
