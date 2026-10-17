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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type GeographicMapCellType is tagged;
   type GeographicMapCellType_Access is access all GeographicMapCellType'Class;
   type GeographicMapCellType_Access_Array is array (Natural range <>) of GeographicMapCellType_Access;
   type GeographicMapCellType_Access_Array_Access is access all GeographicMapCellType_Access_Array;

   type GeographicMapCellType is new Java_Object with record
      logUtil : LogUtil_Access;
      type_Id : Integer;
   end record;
   NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY : GeographicMapCellType_Access_Array_Access;
   NULL_GEOGRAPHIC_MAP_CELL_TYPE : GeographicMapCellType_Access;

   procedure Initialize (This : in out GeographicMapCellType'Class; type_Id : Integer; reset : Integer);
   function Create (type_Id : Integer; reset : Integer) return GeographicMapCellType_Access;
   function getType (This : in out GeographicMapCellType) return Integer;
   procedure getType (This : in out GeographicMapCellType);
   function toString (This : in out GeographicMapCellType) return Unbounded_String;
   procedure toString (This : in out GeographicMapCellType);

end org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;


