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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.math.permutations.ComparableObject_Package; use org.allbinary.logic.math.permutations.ComparableObject_Package;
with org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package; use org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;

package body org.allbinary.logic.math.permutations.OrderedObjectArrayPermutationUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   procedure Initialize_Fields (This : in out OrderedObjectArrayPermutationUtil'Class) is
   begin
      null;
      This.TOTAL_ITERATIONS_TABLE := To_Unbounded_String ("Total Iterations: ");
      This.FINISHED := To_Unbounded_String ("" & ASCII.LF & "FINISHED");
   end Initialize_Fields;


   function getInstance return OrderedObjectArrayPermutationUtil_Access is
   begin
        return OrderedObjectArrayPermutationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OrderedObjectArrayPermutationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrderedObjectArrayPermutationUtil_Access is
      This : constant OrderedObjectArrayPermutationUtil_Access := new OrderedObjectArrayPermutationUtil;
   begin
      OrderedObjectArrayPermutationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure getNext (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access) is
      length : Integer;
      i : Integer;
      tsUtil : TsUtil_Access;
      j : Integer;
   begin
        length := data'Length;
        i := (length) - (1);
        tsUtil := TsUtil_Package.getInstance;
        while (tsUtil.hashCode (data ((i) - (1)))) >= (tsUtil.hashCode (data (i))) loop
            i := (i) - (1);
        end loop;
        j := length;
        while (tsUtil.hashCode (data ((j) - (1)))) <= (tsUtil.hashCode (data ((i) - (1)))) loop
            j := (j) - (1);
        end loop;
        OrderedObjectArrayPermutationUtil'Class (This).swap (data, (i) - (1), (j) - (1));
        i := i + 1;
        j := length;
        while (i) < (j) loop
            OrderedObjectArrayPermutationUtil'Class (This).swap (data, (i) - (1), (j) - (1));
            i := i + 1;
            j := j - 1;
        end loop;
   end getNext;

   procedure swap (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access; a : Integer; b : Integer) is
      temp : Java_Object_Access;
   begin
        temp := data (a);
        data (a) := data (b);
        data (b) := temp;
   end swap;

   function factorial (This : in out OrderedObjectArrayPermutationUtil; dataLength : Integer) return Long_Long_Integer is
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

   procedure generate (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access; visitor_Param : access Visitor_Package.Visitor'Class) is
      visitor : constant Visitor_Access := Visitor_Access (visitor_Param);
      iterations : Long_Long_Integer;
      count : Long_Long_Integer;
   begin
        iterations := OrderedObjectArrayPermutationUtil'Class (This).factorial (data'Length);
        Ada.Text_IO.Put (Java_Image (This.TOTAL_ITERATIONS_TABLE));
        Ada.Text_IO.Put_Line (Java_Image (iterations));
        for count in 0 .. ((iterations) - (1)) - 1 loop
            OrderedObjectArrayPermutationUtil'Class (This).getNext (data);
            visitor.visit (OrderedObjectArrayPermutationUtil_Access'(This'Unchecked_Access));
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (This.FINISHED));
   end generate;

   procedure main (args : Unbounded_String_Array_Access) is
      TOTAL : Integer;
      data : Java_Object_Access_Array_Access;
      i : Integer;
      permutationVisitor : ObjectPermutationVisitor_Access;
      ORIGINAL_DATA_LABEL : Unbounded_String;
   begin
        TOTAL := 7;
        data := new Java_Object_Access_Array'(0 .. (TOTAL) - 1 => null);
        for i in 0 .. (TOTAL) - 1 loop
            data (i) := ComparableObject_Package.Create;
        end loop;
        Arrays_Package.sort (data);
        permutationVisitor := ObjectPermutationVisitor_Package.Create (data);
        ORIGINAL_DATA_LABEL := To_Unbounded_String ("Original Data: ");
        Ada.Text_IO.Put (Java_Image (ORIGINAL_DATA_LABEL));
        permutationVisitor.visit (data);
        OrderedObjectArrayPermutationUtil_Package.getInstance.generate (data, permutationVisitor);
   end main;

   procedure factorial (This : in out OrderedObjectArrayPermutationUtil; dataLength : Integer) is
      Java_Result : constant Long_Long_Integer := OrderedObjectArrayPermutationUtil'Class (This).factorial (dataLength => dataLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end factorial;

begin
   null;
   instance := OrderedObjectArrayPermutationUtil_Package.Create;

end org.allbinary.logic.math.permutations.OrderedObjectArrayPermutationUtil_Package;


