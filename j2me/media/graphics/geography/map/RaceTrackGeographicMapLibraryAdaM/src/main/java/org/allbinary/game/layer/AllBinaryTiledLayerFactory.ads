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

with AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package;
package org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References is
   type AllBinaryTiledLayerFactory_Access is access all org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package.AllBinaryTiledLayerFactory'Class;
   type AllBinaryTiledLayerFactory_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactory_Access;
   type AllBinaryTiledLayerFactory_Access_Array_Access is access all AllBinaryTiledLayerFactory_Access_Array;
   type AllBinaryTiledLayerFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactory_Access_Array_Access;
   type AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access is access all AllBinaryTiledLayerFactory_Access_Array_Access_Array;
   type AllBinaryTiledLayerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryTiledLayerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryTiledLayerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryTiledLayerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryTiledLayerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryTiledLayerFactory_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryTiledLayerFactory_Access_Array_Object'Class then AllBinaryTiledLayerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryTiledLayerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryTiledLayerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryTiledLayerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryTiledLayerFactory_Access_Array_Access_Array_Object'Class then AllBinaryTiledLayerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References;

with org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;

package org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package is

   package AllBinaryTiledLayerFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
   package RaceTrackData_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
   package RaceTrackInfo_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
   package Reference_Types is
   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   use type RaceTrackData_Access;
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   use type RaceTrackData_Access_Array;
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access;
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   use type RaceTrackData_Access_Array_Access_Array;
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access_Array_Access;
   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   use type RaceTrackInfo_Access;
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   use type RaceTrackInfo_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access;
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   use type RaceTrackInfo_Access_Array_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryTiledLayerFactory_Access is org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.AllBinaryTiledLayerFactory_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactory_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References."=";
   subtype AllBinaryTiledLayerFactory_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.AllBinaryTiledLayerFactory_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References."=";
   subtype AllBinaryTiledLayerFactory_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.AllBinaryTiledLayerFactory_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References."=";
   function Java_Box (Value : AllBinaryTiledLayerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryTiledLayerFactory_Access_Array (Value : access Java_Object'Class) return AllBinaryTiledLayerFactory_Access_Array_Access renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.Java_Unbox_AllBinaryTiledLayerFactory_Access_Array;
   subtype AllBinaryTiledLayerFactory_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.AllBinaryTiledLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References."=";
   subtype AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References."=";
   function Java_Box (Value : AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryTiledLayerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryTiledLayerFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package_References.Java_Unbox_AllBinaryTiledLayerFactory_Access_Array_Access_Array;

   type AllBinaryTiledLayerFactory is new Java_Object and AllBinaryTiledLayerFactoryInterface with null record;

   procedure Initialize (This : in out AllBinaryTiledLayerFactory'Class);
   function Create return AllBinaryTiledLayerFactory_Access;
   function getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access;
   procedure getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);
   function getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access;
   procedure getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);

end org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package;


