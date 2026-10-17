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


package body org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryTiledLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryTiledLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryTiledLayerFactory_Access is
      This : constant AllBinaryTiledLayerFactory_Access := new AllBinaryTiledLayerFactory;
   begin
      AllBinaryTiledLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access is
      allbinaryTiledLayer : AllBinaryTiledLayer_Access;
      tiledLayer : TiledLayer_Access;
   begin
        allbinaryTiledLayer := null;
        tiledLayer := TiledLayerFactory_Package.Create.getInstance (raceTrackData);
        allbinaryTiledLayer := AllBinaryJ2METiledLayer_Package.Create (raceTrackData.getId, tiledLayer, raceTrackData.getMapArray, BasicColorFactory_Package.getInstance.RED.intValue);
        allbinaryTiledLayer.setCells (raceTrackData.getMapArray);
        return allbinaryTiledLayer;
   end getInstance;

   --  throws Exception
   function getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      tiledLayer : TiledLayer_Access;
      allbinaryTiledLayer : AllBinaryTiledLayer_Access;
   begin
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        tiledLayer := TiledLayerFactory_Package.Create.getMiniInstance (raceTrackData);
        allbinaryTiledLayer := AllBinaryJ2METiledLayer_Package.Create (smallIntegerSingletonFactory.getAt (((raceTrackData.getId.intValue) + (100)) + (1)), tiledLayer, raceTrackData.getMapArray, BasicColorFactory_Package.getInstance.RED.intValue);
        allbinaryTiledLayer.setCells (raceTrackData.getMapArray);
        return allbinaryTiledLayer;
   end getMiniInstance;

   procedure getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) is
      Java_Result : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayerFactory'Class (This).getInstance (raceTrackInfo, raceTrackData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData : RaceTrackData_Access) is
      Java_Result : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayerFactory'Class (This).getMiniInstance (raceTrackData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMiniInstance;

end org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package;


