classdef States < Simulink.IntEnumType
    enumeration
        Rest(1)
        Loading(2)
        Stance(3)
        Unloading(4)
        Flight(5)
        Accelerate(6)
    end
    methods (Static)
    function retVal = getDefaultValue()
        retVal = States.Rest;
    end
  end
end
