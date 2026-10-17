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


   procedure Initialize (This : in out WaypointBase'Class; sound : Sound_Access) is
   begin
      Initialize_Fields (This);
        This.sound := sound;
   end Initialize;

   function Create (sound : Sound_Access) return WaypointBase_Access is
      This : constant WaypointBase_Access := new WaypointBase;
   begin
      Initialize (This.all, sound);
      return This;
   end Create;

   function getSound (This : in out WaypointBase) return Sound_Access is
   begin
        return This.sound;
   end getSound;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out WaypointBase; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        This.allBinaryGameLayerManagerP := allBinaryGameLayerManager;
   end setAllBinaryGameLayerManager;

   function getConnectedWaypointList (This : in out WaypointBase) return BasicArrayList_Access is
   begin
        return This.connectedWaypointList;
   end getConnectedWaypointList;

   procedure onEvent (This : in out WaypointBase; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   function getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingInfo_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathFindingInfo;

   --  throws Exception
   function getPathsList (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsList;

   --  throws Exception
   function getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsListRunnable;

   --  throws Exception
   function getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPathsListFromCacheOnly;

   --  throws Exception
   procedure visit (This : in out WaypointBase; unitLayer : PathFindingLayerInterface_Access) is
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

   procedure getSound (This : in out WaypointBase) is
      Java_Result : constant Sound_Access := WaypointBase'Class (This).getSound;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSound;

   procedure getConnectedWaypointList (This : in out WaypointBase) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getConnectedWaypointList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getConnectedWaypointList;

   procedure getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant PathFindingInfo_Access := WaypointBase'Class (This).getPathFindingInfo (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathFindingInfo;

   procedure getPathsList (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsList (geographicMapCellPosition, pathFindingInfo, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsList;

   procedure getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsListRunnable (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListRunnable;

   procedure getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := WaypointBase'Class (This).getPathsListFromCacheOnly (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListFromCacheOnly;

   procedure getType (This : in out WaypointBase) is
      Java_Result : constant Integer := WaypointBase'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

begin
   null;
   NULL_WAYPOINT_BASE := WaypointBase_Package.Create (NoSound_Package.getInstance);

end org.allbinary.game.layer.waypoint.WaypointBase_Package;


