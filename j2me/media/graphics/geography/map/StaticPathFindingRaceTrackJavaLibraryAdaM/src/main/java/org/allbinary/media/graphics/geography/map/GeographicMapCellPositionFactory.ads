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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GeographicMapCellPositionFactory is tagged;
   type GeographicMapCellPositionFactory_Access is access all GeographicMapCellPositionFactory'Class;
   type GeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactory_Access;
   type GeographicMapCellPositionFactory_Access_Array_Access is access all GeographicMapCellPositionFactory_Access_Array;
   type GeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactory_Access_Array_Access;
   type GeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all GeographicMapCellPositionFactory_Access_Array_Access_Array;

   type GeographicMapCellPositionFactory is new GeographicMapCellPositionBaseFactory with record
      logUtil : LogUtil_Access;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out GeographicMapCellPositionFactory'Class);
   function Create return GeographicMapCellPositionFactory_Access;
   function getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access;
   procedure getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function getHashtable return ABHashtable_Access;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package;


