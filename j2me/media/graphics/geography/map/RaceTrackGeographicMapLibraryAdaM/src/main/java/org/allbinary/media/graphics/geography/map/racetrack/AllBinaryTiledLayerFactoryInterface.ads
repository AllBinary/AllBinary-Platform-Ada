--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
package org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References is
   type AllBinaryTiledLayerFactoryInterface_Access is access all org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class;
   type AllBinaryTiledLayerFactoryInterface_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactoryInterface_Access;
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Access is access all AllBinaryTiledLayerFactoryInterface_Access_Array;
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactoryInterface_Access_Array_Access;
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access is access all AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array;
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryTiledLayerFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryTiledLayerFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryTiledLayerFactoryInterface_Access_Array_Object'Class then AllBinaryTiledLayerFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Object'Class then AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type AllBinaryTiledLayerFactoryInterface is interface;
   subtype AllBinaryTiledLayerFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References."=";
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayerFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References."=";
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References."=";
   function Java_Box (Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array (Value : access Java_Object'Class) return AllBinaryTiledLayerFactoryInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array;
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References."=";
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References."=";
   function Java_Box (Value : AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.Java_Unbox_AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AllBinaryTiledLayerFactoryInterface (Value : AllBinaryTiledLayerFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access is abstract;
   procedure getInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is abstract;
   function getMiniInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access is abstract;
   procedure getMiniInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;


