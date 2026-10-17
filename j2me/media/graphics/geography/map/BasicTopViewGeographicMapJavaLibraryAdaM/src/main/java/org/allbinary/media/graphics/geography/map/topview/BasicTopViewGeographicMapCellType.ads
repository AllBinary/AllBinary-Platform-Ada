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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;

   type BasicTopViewGeographicMapCellType is tagged;
   type BasicTopViewGeographicMapCellType_Access is access all BasicTopViewGeographicMapCellType'Class;
   type BasicTopViewGeographicMapCellType_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellType_Access;
   type BasicTopViewGeographicMapCellType_Access_Array_Access is access all BasicTopViewGeographicMapCellType_Access_Array;

   type BasicTopViewGeographicMapCellType is new Java_Object with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      cost : Integer;
      types : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out BasicTopViewGeographicMapCellType'Class; name : Unbounded_String; types : BasicArrayList_Access; cost : Integer);
   function Create (name : Unbounded_String; types : BasicArrayList_Access; cost : Integer) return BasicTopViewGeographicMapCellType_Access;
   function createType (name : Unbounded_String; type_Id : Integer; cost : Integer) return BasicTopViewGeographicMapCellType_Access;
   procedure createType (name : Unbounded_String; type_Id : Integer; cost : Integer);
   function isType (This : in out BasicTopViewGeographicMapCellType; type_Id : GeographicMapCellType_Access) return Boolean;
   procedure isType (This : in out BasicTopViewGeographicMapCellType; type_Id : GeographicMapCellType_Access);
   function hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer) return Boolean;
   procedure hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer);
   function getTypes (This : in out BasicTopViewGeographicMapCellType) return Integer_Array_Access;
   function toString (This : in out BasicTopViewGeographicMapCellType) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;


