with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure digit_sum is
   N : Integer;
   Sum : Natural := 0;
   Dig, Remainder : Natural;
begin
   Put ("Enter a Number: ");
   Get (N);
   Remainder := abs (N);
   while Remainder > 0 loop
      Dig := Remainder mod 10;
      Remainder := Remainder / 10;
      Sum := Sum + Dig;
      Put (Dig);
      Put (Sum);
      Put (Remainder);
   end loop;
   New_Line;
   Put ("Sum of digits of ");
   Put (N, Width => 0);
   Put (" is ");
   Put (Sum, Width => 0);
end digit_sum;