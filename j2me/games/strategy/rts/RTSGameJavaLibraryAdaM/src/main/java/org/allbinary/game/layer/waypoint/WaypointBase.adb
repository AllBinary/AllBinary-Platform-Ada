-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.layer.waypoint.WaypointBase_Package is

   procedure Initialize_Fields (This : in out WaypointBase'Class) is
   begin
      null;
      This.connectedWaypointList := BasicArrayListD_Package.Create;
      
      This.allBinaryGameLayerManagerP := AllBinaryGameLayerManager_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointBase'Class; sound_Param : access Sound_Package.Sound'Class) is
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
      Initialize_Fields (This);
        This.sound := sound;
   end Initialize;

   function Create (sound_Param : access Sound_Package.Sound'Class) return WaypointBase_Access is
      This : constant WaypointBase_Access := new WaypointBase;
   begin
      WaypointBase_Package.Initialize (This.all, sound_Param);
      return This;
   end Create;

   function getSound (This : in out WaypointBase) return Sound_Access is
   begin
        return This.sound;
   end getSound;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out WaypointBase; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        This.allBinaryGameLayerManagerP := allBinaryGameLayerManager;
   end setAllBinaryGameLayerManager;

   function getConnectedWaypointList (This : in out WaypointBase) return BasicArrayList_Access is
   begin
        return This.connectedWaypointList;
   end getConnectedWaypointList;

   procedure onEvent (This : in out WaypointBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, WaypointBase_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   function getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingInfo_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathFindingInfo;

   --  throws Exception
   function getPathsList (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      multipassState : constant MultipassState_Access := MultipassState_Access (multipassState_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsList;

   --  throws Exception
   function getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsListRunnable;

   --  throws Exception
   function getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsListFromCacheOnly;

   --  throws Exception
   procedure visit (This : in out WaypointBase; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      unitLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (unitLayer_Param);
   begin
        null;
   end visit;

   procedure reset (This : in out WaypointBase) is
   begin
        null;
   end reset;

   function getType (This : in out WaypointBase) return Integer is
   begin
        return 0;
   end getType;

   procedure getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant PathFindingInfo_Access := WaypointBase'Class (This).getPathFindingInfo (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathFindingInfo;

   procedure getPathsList (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsList (geographicMapCellPosition_Param, pathFindingInfo_Param, multipassState_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsList;

   procedure getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsListRunnable (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListRunnable;

   procedure getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsListFromCacheOnly (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListFromCacheOnly;

begin
   null;
   NULL_WAYPOINT_BASE := WaypointBase_Package.Create (NoSound_Package.getInstance);

end org.allbinary.game.layer.waypoint.WaypointBase_Package;


