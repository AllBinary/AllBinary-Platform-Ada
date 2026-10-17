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


package body org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package is

   procedure Initialize_Fields (This : in out RaceTrackAdjacentDropLayerFactory'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackAdjacentDropLayerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RaceTrackAdjacentDropLayerFactory_Access is
      This : constant RaceTrackAdjacentDropLayerFactory_Access := new RaceTrackAdjacentDropLayerFactory;
   begin
      RaceTrackAdjacentDropLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out RaceTrackAdjacentDropLayerFactory) is
   begin
        This.list.clear;
   end clear;

   function getInstance return RaceTrackAdjacentDropLayerFactory_Access is
   begin
        return RaceTrackAdjacentDropLayerFactory_Package.DROP_LAYER_FACTORY;
   end getInstance;

   function getSize (This : in out RaceTrackAdjacentDropLayerFactory) return Integer is
   begin
        return This.list.size;
   end getSize;

   function getRandomInstance (This : in out RaceTrackAdjacentDropLayerFactory) return LayerInterfaceFactoryInterface_Access is
   begin
        return LayerInterfaceFactoryInterface_Access (This.basicArrayListUtil.getRandom (This.list));
   end getRandomInstance;

   procedure add (This : in out RaceTrackAdjacentDropLayerFactory; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) is
      layerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        This.list.add (layerInterfaceFactoryInterface);
   end add;

begin
   null;
   DROP_LAYER_FACTORY := RaceTrackAdjacentDropLayerFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;


