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


with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
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

package body org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype PositionStrings_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access;
   function "=" (Left, Right : PositionStrings_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array;
   function "=" (Left, Right : PositionStrings_Access_Array) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access;
   function "=" (Left, Right : PositionStrings_Access_Array_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array_Access_Array is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access_Array;
   function "=" (Left, Right : PositionStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array_Access_Array_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PositionStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
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
   procedure Initialize_Fields (This : in out Waypoint2SelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.positionStrings := PositionStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.ENEMY_POSSIBLE_TARGET := To_Unbounded_String (" Enemy Possible Target: ");
      This.CLOSE_RANGE := To_Unbounded_String ("closeRange: ");
      This.SENSOR_RANGE := To_Unbounded_String (" sensorRange: ");
      This.ONLY_TARGETS := To_Unbounded_String (" Only Targets: ");
      This.SHORTER_THAN_CURRENT_TARGET_DISTANCE := To_Unbounded_String (" isShorterThanCurrentTargetDistance: ");
      This.CURRENT_TARGET_DESTROYED := To_Unbounded_String (" isCurrentTargetDestroyed: ");
      This.CURRENT_TARGET_NOT_AVAILABLE := To_Unbounded_String (" isCurrentTargetNotAvailable: ");
      This.PROCESS_POSSIBLE_TARGET := To_Unbounded_String ("selected: processPossibleTarget1");
   end Initialize_Fields;

   procedure Initialize (This : in out Waypoint2SelectedLogHelper'Class) is
   begin
      Waypoint2LogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return Waypoint2SelectedLogHelper_Access is
      This : constant Waypoint2SelectedLogHelper_Access := new Waypoint2SelectedLogHelper;
   begin
      Waypoint2SelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return Waypoint2LogHelper_Access is
   begin
        return Waypoint2LogHelper_Access (Waypoint2SelectedLogHelper_Package.instanceC);
   end getInstance;

   procedure initRange (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; closeRange : Integer; sensorRange : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.CLOSE_RANGE);
        stringBuffer.appendint (closeRange);
        stringBuffer.append (This.SENSOR_RANGE);
        stringBuffer.appendint (sensorRange);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: initRange"));
   end initRange;

   procedure processPossibleTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
      stringBuffer : StringMaker_Access;
   begin
        if (waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets) and then (waypointBehaviorBase.isInSensorRange (CollidableDestroyableDamageableLayer_Access (layerInterface), anotherTargetDistance)) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
            stringBuffer.append (This.ONLY_TARGETS);
            stringBuffer.appendboolean (waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets);
            stringBuffer.append (This.SHORTER_THAN_CURRENT_TARGET_DISTANCE);
            stringBuffer.appendboolean (isShorterThanCurrentTargetDistance);
            stringBuffer.append (This.CURRENT_TARGET_DESTROYED);
            stringBuffer.appendboolean (isCurrentTargetDestroyed);
            stringBuffer.append (This.CURRENT_TARGET_NOT_AVAILABLE);
            stringBuffer.appendboolean (((waypointBehaviorBase.getCurrentTargetLayerInterface) = (null)));
            This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), This.PROCESS_POSSIBLE_TARGET);
        end if;
   end processPossibleTarget;

   procedure processSetTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        stringBuffer.append (This.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" anotherTargetDistance: "));
        stringBuffer.appendint (anotherTargetDistance);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processPossibleTarget2"));
   end processSetTarget;

   procedure processPossibleTargetCloser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        stringBuffer.append (This.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" anotherTargetDistance: "));
        stringBuffer.appendint (anotherTargetDistance);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processPossibleTarget3"));
   end processPossibleTargetCloser;

   procedure setTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getName);
        stringBuffer.append (To_Unbounded_String (" targeting: "));
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" at: "));
        stringBuffer.appendint (anotherTargetDistance);
        stringBuffer.append (To_Unbounded_String (" instead of: "));
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: setTarget"));
   end setTarget;

   procedure setTargetPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Target Destroyed"), Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: setTargetPath"));
   end setTargetPath;

   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Set Path To Target: "));
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetLayerInterface.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentTargetLayerInterface));
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: setTargetPath"));
   end setTargetPathIgnoreNewPath;

   procedure processWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; targetLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; size : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      targetLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Size: "));
        stringBuffer.appendint (size);
        stringBuffer.append (To_Unbounded_String (" Waypoint: "));
        stringBuffer.append (targetLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Target: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentTargetLayerInterface));
        stringBuffer.append (To_Unbounded_String (" isTrackingWaypoint: "));
        stringBuffer.appendboolean (waypointBehaviorBase.isTrackingWaypoint);
        stringBuffer.append (To_Unbounded_String (" WaypointOverridesAttacking: "));
        stringBuffer.appendboolean (waypointBehaviorBase.isWaypointOverridesAttacking);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processWaypoint"));
   end processWaypoint;

   procedure processWaypointTracked (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; waypointBehaviorBase_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      waypointBehaviorBase : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (waypointBehaviorBase_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" currentPathGeographicMapCellPosition: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentPathGeographicMapCellPosition));
        stringBuffer.append (To_Unbounded_String (" nextUnvisitedPathGeographicMapCellPosition: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition));
        stringBuffer.append (To_Unbounded_String (" Tracked: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentGeographicMapCellHistory.getTracked));
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processWaypoint"));
   end processWaypointTracked;

   procedure processWaypointTrackedVisit (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Visited: "));
        stringBuffer.append (This.stringUtil.toString (geographicMapCellPosition));
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processWaypoint"));
   end processWaypointTrackedVisit;

   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; reason : Unbounded_String) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (reason).toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("turnTo"));
   end processWaypointTrackedWithoutProgress;

   procedure wander (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (associatedAdvancedRTSGameLayer.getName, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("wander"));
   end wander;

   procedure targetDestroyed (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Target Destroyed")).toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processTargeting"));
   end targetDestroyed;

   procedure processTargeting (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processTargeting"));
   end processTargeting;

   procedure processTargetingNonWayPoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Targeting Non Waypoint "));
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: processTargeting"));
   end processTargetingNonWayPoint;

   procedure removeWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; waypointLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; reason : Unbounded_String) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      waypointLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (waypointLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (unitWaypointBehavior2.getName);
        stringBuffer.append (To_Unbounded_String (" remove: "));
        stringBuffer.append (waypointLayer.getName);
        stringBuffer.append (To_Unbounded_String (" because: "));
        stringBuffer.append (reason);
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypoint;

   procedure removeWaypointList (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (unitWaypointBehavior2.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypointList;

   procedure removeWaypointClear (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Clearing removed waypoint")).toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypointClear;

   procedure clearTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Cleared Target")).toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: clearTarget"));
   end clearTarget;

   procedure addWaypointFromUser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Adding Waypoint to Selected: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (advancedRTSGameLayer.getParentLayer) /= (null) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromUser;

   procedure targetMovedSoRetarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" - target moved so retargeting")).toString, Waypoint2SelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("turnTo"));
   end targetMovedSoRetarget;

begin
   null;
   instanceC := Waypoint2SelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;


