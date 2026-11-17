with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Introduction is
   Age : Integer := 20;
begin
   Age := Age + 1;
   Ada.Text_IO.Put_Line("hello, World!");
   Ada.Text_IO.Put_Line("My name is Valerii");
   Put("I am:");
   Put(Age);
end Introduction;