
using siemens.AxTest.Fluidhandling;
using System.Timer;
CONFIGURATION MyConfiguration
    TASK Main(Priority := 1);
    PROGRAM P1 WITH Main: MainProgramTank;

    VAR_GLOBAL
        //cmdOpenOndelay: OnDelay;
        
    END_VAR
    VAR_GLOBAL
        btnFill AT %I20.0:BOOL;
        btnEmpty AT %I20.1:BOOL;
        btnFlush AT %I20.2:Bool;
        ctrlOpenInletValve AT %Q20.0:Bool;
        ctrlOpenOutletValve AT %Q20.1:Bool;
        //actualVolume AT %MD20: REAL;
        inletValve:cValve;
        outletValve:cValve;
        tank:cTank := (inletValve:= REF(inletValve),outletValve:= REF(outletValve));
        //instUnitTank:  UnitControl;
    END_VAR
    VAR_GLOBAL
        dataArray:array[0..32767] of REAL;
        cycleCount:int;
    END_VAR
END_CONFIGURATION
PROGRAM MainProgramTank

    VAR_EXTERNAL
        // Inlet valve
        btnFill :BOOL;
        btnEmpty:BOOL;
        btnFlush:bool;  
        ctrlOpenInletValve : BOOL;
        ctrlOpenOutletValve : BOOL;
        inletValve : cValve;
        outletValve:cValve;
        //instUnitTank : UnitControl;
        cycleCount : INT;
        tank: cTank;
    END_VAR   
     

    VAR_TEMP
        //result : LREAL;
    END_VAR
    //cTank.inletValve:=REF(inletValve);
    //instTank(cmdFill:=btnFill,cmdEmptying:=btnEmpty,cmdFlush:=btnFlush,inletValve:=inletValve,outletValve:=outletValve);//Valve作为INOUT
    tank.mTank(cmdFill:=btnFill,cmdEmptying:=btnEmpty,cmdFlush:=btnFlush,ctrlOpenInletValve=>ctrlOpenInletValve,ctrlOpenOutletValve=>ctrlOpenOutletValve);
    //ctrlOpenInletValve:=inletValve.ctrlOpen;
    //ctrlOpenOutletValve:=outletValve.ctrlOpen;
    cycleCount := cycleCount + 1;
END_PROGRAM
