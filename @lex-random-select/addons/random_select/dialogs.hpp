class lex_taskInputDialog {
    idd = 11181;
    movingEnable = 0;

    class Controls {
        class lex_taskInputBackground: IGUIBack
        {
            idc = 2200;
            x = 12 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 5.5 * GUI_GRID_H;
            colorBackground[] = {0.2,0.2,0.2,0.8};
            sizeEx = 1 * GUI_GRID_H;
        };
        class lex_taskInputFrame: RscFrame
        {
            idc = 1800;
            text = "Task/Role to Assign";
            x = 12.5 * GUI_GRID_W + GUI_GRID_X;
            y = 10.7 * GUI_GRID_H + GUI_GRID_Y;
            w = 15 * GUI_GRID_W;
            h = 4.8 * GUI_GRID_H;
            colorText[] = {1,1,1,1};
            sizeEx = 1 * GUI_GRID_H;
        };
        class lex_taskInputTextBox: RscEdit
        {
            idc = 1400;
            text = "";
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 12.2 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.1,0.1,0.1,0.9};
            colorActive[] = {0.1,0.1,0.1,1};
            sizeEx = 1 * GUI_GRID_H;
        };
        class lex_taskInputBtnOk: RscButtonMenuOK
        {
            idc = 2600;
            action = "[ctrlText ((findDisplay 11181) displayCtrl 1400)] call lex_fnc_randomSelectCallback; closeDialog 1";
            x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.1,0.1,0.1,1};
            colorActive[] = {0.1,0.1,0.1,1};
            sizeEx = 1 * GUI_GRID_H;
        };
        class lex_taskInputBtnCancel: RscButtonMenuCancel
        {
            idc = 2700;
            action = "closeDialog 2";
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0.1,0.1,0.1,1};
            colorActive[] = {0.1,0.1,0.1,1};
            sizeEx = 1 * GUI_GRID_H;
        };
    };
};
