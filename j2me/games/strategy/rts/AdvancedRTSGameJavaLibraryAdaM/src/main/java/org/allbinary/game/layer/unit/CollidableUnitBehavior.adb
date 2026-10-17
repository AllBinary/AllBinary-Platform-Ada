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


package body org.allbinary.game.layer.unit.CollidableUnitBehavior_Package is

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
      Initialize (This.all, collidable);
      return This;
   end Create;

   --  throws Exception
   procedure collideNone (This : in out CollidableUnitBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      rtsLayer : AdvancedRTSGameLayer_Access;
   begin
        This.chase (ownerLayer, collidableInterfaceCompositeInterface);
        rtsLayer := AdvancedRTSGameLayer_Access (collidableInterfaceCompositeInterface);
        if (rtsLayer.getType) = (UnitLayer_Package.getStaticType) then
            This.collideUnit (ownerLayer, UnitLayer_Access (rtsLayer));
        end if;
   end collideNone;

   --  throws Exception
   function steer (This : in out CollidableUnitBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) return Boolean is
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
   procedure chase (This : in out CollidableUnitBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      rtsLayer : AdvancedRTSGameLayer_Access;
      ownerUnitLayer : UnitLayer_Access;
      list : BasicArrayList_Access;
   begin
        rtsLayer := AdvancedRTSGameLayer_Access (collidableInterfaceCompositeInterface);
        if (rtsLayer.getType) = (UnitLayer_Package.getStaticType) then
            if not (This.simpleSteeringVisitor.getList.contains (collidableInterfaceCompositeInterface)) then
                This.simpleSteeringVisitor.getList.add (collidableInterfaceCompositeInterface);
            end if;
            ownerUnitLayer := UnitLayer_Access (ownerLayer);
            list := ownerUnitLayer.getUnitWaypointBehavior.getSteeringVisitorList;
            if not (list.contains (This.simpleSteeringVisitor)) then
                list.add (This.simpleSteeringVisitor);
            end if;
        end if;
   end chase;

   --  throws Exception
   procedure collideUnit (This : in out CollidableUnitBehavior; ownerLayer : CollidableCompositeLayer_Access; unitLayer : UnitLayer_Access) is
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

   procedure steer (This : in out CollidableUnitBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableUnitBehavior'Class (This).steer (ownerLayer, collidableInterfaceCompositeInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end steer;

end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;


package body org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package is

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
      Initialize (This.all);
      return This;
   end Create;

    
   function visit (This : in out SimpleSteeringVisitor; anyType : Java_Object_Access) return Java_Object_Access is
      logUtil : LogUtil_Access;
      ownerLayer : CollidableCompositeLayer_Access;
      allbinaryLayer : CollidableCompositeLayer_Access;
      clear : Boolean;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            begin
                ownerLayer := CollidableCompositeLayer_Access (anyType);
                if (This.getList.size) > (0) then
                    allbinaryLayer := CollidableCompositeLayer_Access (This.getList.get (0));
                    clear := This.steer (ownerLayer, allbinaryLayer);
                    if clear then
                        This.getList.clear;
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
                logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("visit"), e);
                return NullUtil_Package.getInstance.NULL_OBJECT;
                    end;
            end;
   end visit;

   procedure visit (This : in out SimpleSteeringVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := SimpleSteeringVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;


