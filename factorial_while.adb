with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial_while is
   N: Natural;
   I: Positive := 1;
   Factorial : Positive := 1;
begin
   Put ("Enter a Natural number: ");
   Get (N);
   while I <= N loop
      Factorial := I * Factorial;
      I := I + 1;
   end loop;
   Put ("Factorial of ");
   Put (N, Width => 0);
   Put (" is ");
   Put (Factorial, Width => 0);
end factorial_while;
