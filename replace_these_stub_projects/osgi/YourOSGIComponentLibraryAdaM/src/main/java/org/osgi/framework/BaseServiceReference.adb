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


package body org.osgi.framework.BaseServiceReference_Package is

   procedure Initialize_Fields (This : in out BaseServiceReference'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseServiceReference'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseServiceReference_Access is
      This : constant BaseServiceReference_Access := new BaseServiceReference;
   begin
      BaseServiceReference_Package.Initialize (This.all);
      return This;
   end Create;


   function getProperty (This : in out BaseServiceReference; key : Unbounded_String) return Java_Object_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getProperty;

   function getPropertyKeys (This : in out BaseServiceReference) return Unbounded_String_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPropertyKeys;

   function compareTo (This : in out BaseServiceReference; o : Java_Object_Access) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end compareTo;

   procedure getProperty (This : in out BaseServiceReference; key : Unbounded_String) is
      Java_Result : constant Java_Object_Access := BaseServiceReference'Class (This).getProperty (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProperty;

   procedure compareTo (This : in out BaseServiceReference; o : Java_Object_Access) is
      Java_Result : constant Integer := BaseServiceReference'Class (This).compareTo (o);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.osgi.framework.BaseServiceReference_Package;


