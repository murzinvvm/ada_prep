package body Math is
   function Square( N : Integer) return Integer is
   begin
      return N * N;
   end Square;
   function Double (N : Integer) return Integer is
   begin
      return N * 2;
   end Double;
   function Arr_Sum(Arr : Number_Array) return Integer is
      Sum: Integer := 0;
   begin
      for i in Arr'Range loop
         Sum := Sum + Arr(i);
      end loop;
   return Sum;
   end Arr_Sum;
end Math;
