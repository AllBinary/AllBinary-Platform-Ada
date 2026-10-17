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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package is

   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;

   type BasicPlatormGeographicMapCellType is tagged;
   type BasicPlatormGeographicMapCellType_Access is access all BasicPlatormGeographicMapCellType'Class;
   type BasicPlatormGeographicMapCellType_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellType_Access;
   type BasicPlatormGeographicMapCellType_Access_Array_Access is access all BasicPlatormGeographicMapCellType_Access_Array;

   type BasicPlatormGeographicMapCellType is new Java_Object with record
      types : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out BasicPlatormGeographicMapCellType'Class; types_Param : access BasicArrayList'Class);
   function Create (types_Param : access BasicArrayList'Class) return BasicPlatormGeographicMapCellType_Access;
   function createType (type_Id : Integer) return BasicPlatormGeographicMapCellType_Access;
   procedure createType (type_Id : Integer);
   function isType (This : in out BasicPlatormGeographicMapCellType; type_Id_Param : access GeographicMapCellType'Class) return Boolean;
   procedure isType (This : in out BasicPlatormGeographicMapCellType; type_Id_Param : access GeographicMapCellType'Class);
   function hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer) return Boolean;
   procedure hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer);

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package;


