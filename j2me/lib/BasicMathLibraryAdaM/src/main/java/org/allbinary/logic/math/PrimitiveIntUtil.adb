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


package body org.allbinary.logic.math.PrimitiveIntUtil_Package is

   procedure Initialize_Fields (This : in out PrimitiveIntUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PrimitiveIntUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PrimitiveIntUtil_Access is
      This : constant PrimitiveIntUtil_Access := new PrimitiveIntUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getArrayInstance return Integer_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_INT_ARRAY;
   end getArrayInstance;

   function getTwoDimensionalArrayInstance return Integer_Array_Access_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
   end getTwoDimensionalArrayInstance;

   procedure getArrayInstance is
      Java_Result : constant Integer_Array_Access := getArrayInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getArrayInstance;

   procedure getTwoDimensionalArrayInstance is
      Java_Result : constant Integer_Array_Access_Array_Access := getTwoDimensionalArrayInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTwoDimensionalArrayInstance;

end org.allbinary.logic.math.PrimitiveIntUtil_Package;


