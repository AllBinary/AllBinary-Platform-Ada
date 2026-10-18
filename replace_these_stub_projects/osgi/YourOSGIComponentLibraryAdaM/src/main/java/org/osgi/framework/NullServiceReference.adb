-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.osgi.framework.NullServiceReference_Package is

   procedure Initialize_Fields (This : in out NullServiceReference'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullServiceReference'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullServiceReference_Access is
      This : constant NullServiceReference_Access := new NullServiceReference;
   begin
      NullServiceReference_Package.Initialize (This.all);
      return This;
   end Create;


   function getProperty (This : in out NullServiceReference; key : Unbounded_String) return Java_Object_Access is
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end getProperty;

   function getPropertyKeys (This : in out NullServiceReference) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getPropertyKeys;

   function compareTo (This : in out NullServiceReference; o_Param : access Java_Object'Class) return Integer is
      o : constant Java_Object_Access := Java_Object_Access (o_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end compareTo;

   procedure getProperty (This : in out NullServiceReference; key : Unbounded_String) is
      Java_Result : constant Java_Object_Access := NullServiceReference'Class (This).getProperty (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProperty;

   procedure compareTo (This : in out NullServiceReference; o_Param : access Java_Object'Class) is
      Java_Result : constant Integer := NullServiceReference'Class (This).compareTo (o_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.osgi.framework.NullServiceReference_Package;


