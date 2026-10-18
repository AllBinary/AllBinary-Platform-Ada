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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.util.EnumerationUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   procedure Initialize_Fields (This : in out EnumerationUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out EnumerationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return EnumerationUtil_Access is
      This : constant EnumerationUtil_Access := new EnumerationUtil;
   begin
      EnumerationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return EnumerationUtil_Access is
   begin
        return EnumerationUtil_Package.instance;
   end getInstance;

   function hasMoreElements (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Boolean is
      enumeration : constant Enumeration_Access := Enumeration_Access (enumeration_Param);
   begin
        return enumeration.hasMoreElements;
   end hasMoreElements;

   function nextElement (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Java_Object_Access is
      enumeration : constant Enumeration_Access := Enumeration_Access (enumeration_Param);
   begin
        return enumeration.nextElement;
   end nextElement;

   function getAsArray (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Java_Object_Access_Array_Access is
      enumeration : constant Enumeration_Access := Enumeration_Access (enumeration_Param);
      basicArrayList : BasicArrayList_Access;
   begin
        basicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        while EnumerationUtil'Class (This).hasMoreElements (enumeration) loop
            basicArrayList.add (EnumerationUtil'Class (This).nextElement (enumeration));
        end loop;
        return basicArrayList.toArray;
   end getAsArray;

   procedure hasMoreElements (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) is
      Java_Result : constant Boolean := EnumerationUtil'Class (This).hasMoreElements (enumeration_Param => enumeration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasMoreElements;

   procedure nextElement (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) is
      Java_Result : constant Java_Object_Access := EnumerationUtil'Class (This).nextElement (enumeration_Param => enumeration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end nextElement;

   procedure getAsArray (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) is
      Java_Result : constant Java_Object_Access_Array_Access := EnumerationUtil'Class (This).getAsArray (enumeration_Param => enumeration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsArray;

begin
   null;
   instance := EnumerationUtil_Package.Create;

end org.allbinary.util.EnumerationUtil_Package;


