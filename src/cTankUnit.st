USING Siemens.AxTest.Fluidhandling;
NAMESPACE Siemens.AxTest.Fluidhandling
Class public cTankUnit
    VAR PUBLIC
        cycleCount: INT;
        tank: cTank;
    END_VAR
 
     
    Method public mTankUnit
        VAR_INPUT
            cmdFill:bool;
            cmdEmptying : BOOL; // Outlet valve is open
            cmdFlush : BOOL; // Inlet and outlet valve is open
        END_VAR
        VAR_OUTPUT
            ctrlOpenInletValve:Bool;
            ctrlOpenOutletValve:Bool;
        END_VAR
    //instTank(cmdFill:=btnFill,cmdEmptying:=btnEmpty,cmdFlush:=btnFlush,inletValve:=inletValve,outletValve:=outletValve);//Valve作为INOUT
    tank.mTank(cmdFill:=cmdFill,cmdEmptying:=cmdEmptying,cmdFlush:=cmdFlush,ctrlOpenInletValve=>ctrlOpenInletValve,ctrlOpenOutletValve=>ctrlOpenOutletValve);
    //ctrlOpenInletValve:=inletValve.ctrlOpen;
    //ctrlOpenOutletValve:=outletValve.ctrlOpen;
    cycleCount := cycleCount + 1;
    END_METHOD
END_Class
END_NAMESPACE

NAMESPACE Siemen.AxTest.Fluidhandling
Function_Block UnitControl
    VAR
        unit:cTankUnit;
    END_VAR
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
    unit.mTankUnit(cmdFill:=cmdFill,cmdEmptying:=cmdEmptying,cmdFlush:=cmdEmptying,ctrlOpenInletValve=>ctrlOpenInletValve,ctrlOpenOutletValve=>ctrlOpenOutletValve);
END_Function_Block
END_NAMESPACE
