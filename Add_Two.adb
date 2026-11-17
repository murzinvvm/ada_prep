with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Add_Two is
   A, B: Integer;
   Sum: Integer;
begin
   Put("Enter two integer Numbers: ");
   Get(A);
   Get(B);
   Sum := A + B;
   Put("Sum of ");
   Put(A, Width => 0);
   Put(" and ");
   Put(B, Width => 0);
   Put(" is: ");
   Put (Sum, Width => 0);
   New_Line;
end Add_Two;

