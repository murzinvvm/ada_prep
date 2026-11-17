with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial_for is
   N: Natural;
   Factorial: Positive := 1;
begin 
   Put ("Enter a Natural number: ");
   Get (N);
   for I in 1..N loop
      Factorial := Factorial * I;
   end loop;
   Put ("Facrotial of ");
   Put (N, Width => 0);
   Put (" is ");
   Put (Factorial, Width => 0);
end factorial_for;