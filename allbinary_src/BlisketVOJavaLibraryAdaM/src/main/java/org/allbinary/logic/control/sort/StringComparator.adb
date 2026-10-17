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


package body org.allbinary.logic.control.sort.StringComparator_Package is

   procedure Initialize_Fields (This : in out StringComparator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StringComparator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StringComparator_Access is
      This : constant StringComparator_Access := new StringComparator;
   begin
      StringComparator_Package.Initialize (This.all);
      return This;
   end Create;

   function compare (This : in out StringComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      object2 : constant Java_Object_Access := Java_Object_Access (object2_Param);
      string_Id : Unbounded_String;
      string2 : Unbounded_String;
   begin
        string_Id := Unbounded_String (anyType);
        string2 := Unbounded_String (object2);
        return string_Id.compareTo (string2);
   end compare;

   procedure compare (This : in out StringComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) is
      Java_Result : constant Integer := StringComparator'Class (This).compare (anyType_Param, object2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

end org.allbinary.logic.control.sort.StringComparator_Package;


