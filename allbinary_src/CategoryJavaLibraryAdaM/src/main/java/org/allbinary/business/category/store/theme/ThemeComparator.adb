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

   function compare (This : in out ThemeComparator; anyType : Java_Object_Access; object2 : Java_Object_Access) return Integer is
      string_Id : Unbounded_String;
      string2 : Unbounded_String;
   begin
        string_Id := Unbounded_String (anyType);
        string2 := Unbounded_String (object2);
        return string_Id.compareTo (string2);
   end compare;

   procedure compare (This : in out ThemeComparator; anyType : Java_Object_Access; object2 : Java_Object_Access) is
      Java_Result : constant Integer := ThemeComparator'Class (This).compare (anyType, object2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

end org.allbinary.business.category.store.theme.ThemeComparator_Package;


