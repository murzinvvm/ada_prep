with Ada.Text_IO, Ada.Integer_Text_IO;
Use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Maximum is
   A, B: Integer;
   Max: Integer;
begin
   Put("Enter two Integers: ");
   get(A);
   get(B);
   if A >= B then
   Max := A;
   else Max := B;
   end if;
   Put("Maximum of ");
   Put (A, Width => 0);
   Put (" and ");
   Put (B, Width => 0);
   Put (" is: ");
   put(Max, Width => 0);
end Maximum;