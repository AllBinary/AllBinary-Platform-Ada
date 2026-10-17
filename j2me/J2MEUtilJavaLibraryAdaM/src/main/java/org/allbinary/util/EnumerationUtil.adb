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


package body org.allbinary.util.EnumerationUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return EnumerationUtil_Access is
   begin
        return EnumerationUtil_Package.instance;
   end getInstance;

   function hasMoreElements (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Boolean is
   begin
        return enumeration.hasMoreElements;
   end hasMoreElements;

   function nextElement (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Java_Object_Access is
   begin
        return enumeration.nextElement;
   end nextElement;

   function getAsArray (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Java_Object_Access_Array_Access is
      basicArrayList : BasicArrayList_Access;
   begin
        basicArrayList := BasicArrayListD_Package.Create;
        while This.hasMoreElements (enumeration) loop
            basicArrayList.add (This.nextElement (enumeration));
        end loop;
        return basicArrayList.toArray;
   end getAsArray;

   procedure getInstance is
      Java_Result : constant EnumerationUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure hasMoreElements (This : in out EnumerationUtil; enumeration : Enumeration_Access) is
      Java_Result : constant Boolean := EnumerationUtil'Class (This).hasMoreElements (enumeration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasMoreElements;

   procedure nextElement (This : in out EnumerationUtil; enumeration : Enumeration_Access) is
      Java_Result : constant Java_Object_Access := EnumerationUtil'Class (This).nextElement (enumeration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end nextElement;

   procedure getAsArray (This : in out EnumerationUtil; enumeration : Enumeration_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := EnumerationUtil'Class (This).getAsArray (enumeration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsArray;

begin
   null;
   instance := EnumerationUtil_Package.Create;

end org.allbinary.util.EnumerationUtil_Package;


