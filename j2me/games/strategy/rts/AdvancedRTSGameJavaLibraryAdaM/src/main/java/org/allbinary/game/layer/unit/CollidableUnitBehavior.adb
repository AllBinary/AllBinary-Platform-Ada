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
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.TiledLayerUtil_Package; use org.allbinary.game.layer.TiledLayerUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

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
   procedure Initialize_Fields (This : in out CollidableUnitBehavior'Class) is
   begin
      null;
      This.layerPartialCellPositionsUtil := LayerPartialCellPositionsUtil_Package.getInstance;
      This.simpleSteeringVisitor := SimpleSteeringVisitor_Package.Create;
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
        angle := (angleInfo.getAngle) - (angleInfo2.getAngle);
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
            if not (This.simpleSteeringVisitor.getList.contains (Java_Object_Access (collidableInterfaceCompositeInterface))) then
                This.simpleSteeringVisitor.getList.add (Java_Object_Access (collidableInterfaceCompositeInterface));
            end if;
            ownerUnitLayer := UnitLayer_Access (ownerLayer);
            list := ownerUnitLayer.getUnitWaypointBehavior.getSteeringVisitorList;
            if not (list.contains (Java_Object_Access (This.simpleSteeringVisitor))) then
                list.add (Java_Object_Access (This.simpleSteeringVisitor));
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
      Java_Result : constant Boolean := CollidableUnitBehavior'Class (This).steer (ownerLayer_Param, collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end steer;

end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.TiledLayerUtil_Package; use org.allbinary.game.layer.TiledLayerUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

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
   procedure Initialize_Fields (This : in out SimpleSteeringVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleSteeringVisitor'Class) is
   begin
      SteeringVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SimpleSteeringVisitor_Access is
      This : constant SimpleSteeringVisitor_Access := new SimpleSteeringVisitor;
   begin
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
                if (CollidableUnitBehavior'Class (This).getList.size) > (0) then
                    allbinaryLayer := CollidableCompositeLayer_Access (CollidableUnitBehavior'Class (This).getList.get (0));
                    clear := CollidableUnitBehavior'Class (This).steer (ownerLayer, allbinaryLayer);
                    if clear then
                        CollidableUnitBehavior'Class (This).getList.clear;
                        return NullUtil_Package.getInstance.NULL_OBJECT;
                    end if;
                    return BooleanFactory_Package.getInstance.TRUE;
                end if;
                return NullUtil_Package.getInstance.NULL_OBJECT;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, CollidableUnitBehavior_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
                return NullUtil_Package.getInstance.NULL_OBJECT;
                    end;
            end;
   end visit;

   procedure visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := SimpleSteeringVisitor'Class (This).visit (anyType_Param);
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


