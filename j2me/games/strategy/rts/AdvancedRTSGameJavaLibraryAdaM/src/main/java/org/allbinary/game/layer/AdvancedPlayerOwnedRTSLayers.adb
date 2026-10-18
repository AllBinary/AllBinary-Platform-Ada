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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out AdvancedPlayerOwnedRTSLayers'Class) is
   begin
      null;
      This.unitsList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.waypointsList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.buildingList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.baseList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.garrisonList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.houseList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.labList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.factoryList := BasicArrayList_Access (BasicArrayListD_Package.Create);
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


   procedure addUnit (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.unitsList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addUnit;

   procedure addWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.waypointsList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addWaypoint;

   procedure addBase (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.baseList.add (Java_Object_Access (rtsLayer));
        This.buildingList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addBase;

   procedure addGarrison (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.garrisonList.add (Java_Object_Access (rtsLayer));
        This.buildingList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addGarrison;

   procedure addHouse (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.houseList.add (Java_Object_Access (rtsLayer));
        This.buildingList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addHouse;

   procedure addLab (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.labList.add (Java_Object_Access (rtsLayer));
        This.buildingList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addLab;

   procedure addFactory (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.factoryList.add (Java_Object_Access (rtsLayer));
        This.buildingList.add (Java_Object_Access (rtsLayer));
        This.rtsLayerList.add (Java_Object_Access (rtsLayer));
   end addFactory;

   procedure removeUnit (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      gameLayer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (gameLayer_Param);
   begin
        This.unitsList.remove (Java_Object_Access (gameLayer));
        This.rtsLayerList.remove (Java_Object_Access (gameLayer));
   end removeUnit;

   procedure removeWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      gameLayer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (gameLayer_Param);
   begin
        This.waypointsList.remove (Java_Object_Access (gameLayer));
        This.rtsLayerList.remove (Java_Object_Access (gameLayer));
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

   procedure removeBuilding (This : in out AdvancedPlayerOwnedRTSLayers; layerInterface_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layerInterface : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layerInterface_Param);
   begin
        This.buildingList.add (Java_Object_Access (layerInterface));
        if AdvancedPlayerOwnedRTSLayers'Class (This).getBaseList.remove (Java_Object_Access (layerInterface)) then
            This.rtsLayerList.remove (Java_Object_Access (layerInterface));
        elsif AdvancedPlayerOwnedRTSLayers'Class (This).getFactoryList.remove (Java_Object_Access (layerInterface)) then
            This.rtsLayerList.remove (Java_Object_Access (layerInterface));
        elsif AdvancedPlayerOwnedRTSLayers'Class (This).getGarrisonList.remove (Java_Object_Access (layerInterface)) then
            This.rtsLayerList.remove (Java_Object_Access (layerInterface));
        elsif AdvancedPlayerOwnedRTSLayers'Class (This).getLabList.remove (Java_Object_Access (layerInterface)) then
            This.rtsLayerList.remove (Java_Object_Access (layerInterface));
        elsif AdvancedPlayerOwnedRTSLayers'Class (This).getHouseList.remove (Java_Object_Access (layerInterface)) then
            This.rtsLayerList.remove (Java_Object_Access (layerInterface));
        end if;
   end removeBuilding;

   function toString (This : in out AdvancedPlayerOwnedRTSLayers) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (PlayerOwnedRTSLayers (This).toString);
        stringBuffer.append (To_Unbounded_String (" Bases: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getBaseList.size);
        stringBuffer.append (To_Unbounded_String (" Factory: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getFactoryList.size);
        stringBuffer.append (To_Unbounded_String (" Garrison: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getGarrisonList.size);
        stringBuffer.append (To_Unbounded_String (" Labs: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getLabList.size);
        stringBuffer.append (To_Unbounded_String (" Houses: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getHouseList.size);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getWaypointsList.size);
        stringBuffer.append (To_Unbounded_String (" Units: "));
        stringBuffer.appendint (AdvancedPlayerOwnedRTSLayers'Class (This).getUnitsList.size);
        return stringBuffer.toString;
   end toString;

   function getBuildingList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access is
   begin
        return This.buildingList;
   end getBuildingList;

end org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;


