with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure max_function is
   function Max(A, B : Integer) return Integer is
   begin
      if A >= B then 
         return A;
      else 
         return B;
      end if;
   end Max;
   A, B: Integer;
begin
   Put ("Give two integers to compare: ");
   Get(A);
   Get(B);
   Put ("The bigger one is: ");
   Put (Max(A,B), Width => 0);
end max_function;