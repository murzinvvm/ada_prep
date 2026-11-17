with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Math;

procedure Main is
   A : Math.Number_Array (1 .. 3) := (10, 20, 30);
begin
   Put (Math.Square (5), Width => 5);
   New_Line;
   Put (Math.Double (Math.Square (5)), Width => 5);
   New_Line;
   Put (Math.Arr_Sum(A), Width => 5);
end Main;
