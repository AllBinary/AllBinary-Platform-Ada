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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GeographicMapCellTypeFactory is tagged;
   type GeographicMapCellTypeFactory_Access is access all GeographicMapCellTypeFactory'Class;
   type GeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of GeographicMapCellTypeFactory_Access;
   type GeographicMapCellTypeFactory_Access_Array_Access is access all GeographicMapCellTypeFactory_Access_Array;

   type GeographicMapCellTypeFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access;
   end record;
   instance : GeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out GeographicMapCellTypeFactory'Class);
   function Create return GeographicMapCellTypeFactory_Access;
   function getInstance return GeographicMapCellTypeFactory_Access;
   function get (This : in out GeographicMapCellTypeFactory; type_Id : Integer) return GeographicMapCellType_Access;
   procedure get (This : in out GeographicMapCellTypeFactory; type_Id : Integer);
   function getGeographicMapCellTypeArray (This : in out GeographicMapCellTypeFactory) return GeographicMapCellType_Access_Array_Access;
   function getStartType (This : in out GeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out GeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out GeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out GeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out GeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class);

end org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;


