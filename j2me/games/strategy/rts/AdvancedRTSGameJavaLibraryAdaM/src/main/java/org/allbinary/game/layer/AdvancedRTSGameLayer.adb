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


package body org.allbinary.game.layer.AdvancedRTSGameLayer_Package is

   procedure Initialize_Fields (This : in out AdvancedRTSGameLayer'Class) is
   begin
      null;
      
      
      
      This.parentLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.waypointBehaviorBase := NullTickable_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createSimulated return AdvancedRTSGameLayer_Access is
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := NullAnimationFactory_Package.getFactoryInstance;
        nullIndexedAnimationInterfaceFactoryInterface := NullIndexedAnimationFactory_Package.getFactoryInstance;
        return AdvancedRTSGameLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition_Package.Create);
   end createSimulated;

   procedure Initialize (This : in out AdvancedRTSGameLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer; viewPosition : ViewPositionBase_Access) is
   begin
        RTSLayer_Package.Initialize (This, remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        Initialize_Fields (This);
        This.setVisible (False);
        This.setWaypointBehavior (WaypointBehaviorBase_Package.Create);
        This.shakeListener := advancedRTSProperties.shakeListener;
        This.vibration := advancedRTSProperties.vibration;
        This.duration := advancedRTSProperties.duration;
        This.setParentLayer (parentLayer);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer; viewPosition : ViewPositionBase_Access) return AdvancedRTSGameLayer_Access is
      This : constant AdvancedRTSGameLayer_Access := new AdvancedRTSGameLayer;
   begin
      AdvancedRTSGameLayer_Package.Initialize (This.all, remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out AdvancedRTSGameLayer; geographicMapInterface : BasicGeographicMap_Access) is
   begin
        RTSLayer (This).updateWaypointBehavior (geographicMapInterface);
        This.getWaypointBehavior.getWaypoint.setAllBinaryGameLayerManager (This.allBinaryGameLayerManagerP);
   end updateWaypointBehavior;

   procedure initVisibility (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if (advancedRTSPlayerLayerInterface.isLocalPlayer) or else ((advancedRTSPlayerLayerInterface.getGameType) = (GameTypeFactory_Package.getInstance.BOT)) then
            This.setVisible (True);
        else
            This.setVisible (False);
        end if;
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
   begin
        RTSLayer (This).construct (rtsPlayerLayerInterface);
        This.initVisibility (rtsPlayerLayerInterface);
        BuildingEventHandler_Package.getInstance.addListenerInterface (This.getWaypointBehavior.getWaypoint);
   end construct;

   --  throws Exception
   procedure setDestroyed (This : in out AdvancedRTSGameLayer; destroyed : Boolean) is
   begin
        RTSLayer (This).setDestroyed (destroyed);
        if This.isDestroyed then
            BuildingEventHandler_Package.getInstance.removeListener (This.getWaypointBehavior.getWaypoint);
            BuildingEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
            DestroyedEventHandler_Package.getInstance.addListener (This'Unchecked_Access);
            RTSLayerUtil_Package.getInstance.destroyAndClear (This.getWaypointBehavior.getOwnedWaypointList);
        end if;
   end setDestroyed;

   function getParentLayer (This : in out AdvancedRTSGameLayer) return PathFindingLayerInterface_Access is
   begin
        return This.parentLayer;
   end getParentLayer;

   procedure setParentLayer (This : in out AdvancedRTSGameLayer; parentLayer : PathFindingLayerInterface_Access) is
   begin
        This.parentLayer := parentLayer;
   end setParentLayer;

   function getWaypointBehavior (This : in out AdvancedRTSGameLayer) return WaypointBehaviorBase_Access is
   begin
        return WaypointBehaviorBase_Access (This.waypointBehaviorBase);
   end getWaypointBehavior;

   procedure setWaypointBehavior (This : in out AdvancedRTSGameLayer; unitWaypointHelper : WaypointBehaviorBase_Access) is
   begin
        This.waypointBehaviorBase := unitWaypointHelper;
   end setWaypointBehavior;

   function getWaypointLogHelper (This : in out AdvancedRTSGameLayer) return WaypointLogHelper_Access is
   begin
        return This.waypointLogHelperP;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out AdvancedRTSGameLayer) return Waypoint2LogHelper_Access is
   begin
        return This.waypoint2LogHelperP;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out AdvancedRTSGameLayer) return WaypointRunnableLogHelper_Access is
   begin
        return This.waypointRunnableLogHelperP;
   end getWaypointRunnableLogHelper;

   function shouldAddWaypointFromBuilding (This : in out AdvancedRTSGameLayer) return Boolean is
      parentAdvancedRTSGameLayer : AdvancedRTSGameLayer_Access;
   begin
        if (This.parentLayer) /= (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER) then
            parentAdvancedRTSGameLayer := AdvancedRTSGameLayer_Access (This.parentLayer);
            if (parentAdvancedRTSGameLayer.getType) /= (UnitLayer_Package.getStaticType) then
                return True;
            end if;
        end if;
        return False;
   end shouldAddWaypointFromBuilding;

   function isWaypointListEmptyOrOnlyTargets (This : in out AdvancedRTSGameLayer) return Boolean is
   begin
        if (This.getType) /= (UnitLayer_Package.getStaticType) then
            return True;
        end if;
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) return Boolean is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      buildingDirection : Direction_Access;
      angleInfo : AngleInfo_Access;
      angle : Integer;
      gameKeyEventFactory : GameKeyEventFactory_Access;
   begin
        geographicMapCellPosition := This.getCurrentGeographicMapCellPosition;
        buildingDirection := GeographicMapDirectionUtil_Package.getInstance.getDirectionFromCellPositionToAdjacentCellPosition (geographicMapCellPosition, cellPosition);
        angleInfo := This.getRotationAnimationInterface.getAngleInfoP;
        angle := FrameUtil_Package.getInstance.adjustAngleToFrameAngle ((angleInfo.getAngle) + (90));
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if (buildingDirection) = (DirectionFactory_Package.getInstance.UP) then
            This.rtsLayer2LogHelper.buildingAbove (This'Unchecked_Access);
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.LEFT));
                if (angle) <= (190) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.RIGHT));
                if (angle) >= (170) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.DOWN) then
            This.rtsLayer2LogHelper.buildingDown (This'Unchecked_Access);
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.RIGHT));
                if (angle) > (315) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.LEFT));
                if (angle) < (45) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.LEFT) then
            This.rtsLayer2LogHelper.buildingLeft;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.LEFT));
                if (angle) < (135) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.RIGHT));
                if (angle) > (45) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.RIGHT) then
            This.rtsLayer2LogHelper.buildingRight;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.RIGHT));
                if (angle) > (225) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (This'Unchecked_Access, angle);
                This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.LEFT));
                if ((angle) < (315)) and then ((angle) > (180)) then
                    return True;
                end if;
            end if;
        else
            return True;
        end if;
        return False;
   end buildingChase;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out AdvancedRTSGameLayer) return BasicArrayList_Access is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.geographicMapCellPositionAreaBase.update (geographicMapInterface);
        return This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
   end getSurroundingGeographicMapCellPositionList;

   procedure setSelected (This : in out AdvancedRTSGameLayer; selected : Boolean) is
   begin
        RTSLayer (This).setSelected (selected);
        if This.debug then
            if selected then
                This.waypointLogHelperP := WaypointSelectedLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2SelectedLogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableSelectedLogHelper_Package.getInstance;
            else
                This.waypointLogHelperP := WaypointLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2LogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableLogHelper_Package.getInstance;
            end if;
        end if;
   end setSelected;

   procedure onDestroyed (This : in out AdvancedRTSGameLayer; destroyedEvent : DestroyedEvent_Access) is
      layerInterface : AllBinaryLayer_Access;
      waypoint : WaypointBase_Access;
   begin
        begin
            layerInterface := destroyedEvent.getLayerInterface;
            if (layerInterface) = (This'Unchecked_Access) then
                DestroyedEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
                waypoint := WaypointBase_Access (This.getWaypointBehavior.getWaypoint);
                waypoint.reset;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onDestroyed"), e);
                end;
        end;
   end onDestroyed;

   procedure buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Boolean := AdvancedRTSGameLayer'Class (This).buildingChase (allbinaryLayer, cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

end org.allbinary.game.layer.AdvancedRTSGameLayer_Package;


