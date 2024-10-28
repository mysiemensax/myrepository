// USING Siemen.AxTest.Fluidhandling;
// NAMESPACE Siemens.AxTest.Fluidhandling
//     Function_Block UnitControl
    
//     VAR
//         unit: cTankUnit;
//     END_VAR
//     VAR_INPUT
//         cmdFill : BOOL; // Inlet valve is open
//         cmdEmptying : BOOL; // Outlet valve is open
//         cmdFlush : BOOL; // Inlet and outlet valve is open
//         //volume : LREAL;            
//     END_VAR
//     VAR_OUTPUT
//         ctrlOpenInletValve:Bool;
//         ctrlOpenOutletValve:Bool;
//     END_VAR
//     unit.mTankUnit(cmdFill:=cmdFill,cmdEmptying:=cmdEmptying,cmdFlush:=cmdEmptying,ctrlOpenInletValve=>ctrlOpenInletValve,ctrlOpenOutletValve=>ctrlOpenOutletValve);
//     END_FUNCTION_BLOCK
//     END_NAMESPACE