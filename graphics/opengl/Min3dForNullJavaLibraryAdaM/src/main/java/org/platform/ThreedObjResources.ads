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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.platform.ThreedObjResources_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type ThreedObjResources is tagged;
   type ThreedObjResources_Access is access all ThreedObjResources'Class;
   type ThreedObjResources_Access_Array is array (Natural range <>) of ThreedObjResources_Access;
   type ThreedObjResources_Access_Array_Access is access all ThreedObjResources_Access_Array;

   type ThreedObjResources is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   instance : ThreedObjResources_Access;

   procedure Initialize (This : in out ThreedObjResources'Class);
   function Create return ThreedObjResources_Access;
   function getInstance return ThreedObjResources_Access;
   function get (This : in out ThreedObjResources; resourceName : Unbounded_String) return Unbounded_String;
   procedure get (This : in out ThreedObjResources; resourceName : Unbounded_String);

end org.platform.ThreedObjResources_Package;


