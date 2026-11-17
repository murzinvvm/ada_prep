with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
procedure Numbers is
   A : Integer := 5;
begin 
   Put("Value of A before: ");
   Put(A, Width => 0);
   Put_Line ("");
   A := A + 3;
   Put("Value of A after + 3: ");
   Put(A, Width => 0);
end Numbers;