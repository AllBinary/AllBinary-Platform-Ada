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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.TiledLayerUtil_Package; use org.allbinary.game.layer.TiledLayerUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package; use org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;
with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References;
with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.unit.CollidableUnitBehavior_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package TiledLayerUtil_Package renames Standard.org.allbinary.game.layer.TiledLayerUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype SimpleSteeringVisitor_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableUnitBehavior'Class) is
   begin
      null;
      This.layerPartialCellPositionsUtil := LayerPartialCellPositionsUtil_Package.getInstance;
      This.simpleSteeringVisitor_Var := SimpleSteeringVisitor_Package.Create (org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableUnitBehavior'Class; collidable : Boolean) is
   begin
        CollidableRTSBehavior_Package.Initialize (This, collidable);
        Initialize_Fields (This);
   end Initialize;

   function Create (collidable : Boolean) return CollidableUnitBehavior_Access is
      This : constant CollidableUnitBehavior_Access := new CollidableUnitBehavior;
   begin
      CollidableUnitBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   --  throws Exception
   procedure collideNone (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      rtsLayer : AdvancedRTSGameLayer_Access;
   begin
        CollidableUnitBehavior'Class (This).chase (ownerLayer, collidableInterfaceCompositeInterface);
        rtsLayer := AdvancedRTSGameLayer_Access (collidableInterfaceCompositeInterface);
        if (rtsLayer.getType) = (UnitLayer_Package.getStaticType) then
            CollidableUnitBehavior'Class (This).collideUnit (ownerLayer, UnitLayer_Access (rtsLayer));
        end if;
   end collideNone;

   --  throws Exception
   function steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      ownerUnitLayer : UnitLayer_Access;
      unitLayer : UnitLayer_Access;
      angleInfo2 : AngleInfo_Access;
      angleInfo : AngleInfo_Access;
      angle : Integer;
   begin
        ownerUnitLayer := UnitLayer_Access (ownerLayer);
        unitLayer := UnitLayer_Access (collidableInterfaceCompositeInterface);
        angleInfo2 := unitLayer.getRotationAnimationInterface.getAngleInfoP;
        angleInfo := ownerUnitLayer.getRotationAnimationInterface.getAngleInfoP;
        angle := (Integer (angleInfo.getAngle)) - (Integer (angleInfo2.getAngle));
        if ((angle) < (90)) or else ((angle) > (270)) then
            return True;
        elsif ((angle) >= (90)) or else ((angle) <= (270)) then
            ownerUnitLayer.getGameKeyEventList.add (GameKeyEventFactory_Package.getInstance.getInstanceForKey (ownerUnitLayer, Canvas_Package.RIGHT));
            return False;
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Error")));
   end steer;

   --  throws Exception
   procedure chase (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      rtsLayer : AdvancedRTSGameLayer_Access;
      ownerUnitLayer : UnitLayer_Access;
      list : BasicArrayList_Access;
   begin
        rtsLayer := AdvancedRTSGameLayer_Access (collidableInterfaceCompositeInterface);
        if (rtsLayer.getType) = (UnitLayer_Package.getStaticType) then
            if not (This.simpleSteeringVisitor_Var.getList.contains (Java_Object_Access (collidableInterfaceCompositeInterface))) then
                This.simpleSteeringVisitor_Var.getList.add (Java_Object_Access (collidableInterfaceCompositeInterface));
            end if;
            ownerUnitLayer := UnitLayer_Access (ownerLayer);
            list := ownerUnitLayer.getUnitWaypointBehavior.getSteeringVisitorList;
            if not (list.contains (Java_Object_Access (This.simpleSteeringVisitor_Var))) then
                list.add (Java_Object_Access (This.simpleSteeringVisitor_Var));
            end if;
        end if;
   end chase;

   --  throws Exception
   procedure collideUnit (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      unitLayer : constant UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
      ownerUnitLayer : UnitLayer_Access;
      partialPositionList : BasicArrayList_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      basicGeographicMap : BasicGeographicMap_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
      tiledLayerUtil : TiledLayerUtil_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      diff : Integer;
      x : Integer;
      y : Integer;
   begin
        ownerUnitLayer := UnitLayer_Access (ownerLayer);
        partialPositionList := UnitLayer_Package.getPartialpositionlist;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (ownerUnitLayer.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        basicGeographicMap := geographicMapInterface;
        dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
        tiledLayerUtil := TiledLayerUtil_Package.getInstance;
        tiledLayer := basicGeographicMap.getAllBinaryTiledLayer;
        if ((ownerLayer.getXP) < (unitLayer.getXP)) and then ((ownerLayer.getX2) > (unitLayer.getXP)) then
            diff := (ownerLayer.getWidth) + (1);
            This.layerPartialCellPositionsUtil.getAllDXY (basicGeographicMap, ownerLayer, -(diff), 0, partialPositionList);
            if not (dropCellPositionHistory.anyCellPositionWithDrop (partialPositionList)) then
                x := (unitLayer.getXP) - (diff);
                y := ownerLayer.getYP;
                x := tiledLayerUtil.keepOnMapX (tiledLayer, x, ownerLayer.getWidth);
                y := tiledLayerUtil.keepOnMapY (tiledLayer, y, ownerLayer.getHeight);
                ownerLayer.setPosition (x, y, ownerLayer.getZP);
            end if;
            This.layerPartialCellPositionsUtil.getAllDXY (basicGeographicMap, unitLayer, diff, 0, partialPositionList);
            if not (dropCellPositionHistory.anyCellPositionWithDrop (partialPositionList)) then
                x := (unitLayer.getXP) + (diff);
                y := unitLayer.getYP;
                x := tiledLayerUtil.keepOnMapX (tiledLayer, x, unitLayer.getWidth);
                y := tiledLayerUtil.keepOnMapY (tiledLayer, y, unitLayer.getHeight);
                unitLayer.setPosition (x, y, unitLayer.getZP);
            end if;
        end if;
        if ((ownerLayer.getYP) < (unitLayer.getYP)) and then ((ownerLayer.getY2) > (unitLayer.getYP)) then
            diff := (ownerLayer.getHeight) + (1);
            This.layerPartialCellPositionsUtil.getAllDXY (basicGeographicMap, ownerLayer, 0, -(diff), partialPositionList);
            if not (dropCellPositionHistory.anyCellPositionWithDrop (partialPositionList)) then
                x := ownerLayer.getXP;
                y := (unitLayer.getYP) - (diff);
                x := tiledLayerUtil.keepOnMapX (tiledLayer, x, ownerLayer.getWidth);
                y := tiledLayerUtil.keepOnMapY (tiledLayer, y, ownerLayer.getHeight);
                ownerLayer.setPosition (x, y, ownerLayer.getZP);
            end if;
            This.layerPartialCellPositionsUtil.getAllDXY (basicGeographicMap, unitLayer, 0, diff, partialPositionList);
            if not (dropCellPositionHistory.anyCellPositionWithDrop (partialPositionList)) then
                x := unitLayer.getXP;
                y := (unitLayer.getYP) + (diff);
                x := tiledLayerUtil.keepOnMapX (tiledLayer, x, unitLayer.getWidth);
                y := tiledLayerUtil.keepOnMapY (tiledLayer, y, unitLayer.getHeight);
                unitLayer.setPosition (x, y, unitLayer.getZP);
            end if;
        end if;
   end collideUnit;

   procedure steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollidableUnitBehavior'Class (This).steer (ownerLayer_Param => ownerLayer_Param, collidableInterfaceCompositeInterface_Param => collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end steer;

end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.TiledLayerUtil_Package; use org.allbinary.game.layer.TiledLayerUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package TiledLayerUtil_Package renames Standard.org.allbinary.game.layer.TiledLayerUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References."=";
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   procedure Initialize_Fields (This : in out SimpleSteeringVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleSteeringVisitor'Class) is
   begin
      SteeringVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create (Java_Outer_Param : org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access) return SimpleSteeringVisitor_Access is
      This : constant SimpleSteeringVisitor_Access := new SimpleSteeringVisitor;
   begin
      This.Java_Outer := Java_Outer_Param;
      SimpleSteeringVisitor_Package.Initialize (This.all);
      return This;
   end Create;

    
   function visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      logUtil : LogUtil_Access;
      ownerLayer : CollidableCompositeLayer_Access;
      allbinaryLayer : CollidableCompositeLayer_Access;
      clear : Boolean;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            begin
                ownerLayer := CollidableCompositeLayer_Access (anyType);
                if (SimpleSteeringVisitor'Class (This).getList.size) > (0) then
                    allbinaryLayer := CollidableCompositeLayer_Access (SimpleSteeringVisitor'Class (This).getList.get (0));
                    clear := This.Java_Outer.steer (ownerLayer, allbinaryLayer);
                    if clear then
                        SimpleSteeringVisitor'Class (This).getList.clear;
                        return NullUtil_Package.getInstance.NULL_OBJECT;
                    end if;
                    return Java_Box (BooleanFactory_Package.getInstance.TRUE);
                end if;
                return NullUtil_Package.getInstance.NULL_OBJECT;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, SimpleSteeringVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
                return NullUtil_Package.getInstance.NULL_OBJECT;
                    end;
            end;
   end visit;

   procedure visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := SimpleSteeringVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return SimpleSteeringVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := SimpleSteeringVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;


