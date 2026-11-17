with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Square_Function is
   function Square(X : Integer) return Integer is
   begin
      return X * X;
   end Square;

   N : Integer;
begin
   Put ("Give an Integer to square: ");
   Get (N);
   Put ("Result is: ");
   Put (Square(N), Width => 0);
end Square_Function;