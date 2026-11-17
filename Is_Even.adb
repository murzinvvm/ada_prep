with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Is_Even is

   function even(N: Integer) return Boolean is
   begin
      return (N mod 2 = 0);
   end even; 

   N: Integer; 

begin
   Put ("Integer: ");
   Get(N);
   if even (N) then
      Put (N, Width => 0);
      Put (" is even");
   else 
      Put (N, Width => 0);
      Put (" is odd");
   end if;
end Is_Even;