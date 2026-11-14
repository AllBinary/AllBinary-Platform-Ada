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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References is
   type RaceTrackGameFeature_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package.RaceTrackGameFeature'Class;
   type RaceTrackGameFeature_Access_Array is array (Natural range <>) of RaceTrackGameFeature_Access;
   type RaceTrackGameFeature_Access_Array_Access is access all RaceTrackGameFeature_Access_Array;
   type RaceTrackGameFeature_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGameFeature_Access_Array_Access;
   type RaceTrackGameFeature_Access_Array_Access_Array_Access is access all RaceTrackGameFeature_Access_Array_Access_Array;
   type RaceTrackGameFeature_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGameFeature_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGameFeature_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGameFeature_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGameFeature_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGameFeature_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGameFeature_Access_Array_Object'Class then RaceTrackGameFeature_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGameFeature_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGameFeature_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGameFeature_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGameFeature_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGameFeature_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGameFeature_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGameFeature_Access_Array_Access_Array_Object'Class then RaceTrackGameFeature_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.GameFeature_Package; use org.allbinary.game.configuration.feature.GameFeature_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package is

   package GameFeature_Package renames Standard.org.allbinary.game.configuration.feature.GameFeature_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackGameFeature_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.RaceTrackGameFeature_Access;
   function "=" (Left, Right : RaceTrackGameFeature_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References."=";
   subtype RaceTrackGameFeature_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.RaceTrackGameFeature_Access_Array;
   function "=" (Left, Right : RaceTrackGameFeature_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References."=";
   subtype RaceTrackGameFeature_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.RaceTrackGameFeature_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGameFeature_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References."=";
   function Java_Box (Value : RaceTrackGameFeature_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGameFeature_Access_Array (Value : access Java_Object'Class) return RaceTrackGameFeature_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.Java_Unbox_RaceTrackGameFeature_Access_Array;
   subtype RaceTrackGameFeature_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.RaceTrackGameFeature_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGameFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References."=";
   subtype RaceTrackGameFeature_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.RaceTrackGameFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGameFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References."=";
   function Java_Box (Value : RaceTrackGameFeature_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGameFeature_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGameFeature_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package_References.Java_Unbox_RaceTrackGameFeature_Access_Array_Access_Array;

   type RaceTrackGameFeature is new GameFeature with null record;
   MINI_MAP : GameFeature_Access;
   AUTO_FINISH_AI : GameFeature_Access;

   procedure Initialize (This : in out RaceTrackGameFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return RaceTrackGameFeature_Access;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature_Package;


