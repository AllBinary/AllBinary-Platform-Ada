-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package is

   procedure Initialize_Fields (This : in out AdvancedPlayerOwnedRTSLayers'Class) is
   begin
      null;
      This.unitsList := BasicArrayListD_Package.Create;
      This.waypointsList := BasicArrayListD_Package.Create;
      This.buildingList := BasicArrayListD_Package.Create;
      This.baseList := BasicArrayListD_Package.Create;
      This.garrisonList := BasicArrayListD_Package.Create;
      This.houseList := BasicArrayListD_Package.Create;
      This.labList := BasicArrayListD_Package.Create;
      This.factoryList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out AdvancedPlayerOwnedRTSLayers'Class) is
   begin
      PlayerOwnedRTSLayers_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AdvancedPlayerOwnedRTSLayers_Access is
      This : constant AdvancedPlayerOwnedRTSLayers_Access := new AdvancedPlayerOwnedRTSLayers;
   begin
      AdvancedPlayerOwnedRTSLayers_Package.Initialize (This.all);
      return This;
   end Create;


   procedure addUnit (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.unitsList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addUnit;

   procedure addWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.waypointsList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addWaypoint;

   procedure addBase (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.baseList.add (rtsLayer);
        This.buildingList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addBase;

   procedure addGarrison (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.garrisonList.add (rtsLayer);
        This.buildingList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addGarrison;

   procedure addHouse (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.houseList.add (rtsLayer);
        This.buildingList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addHouse;

   procedure addLab (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.labList.add (rtsLayer);
        This.buildingList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addLab;

   procedure addFactory (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.factoryList.add (rtsLayer);
        This.buildingList.add (rtsLayer);
        This.rtsLayerList.add (rtsLayer);
   end addFactory;

   procedure removeUnit (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer'Class) is
      gameLayer : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (gameLayer_Param);
   begin
        This.unitsList.remove (gameLayer);
        This.rtsLayerList.remove (gameLayer);
   end removeUnit;

   procedure removeWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer'Class) is
      gameLayer : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (gameLayer_Param);
   begin
        This.waypointsList.remove (gameLayer);
        This.rtsLayerList.remove (gameLayer);
   end removeWaypoint;

   function getUnitsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.unitsList;
   end getUnitsList;

   function getWaypointsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.waypointsList;
   end getWaypointsList;

   function getBaseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.baseList;
   end getBaseList;

   function getGarrisonList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.garrisonList;
   end getGarrisonList;

   function getHouseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.houseList;
   end getHouseList;

   function getLabList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.labList;
   end getLabList;

   function getFactoryList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.factoryList;
   end getFactoryList;

   function getTotalBuildings (This : in out AdvancedPlayerOwnedRTSLayers) return Integer is
   begin
        return ((((This.baseList.size) + (This.garrisonList.size)) + (This.houseList.size)) + (This.labList.size)) + (This.factoryList.size);
   end getTotalBuildings;

   procedure removeBuilding (This : in out AdvancedPlayerOwnedRTSLayers; layerInterface_Param : access AllBinaryGameLayer'Class) is
      layerInterface : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layerInterface_Param);
   begin
        This.buildingList.add (layerInterface);
        if This.getBaseList.remove (layerInterface) then
            This.rtsLayerList.remove (layerInterface);
        elsif This.getFactoryList.remove (layerInterface) then
            This.rtsLayerList.remove (layerInterface);
        elsif This.getGarrisonList.remove (layerInterface) then
            This.rtsLayerList.remove (layerInterface);
        elsif This.getLabList.remove (layerInterface) then
            This.rtsLayerList.remove (layerInterface);
        elsif This.getHouseList.remove (layerInterface) then
            This.rtsLayerList.remove (layerInterface);
        end if;
   end removeBuilding;

   function toString (This : in out AdvancedPlayerOwnedRTSLayers) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (PlayerOwnedRTSLayers (This).toString);
        stringBuffer.append (To_Unbounded_String (" Bases: "));
        stringBuffer.appendint (This.getBaseList.size);
        stringBuffer.append (To_Unbounded_String (" Factory: "));
        stringBuffer.appendint (This.getFactoryList.size);
        stringBuffer.append (To_Unbounded_String (" Garrison: "));
        stringBuffer.appendint (This.getGarrisonList.size);
        stringBuffer.append (To_Unbounded_String (" Labs: "));
        stringBuffer.appendint (This.getLabList.size);
        stringBuffer.append (To_Unbounded_String (" Houses: "));
        stringBuffer.appendint (This.getHouseList.size);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.appendint (This.getWaypointsList.size);
        stringBuffer.append (To_Unbounded_String (" Units: "));
        stringBuffer.appendint (This.getUnitsList.size);
        return stringBuffer.toString;
   end toString;

   function getBuildingList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.buildingList;
   end getBuildingList;

end org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;


