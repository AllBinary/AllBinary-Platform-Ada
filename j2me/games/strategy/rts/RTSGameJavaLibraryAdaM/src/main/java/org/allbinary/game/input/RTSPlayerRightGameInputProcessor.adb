-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package; use org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package is

   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype RTSPlayerGameInput_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access;
   function "=" (Left, Right : RTSPlayerGameInput_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInput_Package_References."=";
   subtype RTSPlayerGameInput_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInput_Package_References."=";
   subtype RTSPlayerGameInput_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInput_Package_References."=";
   subtype RTSPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInput_Package_References."=";
   subtype RTSPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInput_Package_References."=";
   procedure Initialize_Fields (This : in out RTSPlayerRightGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSPlayerRightGameInputProcessor'Class; rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) is
      rtsPlayerGameInput : constant RTSPlayerGameInput_Access := RTSPlayerGameInput_Access (rtsPlayerGameInput_Param);
   begin
        RTSPlayerGameInputProcessor_Package.Initialize (This, rtsPlayerGameInput);
   end Initialize;

   function Create (rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) return RTSPlayerRightGameInputProcessor_Access is
      This : constant RTSPlayerRightGameInputProcessor_Access := new RTSPlayerRightGameInputProcessor;
   begin
      RTSPlayerRightGameInputProcessor_Package.Initialize (This.all, rtsPlayerGameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out RTSPlayerRightGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.rtsPlayerGameInput.right;
   end processEvent;

end org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;


