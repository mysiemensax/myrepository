NAMESPACE Siemens.AxTest.Fluidhandling
    
    Class public cTank

        // VAR_IN_OUT 
        //     inletValve : Valve; 
        //     outletValve : Valve;
        // END_VAR

        VAR PUBLIC
            inletValve : REF_TO cValve; 
            outletValve : REF_TO cValve;
        END_VAR
        method public mTank
            VAR_INPUT
                cmdFill : BOOL; // Inlet valve is open
                cmdEmptying : BOOL; // Outlet valve is open
                cmdFlush : BOOL; // Inlet and outlet valve is open
                //volume : LREAL;            
            END_VAR
            VAR_OUTPUT
                ctrlOpenInletValve:Bool;
                ctrlOpenOutletValve:Bool;
            END_VAR
            VAR_TEMP
                tmpCmdInletOpen:bool;
                tmpCmdOutletOpen:bool;
            END_VAR
        IF (cmdFill XOR cmdEmptying XOR cmdFlush) THEN // check, if just one command is selected
            IF (cmdFill) THEN
                tmpCmdInletOpen := TRUE;
                tmpCmdOutletOpen := FALSE;
            ELSIF (cmdEmptying) THEN
                tmpCmdInletOpen := FALSE;
                tmpCmdOutletOpen := TRUE;
            ELSIF (cmdFlush) THEN
                tmpCmdInletOpen:= TRUE;
                tmpCmdOutletOpen := TRUE;               
            END_IF;
        ELSE
            tmpCmdInletOpen:= FALSE;
            tmpCmdOutletOpen := FALSE;
        END_IF;
        ;
        inletValve^.mValve(cmdOpen:=tmpCmdInletOpen,ctrlOpen=>ctrlOpenInletValve);
        outletValve^.mValve(cmdOpen:=tmpCmdOutletOpen,ctrlOpen=>ctrlOpenOutletValve);
    end_method
    END_Class
END_NAMESPACE