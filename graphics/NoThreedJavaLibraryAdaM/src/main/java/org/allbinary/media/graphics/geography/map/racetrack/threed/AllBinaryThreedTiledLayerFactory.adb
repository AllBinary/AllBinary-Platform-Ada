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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;

package body org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package is

   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
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
   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   function "=" (Left, Right : RaceTrackInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryThreedTiledLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryThreedTiledLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryThreedTiledLayerFactory_Access is
      This : constant AllBinaryThreedTiledLayerFactory_Access := new AllBinaryThreedTiledLayerFactory;
   begin
      AllBinaryThreedTiledLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AllBinaryThreedTiledLayerFactory_Access is
   begin
        return AllBinaryThreedTiledLayerFactory_Access (AllBinaryThreedTiledLayerFactory_Package.instance);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access is
      raceTrackInfo : constant RaceTrackInfo_Access := RaceTrackInfo_Access (raceTrackInfo_Param);
      raceTrackData : constant RaceTrackData_Access := RaceTrackData_Access (raceTrackData_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Threed")));
        return null;
   end getInstance;

   procedure getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is
      Java_Result : constant AllBinaryTiledLayer_Access := AllBinaryThreedTiledLayerFactory'Class (This).getInstance (raceTrackInfo_Param => raceTrackInfo_Param, raceTrackData_Param => raceTrackData_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AllBinaryThreedTiledLayerFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package;


