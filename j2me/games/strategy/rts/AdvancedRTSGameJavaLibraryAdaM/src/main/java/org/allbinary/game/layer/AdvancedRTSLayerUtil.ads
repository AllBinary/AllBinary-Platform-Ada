-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.AdvancedRTSLayerUtil_Package;
package org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References is
   type AdvancedRTSLayerUtil_Access is access all org.allbinary.game.layer.AdvancedRTSLayerUtil_Package.AdvancedRTSLayerUtil'Class;
   type AdvancedRTSLayerUtil_Access_Array is array (Natural range <>) of AdvancedRTSLayerUtil_Access;
   type AdvancedRTSLayerUtil_Access_Array_Access is access all AdvancedRTSLayerUtil_Access_Array;
   type AdvancedRTSLayerUtil_Access_Array_Access_Array is array (Natural range <>) of AdvancedRTSLayerUtil_Access_Array_Access;
   type AdvancedRTSLayerUtil_Access_Array_Access_Array_Access is access all AdvancedRTSLayerUtil_Access_Array_Access_Array;
   type AdvancedRTSLayerUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedRTSLayerUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedRTSLayerUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedRTSLayerUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedRTSLayerUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedRTSLayerUtil_Access_Array_Access is (if Value /= null and then Value.all in AdvancedRTSLayerUtil_Access_Array_Object'Class then AdvancedRTSLayerUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AdvancedRTSLayerUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedRTSLayerUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedRTSLayerUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedRTSLayerUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedRTSLayerUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedRTSLayerUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvancedRTSLayerUtil_Access_Array_Access_Array_Object'Class then AdvancedRTSLayerUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References;

with org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.layer.AdvancedRTSLayerUtil_Package is

   package BaseRaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype BaseRaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access;
   use type BaseRaceTrackGeographicMap_Access;
   subtype BaseRaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array;
   use type BaseRaceTrackGeographicMap_Access_Array;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access;
   use type BaseRaceTrackGeographicMap_Access_Array_Access;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   use type BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   use type BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvancedRTSLayerUtil_Access is org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.AdvancedRTSLayerUtil_Access;
   function "=" (Left, Right : AdvancedRTSLayerUtil_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References."=";
   subtype AdvancedRTSLayerUtil_Access_Array is org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.AdvancedRTSLayerUtil_Access_Array;
   function "=" (Left, Right : AdvancedRTSLayerUtil_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References."=";
   subtype AdvancedRTSLayerUtil_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.AdvancedRTSLayerUtil_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSLayerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References."=";
   function Java_Box (Value : AdvancedRTSLayerUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.Java_Box;
   function Java_Unbox_AdvancedRTSLayerUtil_Access_Array (Value : access Java_Object'Class) return AdvancedRTSLayerUtil_Access_Array_Access renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.Java_Unbox_AdvancedRTSLayerUtil_Access_Array;
   subtype AdvancedRTSLayerUtil_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.AdvancedRTSLayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSLayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References."=";
   subtype AdvancedRTSLayerUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.AdvancedRTSLayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSLayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References."=";
   function Java_Box (Value : AdvancedRTSLayerUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.Java_Box;
   function Java_Unbox_AdvancedRTSLayerUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvancedRTSLayerUtil_Access_Array_Access_Array_Access renames org.allbinary.game.layer.AdvancedRTSLayerUtil_Package_References.Java_Unbox_AdvancedRTSLayerUtil_Access_Array_Access_Array;

   type AdvancedRTSLayerUtil is new Java_Object with null record;
   instance : AdvancedRTSLayerUtil_Access;

   procedure Initialize (This : in out AdvancedRTSLayerUtil'Class);
   function Create return AdvancedRTSLayerUtil_Access;
   function getInstance return AdvancedRTSLayerUtil_Access;
   function createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) return ABHashtable_Access;
   procedure createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class);

end org.allbinary.game.layer.AdvancedRTSLayerUtil_Package;


