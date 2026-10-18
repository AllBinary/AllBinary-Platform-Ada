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


package body org.allbinary.business.category.store.theme.ThemeComparator_Package is

   procedure Initialize_Fields (This : in out ThemeComparator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ThemeComparator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ThemeComparator_Access is
      This : constant ThemeComparator_Access := new ThemeComparator;
   begin
      ThemeComparator_Package.Initialize (This.all);
      return This;
   end Create;

   function compare (This : in out ThemeComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      object2 : constant Java_Object_Access := Java_Object_Access (object2_Param);
      string_Id : Unbounded_String;
      string2 : Unbounded_String;
   begin
        string_Id := Java_Unbox (anyType);
        string2 := Java_Unbox (object2);
        return Java_Compare_To (string_Id, string2);
   end compare;

   procedure compare (This : in out ThemeComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) is
      Java_Result : constant Integer := ThemeComparator'Class (This).compare (anyType_Param, object2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

end org.allbinary.business.category.store.theme.ThemeComparator_Package;


