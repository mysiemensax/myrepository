using System.Timer;
NAMESPACE Siemens.AxTest.Fluidhandling
    Class PUBLIC cValve


        VAR PROTECTED
            cmdOpenOnDelay: OnDelay;
        END_VAR
        Method public mValve
            VAR_INPUT
                cmdOpen : BOOL;
            END_VAR
            VAR_OUTPUT
                ctrlOpen : BOOL;
                isOpen : BOOL;
                isClosed : BOOL;
            END_VAR
        cmdOpenOnDelay(signal:=cmdOpen,duration:=LT#2s);
        IF (cmdOpenOnDelay.OUTPUT) THEN

            isOpen := TRUE;
            isClosed := FALSE;
            ctrlOpen := TRUE;
        ELSE
            isOpen := FALSE;
            isClosed := TRUE;
            ctrlOpen := FALSE;
        END_IF;
    END_Method
    END_Class
END_NAMESPACE