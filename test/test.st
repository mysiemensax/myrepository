USING AxUnit;

NAMESPACE MyTest
    
    // {TestFixture}
    // CLASS MyTestFixture
    //     {Test}
    //     METHOD PUBLIC MyTestMethod
    //         VAR_TEMP
    //             tmp1:INT;
    //             tmp2:INT;
    //             result:INT;
    //         END_VAR
    //         tmp1:=1;
    //         tmp2:=2;
    //         result:=tmp1+tmp2;
    //         Assert.Equal(actual := result, expected := 3);
            
    //     END_METHOD
    // END_CLASS
        {Test(A:=1,B:=2,X:=3)}
        //{Test}
        FUNCTION MyFunctionTest
            VAR_TEMP
                tmp1:INT;
                tmp2:INT;
                result:INT;
            END_VAR
            VAR_INPUT
                A,B,X:INT;
            END_VAR
            tmp1:=1;
            tmp2:=2;
            result:=3 ;
            Assert.Equal(actual:=result, expected:= X);
        END_FUNCTION
        {Test(value1:=8)}
        {Test(value1:=7)}
        FUNCTION TestSomething1st
            VAR_INPUT
                value1:int;
            END_VAR
            VAR_TEMP
                res:INT;
            END_VAR
    // write your test code here
            res:=value1;
            Assert.Equal(expected := value1, actual := 8);
        END_FUNCTION
        {Test(in1:=8)}
        FUNCTION TestSomething2nd
            VAR_INPUT
                in1:int;
            END_VAR
            VAR_TEMP
                res:INT;
            END_VAR
    // write your test code here
            res:=in1;
            Assert.Equal(expected := res, actual := 8);
        END_FUNCTION

END_NAMESPACE