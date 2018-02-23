class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_TeamManagement {
                class lex_RandomSelect {
                    displayName = "Random Teammate";
                    condition = "true";
                    statement = "[player] call lex_fnc_randomSelectGroup";
                    exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting", "isNotOnLadder", "isNotRefueling"};
                    priority = 0.1;

                    class lex_RandomSelectNear {
                        displayName = "Nearby (20m)";
                        condition = "isNull objectParent player";
                        statement = "[player] call lex_fnc_randomSelectNear";
                        exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting", "isNotOnLadder", "isNotRefueling"};
                        priority = 1.1;
                    };

                    class lex_RandomSelectVehicle {
                        displayName = "Current Vehicle";
                        condition = "!(isNull objectParent player)";
                        statement = "[player] call lex_fnc_randomSelectVehicle";
                        exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting", "isNotOnLadder", "isNotRefueling"};
                        priority = 1.1;
                    };

                    class lex_RandomSelectSide {
                        displayName = "Side";
                        condition = "true";
                        statement = "[player] call lex_fnc_randomSelectSide";
                        exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting", "isNotOnLadder", "isNotRefueling"};
                        priority = 1.0;
                    };
                };
            };
        };
    };
};
