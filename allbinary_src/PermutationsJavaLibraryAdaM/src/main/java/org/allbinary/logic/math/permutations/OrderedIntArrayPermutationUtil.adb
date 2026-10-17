-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2011 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


package body org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package is

   procedure Initialize_Fields (This : in out OrderedIntArrayPermutationUtil'Class) is
   begin
      null;
      This.TOTAL_ITERATIONS_TABLE := To_Unbounded_String ("Total Iterations: ");
      This.FINISHED := To_Unbounded_String ("" & ASCII.LF & "FINISHED");
   end Initialize_Fields;


   function getInstance return OrderedIntArrayPermutationUtil_Access is
   begin
        return OrderedIntArrayPermutationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OrderedIntArrayPermutationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrderedIntArrayPermutationUtil_Access is
      This : constant OrderedIntArrayPermutationUtil_Access := new OrderedIntArrayPermutationUtil;
   begin
      OrderedIntArrayPermutationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure getNext (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access) is
      length : Integer;
      i : Integer;
      j : Integer;
   begin
        length := data'Length;
        i := (length) - (1);
        while (data ((i) - (1))) >= (data (i)) loop
            i := (i) - (1);
        end loop;
        j := length;
        while (data ((j) - (1))) <= (data ((i) - (1))) loop
            j := (j) - (1);
        end loop;
        This.swap (data, (i) - (1), (j) - (1));
        i := i + 1;
        j := length;
        while (i) < (j) loop
            This.swap (data, (i) - (1), (j) - (1));
            i := i + 1;
            j := j - 1;
        end loop;
   end getNext;

   procedure swap (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access; a : Integer; b : Integer) is
      temp : Integer;
   begin
        temp := data (a);
        data (a) := data (b);
        data (b) := temp;
   end swap;

   function factorial (This : in out OrderedIntArrayPermutationUtil; dataLength : Integer) return Long_Long_Integer is
      temp : Long_Long_Integer;
      i : Integer;
   begin
        temp := 1;
        if (dataLength) > (1) then
            for i in 1 .. dataLength loop
                temp := (temp) * (Long_Long_Integer (i));
            end loop;
        end if;
        return temp;
   end factorial;

   procedure generate (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access; visitor_Param : access Visitor'Class) is
      visitor : Visitor_Access := Visitor_Access (visitor_Param);
      iterations : Long_Long_Integer;
      count : Long_Long_Integer;
   begin
        iterations := This.factorial (data'Length);
        Ada.Text_IO.Put (Java_Image (This.TOTAL_ITERATIONS_TABLE));
        Ada.Text_IO.Put_Line (Java_Image (iterations));
        for count in 0 .. ((iterations) - (1)) - 1 loop
            This.getNext (data);
            visitor.visit (OrderedIntArrayPermutationUtil_Access'(This'Unchecked_Access));
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (This.FINISHED));
   end generate;

   procedure main (args : Unbounded_String_Array_Access) is
      TOTAL : Integer;
      data : Integer_Array_Access;
      i : Integer;
      permutationVisitor : IntPermutationVisitor_Access;
      ORIGINAL_DATA_LABEL : Unbounded_String;
   begin
        TOTAL := 3;
        data := new Integer_Array'(0 .. (TOTAL) - 1 => 0);
        for i in 0 .. (TOTAL) - 1 loop
            data (i) := i;
        end loop;
        permutationVisitor := IntPermutationVisitor_Package.Create (data);
        ORIGINAL_DATA_LABEL := To_Unbounded_String ("Original Data: ");
        Ada.Text_IO.Put (Java_Image (ORIGINAL_DATA_LABEL));
        permutationVisitor.print (data);
        OrderedIntArrayPermutationUtil_Package.getInstance.generate (data, permutationVisitor);
   end main;

   procedure factorial (This : in out OrderedIntArrayPermutationUtil; dataLength : Integer) is
      Java_Result : constant Long_Long_Integer := OrderedIntArrayPermutationUtil'Class (This).factorial (dataLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end factorial;

begin
   null;
   instance := OrderedIntArrayPermutationUtil_Package.Create;

end org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package;


