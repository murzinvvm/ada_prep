with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Count_Demo is

   generic
      type Index_Type is (<>);
      type Grid_Type is array
         (Index_Type range <>, Index_Type range <>) of Natural;
   function Count(Grid : Grid_Type) return Natural;

   function Count(Grid : Grid_Type) return Natural is
      Total : Natural := 0;
   begin
      for Row in Grid'Range(1) loop
         for Col in Grid'Range(2) loop
            Total := Total + Grid(Row, Col);
         end loop;
      end loop;

      return Total;
   end Count;

   type Matrix is array
      (Positive range <>, Positive range <>) of Natural;

   function Count_Birds is new Count
      (Index_Type => Positive,
       Grid_Type  => Matrix);

   M : Matrix(1 .. 3, 1 .. 4) :=
      (others => (others => 3));

begin
   Put("Total birds: ");
   Put(Count_Birds(M), Width => 0);
   New_Line;
end Count_Demo;