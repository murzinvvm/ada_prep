with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Main is
   generic
      type Index_Type is (<>);
      type Grid_Type is array
         (Index_Type range <>, Index_Type range <>) of Natural;
   function Count(Grid : Grid_Type) return Natural;

   function Count(Grid : Grid_Type) return Natural is
      Total : Natural := 0;
   begin
      for R in Grid'Range(1) loop
         for C in Grid'Range(2) loop
            Total := Total + Grid(R, C);
         end loop;
      end loop;
      return Total;
   end Count;

   generic
      type Index_Type is (<>);
      type Grid_Type is array
         (Index_Type range <>, Index_Type range <>) of Natural;
   function More_Than(Grid : Grid_Type; Max : Natural) return Boolean;

   function More_Than(Grid : Grid_Type; Max : Natural) return Boolean is
      Total : Natural := 0;
   begin
      for R in Grid'Range(1) loop
         for C in Grid'Range(2) loop
            Total := Total + Grid(R, C);
            if Total > Max then
               return True;
            end if;
         end loop;
      end loop;
      return False;
   end More_Than;

   -- Grade 4: count cells satisfying a supplied predicate.
   generic
      type Index_Type is (<>);
      type Element_Type is private;
      type Grid_Type is array
         (Index_Type range <>, Index_Type range <>) of Element_Type;
      with function Predicate(E : Element_Type) return Boolean;
   function Count_Value(Grid : Grid_Type) return Natural;

   function Count_Value(Grid : Grid_Type) return Natural is
      Total : Natural := 0;
   begin
      for R in Grid'Range(1) loop
         for C in Grid'Range(2) loop
            if Predicate(Grid(R, C)) then
               Total := Total + 1;
            end if;
         end loop;
      end loop;
      return Total;
   end Count_Value;

   -- Grade 5: visit row by row; distribute north, south, west, east.
   -- Later cells see previous changes. Unplaced excess flies away.
   generic
      type Index_Type is (<>);
      type Grid_Type is array
         (Index_Type range <>, Index_Type range <>) of Natural;
   procedure Migrate(Grid : in out Grid_Type; Max : Natural);

   procedure Migrate(Grid : in out Grid_Type; Max : Natural) is
      Excess : Natural;
      procedure Place(R, C : Index_Type) is
         Amount : Natural;
      begin
         if Grid(R, C) < Max then
            Amount := Natural'Min(Excess, Max - Grid(R, C));
            Grid(R, C) := Grid(R, C) + Amount;
            Excess := Excess - Amount;
         end if;
      end Place;
   begin
      for R in Grid'Range(1) loop
         for C in Grid'Range(2) loop
            if Grid(R, C) > Max then
               Excess := Grid(R, C) - Max;
               Grid(R, C) := Max;
               if R > Grid'First(1) then
                  Place(Index_Type'Pred(R), C);
               end if;
               if R < Grid'Last(1) then
                  Place(Index_Type'Succ(R), C);
               end if;
               if C > Grid'First(2) then
                  Place(R, Index_Type'Pred(C));
               end if;
               if C < Grid'Last(2) then
                  Place(R, Index_Type'Succ(C));
               end if;
            end if;
         end loop;
      end loop;
   end Migrate;

   type Matrix is array
      (Positive range <>, Positive range <>) of Natural;
   function Count_Birds is new Count(Positive, Matrix);
   function Too_Many is new More_Than(Positive, Matrix);
   M : Matrix(1 .. 10, 1 .. 10) := (others => (others => 2));
   function Above_Three(E : Natural) return Boolean is
   begin
      return E > 3;
   end Above_Three;
   function Count_Crowded is new Count_Value
      (Positive, Natural, Matrix, Above_Three);
   procedure Move_Birds is new Migrate(Positive, Matrix);
begin
   Put("Grade 2 - total birds: ");
   Put(Count_Birds(M), Width => 0);
   New_Line;
   Put_Line("Grade 3 - more than 199: " & Boolean'Image(Too_Many(M, 199)));
   Put_Line("Grade 3 - more than 200: " & Boolean'Image(Too_Many(M, 200)));
   M(5, 5) := 10;
   pragma Assert(Count_Crowded(M) = 1);
   Put("Grade 4 - nests above 3: ");
   Put(Count_Crowded(M), Width => 0);
   New_Line;
   Move_Birds(M, 3);
   pragma Assert(Count_Birds(M) = 205);
   for R in M'Range(1) loop
      for C in M'Range(2) loop
         pragma Assert(M(R, C) <= 3);
         Put(M(R, C), Width => 2);
      end loop;
      New_Line;
   end loop;
   -- No capacity: all birds above zero must leave.
   Move_Birds(M, 0);
   pragma Assert(Count_Birds(M) = 0);
end Main;
