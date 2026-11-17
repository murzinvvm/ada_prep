with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Matrix_Sum_Demo is

   type Matrix is array (Positive range <>,Positive range <>) of Integer;

   function matrix_sum( mat: Matrix) return Integer is
      sum : Integer := 0;
   begin
      for Row in mat'Range(1) loop
         for Col in mat'Range(2) loop
            sum := mat(Row,Col) + sum;
         end loop;
      end loop;
      return sum;
   end matrix_sum;

   procedure Add_One( M : in out Matrix) is
   begin
      for Row in M'Range(1) loop
         for Col in M'Range(2) loop
            M(Row,Col) := M(Row,Col) + 1;
         end loop;
      end loop;
   end Add_One;

   function More_Than(Mat : Matrix; Limit : Natural) return Boolean
   is
      Total : Natural := 0;
   begin
      for Row in mat'Range(1) loop
         for Col in mat'Range(2) loop
            Total := mat(Row,Col) + Total;
            if Total > Limit then return True;
            else return False;
            end if;
         end loop;
      end loop;
      return False;
   end More_Than;

   M : Matrix(1 .. 2, 1 .. 3) :=
   ((1, 2, 3),
    (4, 5, 6));

begin
   Put ("Sum of all elements of matrix is ");
   Put (matrix_sum(M), Width => 0);
   New_Line;
   if More_Than (M, 20) then
      Put ("True");
      New_Line;
   else Put("False");
   end if;
   Put("After applying Add_One: ");
   Add_One (M);
   if More_Than (M, 21) then
      Put ("True");
      New_Line;
   else Put("False");
   New_Line;
   end if;
   Put (matrix_sum((M)), Width => 0);
end Matrix_Sum_Demo;

