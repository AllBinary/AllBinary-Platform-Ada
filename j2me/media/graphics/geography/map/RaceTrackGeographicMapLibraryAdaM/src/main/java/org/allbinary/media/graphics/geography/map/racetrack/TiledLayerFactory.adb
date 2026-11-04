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


with javax.microedition.lcdui.game.TiledLayer_Package; use javax.microedition.lcdui.game.TiledLayer_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package is

   subtype TiledLayer_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access;
   function "=" (Left, Right : TiledLayer_Access) return Boolean renames javax.microedition.lcdui.game.TiledLayer_Package_References."=";
   subtype TiledLayer_Access_Array is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array;
   function "=" (Left, Right : TiledLayer_Access_Array) return Boolean renames javax.microedition.lcdui.game.TiledLayer_Package_References."=";
   subtype TiledLayer_Access_Array_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access;
   function "=" (Left, Right : TiledLayer_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.TiledLayer_Package_References."=";
   subtype TiledLayer_Access_Array_Access_Array is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : TiledLayer_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.game.TiledLayer_Package_References."=";
   subtype TiledLayer_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.TiledLayer_Package_References.TiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TiledLayer_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.TiledLayer_Package_References."=";
   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   function "=" (Left, Right : RaceTrackData_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References."=";
   procedure Initialize_Fields (This : in out TiledLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TiledLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TiledLayerFactory_Access is
      This : constant TiledLayerFactory_Access := new TiledLayerFactory;
   begin
      TiledLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return TiledLayer_Access is
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      mapArray : Integer_Array_Access_Array_Access;
   begin
        mapArray := raceTrackData.getMapArray;
        return TiledLayer_Package.Create (mapArray (0)'Length, mapArray'Length, raceTrackData.getTileSetImage, raceTrackData.getCellWidth, raceTrackData.getCellHeight);
   end getInstance;

   function getMiniInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return TiledLayer_Access is
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
      mapArray : Integer_Array_Access_Array_Access;
   begin
        mapArray := raceTrackData.getMapArray;
        return TiledLayer_Package.Create (mapArray (0)'Length, mapArray'Length, raceTrackData.getMiniTileSetImage, raceTrackData.getMiniCellWidth, raceTrackData.getMiniCellHeight);
   end getMiniInstance;

   procedure getInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is
      Java_Result : constant TiledLayer_Access := TiledLayerFactory'Class (This).getInstance (raceTrackData_Param => raceTrackData_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getMiniInstance (This : in out TiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is
      Java_Result : constant TiledLayer_Access := TiledLayerFactory'Class (This).getMiniInstance (raceTrackData_Param => raceTrackData_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMiniInstance;

end org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;


