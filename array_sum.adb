with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure array_sum is
   type Number_Array is array (Positive range <>) of Integer;
   function sum( arr: Number_Array) return Integer is
      Sum : Integer := 0;
   begin
      for I in arr'Range loop
         Sum := arr(I) + Sum;
      end loop;
      return Sum;
   end sum;

   A : Number_Array(1 .. 3) := (10, 20, 30);
   B : Number_Array(1 .. 5) := (3, 7, 2, 8, 5);
   C : Number_Array(4 .. 6) := (2, 3, 4);

begin
   Put (sum(A));
   Put (sum(B));
   Put (sum(C));

end array_sum;