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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out RTSLayer2SelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TRACK_TO_FIRE_OR_MOVE := To_Unbounded_String ("trackTo:fireOrMove");
      This.BUILDING_CHASE := To_Unbounded_String ("buildingChase");
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayer2SelectedLogHelper'Class) is
   begin
      RTSLayer2LogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayer2SelectedLogHelper_Access is
      This : constant RTSLayer2SelectedLogHelper_Access := new RTSLayer2SelectedLogHelper;
   begin
      RTSLayer2SelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayer2SelectedLogHelper_Access is
   begin
        return RTSLayer2SelectedLogHelper_Access (RTSLayer2SelectedLogHelper_Package.instanceC);
   end getInstance;

   procedure steeringUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Up")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.TRACK_TO_FIRE_OR_MOVE);
   end steeringUp;

   procedure steeringFireOrStop (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Fire/All Stop")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.TRACK_TO_FIRE_OR_MOVE);
   end steeringFireOrStop;

   procedure buildingAbove (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Above")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingAbove;

   procedure buildingChaseLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Left: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseLeft;

   procedure buildingChaseRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Right: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseRight;

   procedure buildingDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Below")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingDown;

   procedure buildingChaseDown (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Down: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseDown;

   procedure buildingChaseUp (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" steering - Going Up: ")).appendint (angle).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingChaseUp;

   procedure buildingLeft (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Left")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingLeft;

   procedure buildingRight (This : in out RTSLayer2SelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      pathFindingLayerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (pathFindingLayerInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (pathFindingLayerInterface.getName).append (To_Unbounded_String (" Building Right")).toString, RTSLayer2SelectedLogHelper_Access'(This'Unchecked_Access), This.BUILDING_CHASE);
   end buildingRight;

begin
   null;
   instanceC := RTSLayer2SelectedLogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayer2SelectedLogHelper_Package;


