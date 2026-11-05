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
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package body org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package is

   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
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
   procedure Initialize_Fields (This : in out WaypointSelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointSelectedLogHelper'Class) is
   begin
      WaypointLogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointSelectedLogHelper_Access is
      This : constant WaypointSelectedLogHelper_Access := new WaypointSelectedLogHelper;
   begin
      WaypointSelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointSelectedLogHelper_Access is
   begin
        return WaypointSelectedLogHelper_Access (WaypointSelectedLogHelper_Package.instanceC);
   end getInstance;

   procedure onWaypointEvent (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" onWaypointEvent: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (not org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=" (advancedRTSGameLayer.getParentLayer, null)) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("onWaypointEvent"));
   end onWaypointEvent;

   procedure addWaypointFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Adding Waypoint: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (not org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=" (advancedRTSGameLayer.getParentLayer, null)) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuilding;

   procedure addWaypointFromBuildingList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuildingList;

   procedure insertWaypoint (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointName);
        stringBuffer.append (To_Unbounded_String (" Insert: "));
        stringBuffer.append (rtsLayer.getName);
        stringBuffer.append (To_Unbounded_String (" for Waypoint: "));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypoint;

   procedure insertWaypointList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointName);
        stringBuffer.append (To_Unbounded_String (" Insert: "));
        stringBuffer.append (rtsLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypointList;

   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
      size : Integer;
      stringBuffer : StringMaker_Access;
   begin
        size := pathsList.size;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.START);
        stringBuffer.appendint (size);
        stringBuffer.append (To_Unbounded_String (" -> "));
        stringBuffer.append (This.stringUtil.toString (pathsList));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistoryList;

   procedure moveAwayFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Trying to move away from building")).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: moveAwayFromBuilding"));
   end moveAwayFromBuilding;

   procedure needToMove (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (unitWaypointBehavior.getMovementLogicAsString).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("needToMove"));
   end needToMove;

   procedure setRandomGeographicMapCellHistory (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" pathsList is null")).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistory;

   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; existingCurrentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; currentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingCurrentPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingCurrentPathGeographicMapCellPosition_Param);
      currentPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentPathGeographicMapCellPosition_Param);
   begin
        if (existingCurrentPathGeographicMapCellPosition) = (null) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" currentPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (currentPathGeographicMapCellPosition)).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setCurrentPathGeographicMapCellPosition"));
        end if;
   end setCurrentPathGeographicMapCellPosition;

   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; existingNextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingNextUnvisitedPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingNextUnvisitedPathGeographicMapCellPosition_Param);
      nextUnvisitedPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextUnvisitedPathGeographicMapCellPosition_Param);
   begin
        if (existingNextUnvisitedPathGeographicMapCellPosition) /= (nextUnvisitedPathGeographicMapCellPosition) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" nextUnvisitedPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (nextUnvisitedPathGeographicMapCellPosition)).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setNextUnvisitedPathGeographicMapCellPosition"));
        end if;
   end setNextUnvisitedPathGeographicMapCellPosition;

begin
   null;
   instanceC := WaypointSelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;


