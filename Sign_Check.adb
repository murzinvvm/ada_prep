with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Sign_Check is
   I: Integer;
begin
   Put("Enter integet for checking the sign: ");
   Get(I);
   if I > 0 then
      Put ("1");
   elsif I < 0 then
      Put("-1");
   else 
      Put("0");
   end if;
end Sign_Check;