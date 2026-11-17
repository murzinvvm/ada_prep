with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Dig_Sum_Function is
   function Dig_Sum(N : Integer) return Natural is
      Remainder : Natural := abs N;
      Sum: Natural := 0;
      Dig : Natural;
   begin
         while Remainder > 0 loop
            Dig := Remainder mod 10;
            Sum := Sum + Dig;
            Remainder := Remainder / 10;
         end loop;
         return Sum;
   end Dig_Sum;

   N: Integer;
begin
   Put ("Enter an Integer: ");
   Get (N);
   Put ("Sum of digits of ");
   Put (N, Width => 0);
   Put (" is ");
   Put (Dig_Sum(N), Width => 0);
end Dig_Sum_Function;