with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Sum_N is
   N: Natural;
   Sum: Natural := 0;
begin
   Put ("Enter a Natural number: ");
   Get(N);
   for I in 1..N loop
      Sum := I + Sum;
   end loop;
   Put ("Sum of numbers from 1 to ");
   Put (N, Width => 0);
   Put (" is: ");
   Put(Sum, Width => 0);
end Sum_N;
