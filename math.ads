package Math is
   function Square (N: Integer) return Integer;
   function Double (N : Integer) return Integer;
   type Number_Array is array (Positive range<>) of Integer;
   function Arr_Sum(Arr : Number_Array) return Integer;
end Math; 