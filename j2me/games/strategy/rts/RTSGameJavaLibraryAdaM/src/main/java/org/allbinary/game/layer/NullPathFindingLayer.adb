-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.NullPathFindingLayer_Package is

   subtype CaptionAnimationHelperBase_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Waypoint2LogHelper_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype WaypointLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access;
   function "=" (Left, Right : WaypointLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array;
   function "=" (Left, Right : WaypointLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References."=";
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype RTSLayer2LogHelper_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype WaypointBehaviorBase_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   procedure Initialize_Fields (This : in out NullPathFindingLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullPathFindingLayer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullPathFindingLayer_Access is
      This : constant NullPathFindingLayer_Access := new NullPathFindingLayer;
   begin
      NullPathFindingLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPathFindingLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   --  throws Exception
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldHandleStartSameAsEnd;

   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionArea;

   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHudPaintable;

   --  throws Exception
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleCost;

   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getParentLayer;

   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRTSLayer2LogHelper;

   --  throws Exception
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      targetGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetGameLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMoveOutOfBuildAreaPath;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setClosestGeographicMapCellHistory;

   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end teleportTo;

   --  throws Exception
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setLoad;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getSurroundingGeographicMapCellPositionList;

   function isSelected (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isSelected;

   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldAddWaypointFromBuilding;

   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isShowMoreCaptionStates;

   --  throws Exception
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackToDXY;

   --  throws Exception
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end buildingChase;

   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTrackingEvent;

   procedure allStop (This : in out NullPathFindingLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end allStop;

   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTopLeftGeographicMapCellPosition;

   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCaptionAnimationHelper;

   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointBehavior;

   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointRunnableLogHelper;

   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGroupInterface;

   --  throws Exception
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isDestroyed;

   function getSourceId (This : in out NullPathFindingLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getSourceId;

   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).buildingChase (allbinaryLayer_Param => allbinaryLayer_Param, cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

begin
   null;
   NULL_PATH_FINDING_LAYER := NullPathFindingLayer_Package.Create;

end org.allbinary.game.layer.NullPathFindingLayer_Package;


