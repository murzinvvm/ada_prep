with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Swap_Demo is

   procedure Swap(A,B : in out Integer) is
      Temp : Integer;
   begin
      Temp := A;
      A := B;
      B := Temp;
   end Swap;

   A,B: Integer;

begin
   Put("Enter two integers to swap: ");
   Get (A);
   Get (B);
   Put (A, Width => 0);
   New_Line;
   Put (B, Width => 0);
   New_Line;
   Swap (A, B);
   Put (A, Width => 0);
   New_Line;
   Put (B, Width => 0);
end Swap_Demo;