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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;

package org.osgi.framework.BaseServiceReference_Package is


   type BaseServiceReference is tagged;
   type BaseServiceReference_Access is access all BaseServiceReference'Class;
   type BaseServiceReference_Access_Array is array (Natural range <>) of BaseServiceReference_Access;
   type BaseServiceReference_Access_Array_Access is access all BaseServiceReference_Access_Array;

   type BaseServiceReference is new ServiceReference with null record;

   procedure Initialize (This : in out BaseServiceReference'Class);
   function Create return BaseServiceReference_Access;
   function getProperty (This : in out BaseServiceReference; key : Unbounded_String) return Java_Object_Access;
   procedure getProperty (This : in out BaseServiceReference; key : Unbounded_String);
   function getPropertyKeys (This : in out BaseServiceReference) return Unbounded_String_Array_Access;
   function compareTo (This : in out BaseServiceReference; o : Java_Object_Access) return Integer;
   procedure compareTo (This : in out BaseServiceReference; o : Java_Object_Access);

end org.osgi.framework.BaseServiceReference_Package;


