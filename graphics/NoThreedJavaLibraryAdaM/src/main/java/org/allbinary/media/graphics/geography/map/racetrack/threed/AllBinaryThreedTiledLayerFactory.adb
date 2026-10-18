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


package body org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package is

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
        return AllBinaryThreedTiledLayerFactory_Package.instance;
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
      Java_Result : constant AllBinaryTiledLayer_Access := AllBinaryThreedTiledLayerFactory'Class (This).getInstance (raceTrackInfo_Param, raceTrackData_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AllBinaryThreedTiledLayerFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package;


