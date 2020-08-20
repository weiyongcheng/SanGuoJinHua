require 'Game.Enemy.Enemytype'

require 'Game.Enemy.MoveLine1'

for i = 5,9 do
    SetPlayerAllianceStateBJ(Player(i), Player(5), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(i), Player(6), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(i), Player(7), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(i), Player(8), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(i), Player(9), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(5), Player(i), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(6), Player(i), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(7), Player(i), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(8), Player(i), bj_ALLIANCE_ALLIED_VISION )
    SetPlayerAllianceStateBJ(Player(9), Player(i), bj_ALLIANCE_ALLIED_VISION )
end