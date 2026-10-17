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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AllBinaryThreedTiledLayerFactory_Access is
   begin
        return AllBinaryThreedTiledLayerFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Threed")));
   end getInstance;

   procedure getInstance is
      Java_Result : constant AllBinaryThreedTiledLayerFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) is
      Java_Result : constant AllBinaryTiledLayer_Access := AllBinaryThreedTiledLayerFactory'Class (This).getInstance (raceTrackInfo, raceTrackData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AllBinaryThreedTiledLayerFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package;


