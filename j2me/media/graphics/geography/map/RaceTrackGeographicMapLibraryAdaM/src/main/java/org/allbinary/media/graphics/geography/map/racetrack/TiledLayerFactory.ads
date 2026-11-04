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

limited with org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References is
   type TiledLayerFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package.TiledLayerFactory'Class;
   type TiledLayerFactory_Access_Array is array (Natural range <>) of TiledLayerFactory_Access;
   type TiledLayerFactory_Access_Array_Access is access all TiledLayerFactory_Access_Array;
   type TiledLayerFactory_Access_Array_Access_Array is array (Natural range <>) of TiledLayerFactory_Access_Array_Access;
   type TiledLayerFactory_Access_Array_Access_Array_Access is access all TiledLayerFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.game.TiledLayer_Package;
with javax.microedition.lcdui.game.TiledLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package is

   package TiledLayer_Package renames Standard.javax.microedition.lcdui.game.TiledLayer_Package;
   package Reference_Types is
   subtype TiledLayer_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access;
   use type TiledLayer_Access;
   subtype TiledLayer_Access_Array is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array;
   use type TiledLayer_Access_Array;
   subtype TiledLayer_Access_Array_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access;
   use type TiledLayer_Access_Array_Access;
   subtype TiledLayer_Access_Array_Access_Array is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access_Array;
   use type TiledLayer_Access_Array_Access_Array;
   subtype TiledLayer_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access_Array_Access;
   use type TiledLayer_Access_Array_Access_Array_Access;
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


   subtype TiledLayerFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References.TiledLayerFactory_Access;
   function "=" (Left, Right : TiledLayerFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References."=";
   subtype TiledLayerFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References.TiledLayerFactory_Access_Array;
   function "=" (Left, Right : TiledLayerFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References."=";
   subtype TiledLayerFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References.TiledLayerFactory_Access_Array_Access;
   function "=" (Left, Right : TiledLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References."=";
   subtype TiledLayerFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References.TiledLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TiledLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References."=";
   subtype TiledLayerFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References.TiledLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TiledLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package_References."=";

   type TiledLayerFactory is new Java_Object with null record;

   procedure Initialize (This : in out TiledLayerFactory'Class);
   function Create return TiledLayerFactory_Access;
   function getInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return TiledLayer_Access;
   procedure getInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);
   function getMiniInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return TiledLayer_Access;
   procedure getMiniInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);

end org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;


