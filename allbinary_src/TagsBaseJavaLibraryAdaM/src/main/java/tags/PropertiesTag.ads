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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.CommandTag_Package; use tags.CommandTag_Package;

package tags.PropertiesTag_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type PropertiesTag is tagged;
   type PropertiesTag_Access is access all PropertiesTag'Class;
   type PropertiesTag_Access_Array is array (Natural range <>) of PropertiesTag_Access;
   type PropertiesTag_Access_Array_Access is access all PropertiesTag_Access_Array;

   type PropertiesTag is new CommandTag with record
      logUtil : LogUtil_Access;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out PropertiesTag'Class);
   function Create return PropertiesTag_Access;
   function getPropertiesHashMap (This : in out PropertiesTag) return HashMap_Access;
   procedure getPropertiesHashMap (This : in out PropertiesTag);
   function doEndTag (This : in out PropertiesTag) return Integer;
   procedure doEndTag (This : in out PropertiesTag);

end tags.PropertiesTag_Package;


