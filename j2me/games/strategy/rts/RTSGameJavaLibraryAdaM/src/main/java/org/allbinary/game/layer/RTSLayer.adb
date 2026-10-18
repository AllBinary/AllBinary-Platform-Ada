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


package body org.allbinary.game.layer.RTSLayer_Package is

   procedure Initialize_Fields (This : in out RTSLayer'Class) is
   begin
      null;
      This.debug := True;
      This.showMoreCaptionStates := This.debug;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.rtsLayer2LogHelper := RTSLayer2LogHelper_Package.getInstance;
      This.waypointLogHelperP := WaypointLogHelper_Package.getInstance;
      This.waypoint2LogHelperP := Waypoint2LogHelper_Package.getInstance;
      This.waypointRunnableLogHelperP := WaypointRunnableLogHelper_Package.getInstance;
      
      
      
      
      
      
      
      This.buildFrameTimeHelper := TimeDelayHelper_Package.Create (50);
      
      
      
      
      
      
      This.fireTimeHelper := TimeDelayHelper_Package.Create (700);
      
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.BUILD_VALUE := 63;
      
      This.healthInterface := Health_Package.NULL_HEALTH;
      This.level := 1;
      This.maxLevel := 1;
      This.hackVerticleBuild := This.BUILD_VALUE;
      This.slightAngle := 0;
      This.percentCompleteP := 0;
      This.destroyed := False;
      This.selected := False;
      This.rtsLayerUtil := RTSLayerUtil_Package.getInstance;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createSimulatedInstance (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class) return RTSLayer_Access is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := NullAnimationFactory_Package.getFactoryInstance;
        nullIndexedAnimationInterfaceFactoryInterface := NullIndexedAnimationFactory_Package.getFactoryInstance;
        return RTSLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition_Package.Create);
   end createSimulatedInstance;

   procedure Initialize (This : in out RTSLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      rtsFormInput : constant RTSFormInput_Access := RTSFormInput_Access (rtsFormInput_Param);
      animationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
      emptyAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (emptyAnimationInterfaceFactoryInterface_Param);
      baseAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (baseAnimationInterfaceFactoryInterface_Param);
      buildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (buildAnimationInterfaceFactoryInterface_Param);
      verticleBuildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (verticleBuildAnimationInterfaceFactoryInterface_Param);
      proceduralAnimationInterfaceFactoryInterface : constant ProceduralAnimationInterfaceFactoryInterface_Access := ProceduralAnimationInterfaceFactoryInterface_Access (proceduralAnimationInterfaceFactoryInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
      animation : Animation_Access;
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, groupInterface, name, rectangle, viewPosition);
        Initialize_Fields (This);
        RTSLayer'Class (This).initInputProcessors;
        This.rootName := rootName;
        This.healthInterface := healthInterface;
        This.rtsFormInput := rtsFormInput;
        RTSLayer'Class (This).setPosition (x, y, This.z);
        This.verticleBuildAnimationInterface := IndexedAnimation_Access (verticleBuildAnimationInterfaceFactoryInterface.getInstance (0));
        This.buildAnimationInterface := buildAnimationInterfaceFactoryInterface.getInstance (0);
        This.baseAnimationInterface := baseAnimationInterfaceFactoryInterface.getInstance (0);
        This.emptyAnimationInterface := IndexedAnimation_Access (emptyAnimationInterfaceFactoryInterface.getInstance (0));
        This.indexedButShouldBeRotationAnimationInterface := IndexedAnimation_Access (animationInterfaceFactoryInterface.getInstance (0));
        This.initAnimationInterface := This.indexedButShouldBeRotationAnimationInterface;
        This.destroyAnimationInterface := IndexedAnimation_Access (proceduralAnimationInterfaceFactoryInterface.getInstanceAnimation (This.indexedButShouldBeRotationAnimationInterface));
        animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        This.rangeAnimation := animation;
        This.initRangeAnimation := animation;
        This.sensorRangeAnimation := animation;
        This.initSensorRangeAnimation := animation;
        This.animationInterface := This.initAnimationInterface;
        This.geographicMapCellPositionAreaBase := GeographicMapCellPositionArea_Package.Create (RTSLayer_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return RTSLayer_Access is
      This : constant RTSLayer_Access := new RTSLayer;
   begin
      RTSLayer_Package.Initialize (This.all, remoteInfo_Param, groupInterface, rootName, name, healthInterface_Param, rtsFormInput_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out RTSLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      viewPosition2 : TileLayerPositionIntoViewPosition_Access;
   begin
        MultiPlayerGameLayer (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        viewPosition2 := TileLayerPositionIntoViewPosition_Access (RTSLayer'Class (This).getViewPosition);
        viewPosition2.setTiledLayer (tiledLayer);
        RTSLayer'Class (This).updateWaypointBehavior (geographicMapInterface);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out RTSLayer; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        This.geographicMapCellPositionAreaBase.update (geographicMapInterface);
   end updateWaypointBehavior;

   --  throws Exception
   procedure construct (This : in out RTSLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        ViewPositionEventHandler_Package.getInstance.addListener (AllBinaryLayer_Access (RTSLayer_Access'(This'Unchecked_Access)));
        This.animationInterface := This.buildAnimationInterface;
        This.hackVerticleBuild := 0;
   end construct;

   procedure select_Id (This : in out RTSLayer) is
   begin
        This.rangeAnimation := This.initRangeAnimation;
        This.sensorRangeAnimation := This.initSensorRangeAnimation;
        RTSLayer'Class (This).setSelected (True);
   end select_Id;

   procedure deselect (This : in out RTSLayer) is
      animation : Animation_Access;
   begin
        animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        This.rangeAnimation := animation;
        This.sensorRangeAnimation := animation;
        RTSLayer'Class (This).setSelected (False);
   end deselect;

   procedure setSelected (This : in out RTSLayer; selected : Boolean) is
   begin
        This.selected := selected;
   end setSelected;

   function isSelected (This : in out RTSLayer) return Boolean is
   begin
        return This.selected;
   end isSelected;

   function getPercentComplete (This : in out RTSLayer) return Integer is
   begin
        return This.percentCompleteP;
   end getPercentComplete;

   function getScrollSelectionForm (This : in out RTSLayer) return ScrollSelectionForm_Access is
   begin
        return ScrollSelectionForm_Package.getNullScrollSelectionForm;
   end getScrollSelectionForm;

   procedure initInputProcessors (This : in out RTSLayer) is
   begin
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessors;

   --  throws Exception
   procedure processBuiltTick (This : in out RTSLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        This.animationInterface := This.indexedButShouldBeRotationAnimationInterface;
   end processBuiltTick;

   procedure processTick (This : in out RTSLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        begin
            if RTSLayer'Class (This).isCompleted then
                RTSLayer'Class (This).processBuiltTick (allBinaryLayerManager);
            else
                RTSLayer'Class (This).build;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, RTSLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("processTick"), e);
                end;
        end;
   end processTick;

   --  throws Exception
   procedure processInput (This : in out RTSLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        null;
   end processInput;

   procedure reload (This : in out RTSLayer) is
   begin
        null;
   end reload;

   procedure onMovement (This : in out RTSLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
   begin
        null;
   end onMovement;

   --  throws Exception
   procedure onMovementFound (This : in out RTSLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
   begin
        null;
   end onMovementFound;

   procedure paint (This : in out RTSLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        MultiPlayerGameLayer (This).paintFirst (graphics);
        viewPosition := RTSLayer'Class (This).getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        RTSLayer'Class (This).getAnimationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   --  throws Exception
   procedure damage (This : in out RTSLayer; damage : Integer; damageType : Integer) is
   begin
        null;
   end damage;

   function getSourceId (This : in out RTSLayer) return Integer is
   begin
        return RTSLayer_Package.id;
   end getSourceId;

   procedure downgrade (This : in out RTSLayer) is
   begin
        This.rtsLayerUtil.downgrade (RTSLayer_Access'(This'Unchecked_Access));
   end downgrade;

   procedure upgrade (This : in out RTSLayer) is
   begin
        This.rtsLayerUtil.upgrade (RTSLayer_Access'(This'Unchecked_Access));
   end upgrade;

   function isCompleted (This : in out RTSLayer) return Boolean is
   begin
        if (This.hackVerticleBuild) < (This.BUILD_VALUE) then
            return False;
        else
            return True;
        end if;
   end isCompleted;

   --  throws Exception
   procedure build (This : in out RTSLayer) is
   begin
        if This.buildFrameTimeHelper.isTimeTNT then
            This.animationInterface := This.buildAnimationInterface;
            This.verticleBuildAnimationInterface.nextFrame;
            This.hackVerticleBuild := This.hackVerticleBuild + 1;
        end if;
        This.percentCompleteP := ((100) * (This.hackVerticleBuild)) / (This.BUILD_VALUE);
        RTSLayer'Class (This).getHudPaintable.updateInfo;
   end build;

   function isSelfUpgradeable (This : in out RTSLayer) return Boolean is
   begin
        return True;
   end isSelfUpgradeable;

   function getCost (This : in out RTSLayer) return Integer is
   begin
        return This.rtsLayerUtil.getCost (RTSLayer_Access'(This'Unchecked_Access));
   end getCost;

   function getDowngradeCost (This : in out RTSLayer) return Integer is
   begin
        return This.rtsLayerUtil.getDowngradeCost (RTSLayer_Access'(This'Unchecked_Access));
   end getDowngradeCost;

   function getUpgradeCost (This : in out RTSLayer) return Integer is
   begin
        return This.rtsLayerUtil.getUpgradeCost (RTSLayer_Access'(This'Unchecked_Access));
   end getUpgradeCost;

   function isUpgradeable (This : in out RTSLayer) return Boolean is
   begin
        if (RTSLayer'Class (This).getLevel) < (RTSLayer'Class (This).getMaxLevel) then
            return True;
        else
            return False;
        end if;
   end isUpgradeable;

   function isDowngradeable (This : in out RTSLayer) return Boolean is
   begin
        if (RTSLayer'Class (This).getLevel) > (1) then
            return True;
        else
            return False;
        end if;
   end isDowngradeable;

   function getLevel (This : in out RTSLayer) return Integer is
   begin
        return This.level;
   end getLevel;

   procedure setLevel (This : in out RTSLayer; level : Integer) is
   begin
        This.level := level;
   end setLevel;

   function getVerticleBuildAnimationInterface (This : in out RTSLayer) return Animation_Access is
   begin
        return This.verticleBuildAnimationInterface;
   end getVerticleBuildAnimationInterface;

   function getAnimationInterface (This : in out RTSLayer) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setAnimationInterface (This : in out RTSLayer; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   --  throws Exception
   procedure setTarget (This : in out RTSLayer; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      targetGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetGameLayer_Param);
      anotherTargetDistance : Integer;
      waypointBehaviorBase : WaypointBehaviorBase_Access;
   begin
        anotherTargetDistance := This.layerDistanceUtil.getDistance (AllBinaryLayer_Access (RTSLayer_Access'(This'Unchecked_Access)), AllBinaryLayer_Access (targetGameLayer));
        waypointBehaviorBase := RTSLayer'Class (This).getWaypointBehavior;
        waypointBehaviorBase.setTargetWithDistance (PathFindingLayerInterface_Access (targetGameLayer), anotherTargetDistance);
   end setTarget;

   function createHudPaintable (This : in out RTSLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end createHudPaintable;

   function getHudPaintable (This : in out RTSLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHudPaintable;

   function getMaxLevel (This : in out RTSLayer) return Integer is
   begin
        return This.maxLevel;
   end getMaxLevel;

   procedure setMaxLevel (This : in out RTSLayer; maxLevel : Integer) is
   begin
        This.maxLevel := maxLevel;
   end setMaxLevel;

   function getHealthInterface (This : in out RTSLayer) return Health_Access is
   begin
        return This.healthInterface;
   end getHealthInterface;

   procedure setHealthInterface (This : in out RTSLayer; healthInterface_Param : access Health_Package.Health'Class) is
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
   begin
        This.healthInterface := healthInterface;
   end setHealthInterface;

   function getRTSFormInput (This : in out RTSLayer) return RTSFormInput_Access is
   begin
        return This.rtsFormInput;
   end getRTSFormInput;

   --  throws Exception
   function isDestroyed (This : in out RTSLayer) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   --  throws Exception
   procedure setDestroyed (This : in out RTSLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if RTSLayer'Class (This).isDestroyed then
            DestroyedLayerProcessor_Package.getInstance.add (RTSLayer_Access'(This'Unchecked_Access));
            ViewPositionEventHandler_Package.getInstance.removeListener (RTSLayer_Access'(This'Unchecked_Access));
        end if;
   end setDestroyed;

   function getEndGeographicMapCellPositionList (This : in out RTSLayer) return BasicArrayList_Access is
   begin
        return This.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
   end getEndGeographicMapCellPositionList;

   function getGeographicMapCellPositionArea (This : in out RTSLayer) return GeographicMapCellPositionAreaBase_Access is
   begin
        return This.geographicMapCellPositionAreaBase;
   end getGeographicMapCellPositionArea;

   function shouldHandleStartSameAsEnd (This : in out RTSLayer) return Boolean is
   begin
        return True;
   end shouldHandleStartSameAsEnd;

   --  throws Exception
   procedure handleCost (This : in out RTSLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        null;
   end handleCost;

   function getWaypointBehavior (This : in out RTSLayer) return WaypointBehaviorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointBehavior;

   function getParentLayer (This : in out RTSLayer) return PathFindingLayerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getParentLayer;

   function getRTSLayer2LogHelper (This : in out RTSLayer) return RTSLayer2LogHelper_Access is
   begin
        return This.rtsLayer2LogHelper;
   end getRTSLayer2LogHelper;

   function getWaypointLogHelper (This : in out RTSLayer) return WaypointLogHelper_Access is
   begin
        return This.waypointLogHelperP;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out RTSLayer) return Waypoint2LogHelper_Access is
   begin
        return This.waypoint2LogHelperP;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out RTSLayer) return WaypointRunnableLogHelper_Access is
   begin
        return This.waypointRunnableLogHelperP;
   end getWaypointRunnableLogHelper;

   function shouldAddWaypointFromBuilding (This : in out RTSLayer) return Boolean is
   begin
        return False;
   end shouldAddWaypointFromBuilding;

   function getCaptionAnimationHelper (This : in out RTSLayer) return CaptionAnimationHelperBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCaptionAnimationHelper;

   function isShowMoreCaptionStates (This : in out RTSLayer) return Boolean is
   begin
        return This.showMoreCaptionStates;
   end isShowMoreCaptionStates;

   --  throws Exception
   procedure init (This : in out RTSLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        null;
   end init;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out RTSLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   function getTopLeftGeographicMapCellPosition (This : in out RTSLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTopLeftGeographicMapCellPosition;

   function getMoveOutOfBuildAreaPath (This : in out RTSLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMoveOutOfBuildAreaPath;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out RTSLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        null;
   end setClosestGeographicMapCellHistory;

   procedure teleportTo (This : in out RTSLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        null;
   end teleportTo;

   --  throws Exception
   procedure setLoad (This : in out RTSLayer; resource : Integer) is
   begin
        null;
   end setLoad;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out RTSLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getSurroundingGeographicMapCellPositionList;

   --  throws Exception
   procedure trackTo (This : in out RTSLayer; reason : Unbounded_String) is
   begin
        null;
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out RTSLayer; dx : Integer; dy : Integer) is
   begin
        null;
   end trackToDXY;

   function isWaypointListEmptyOrOnlyTargets (This : in out RTSLayer) return Boolean is
   begin
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   function getTrackingEvent (This : in out RTSLayer) return TrackingEvent_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTrackingEvent;

   --  throws Exception
   function buildingChase (This : in out RTSLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        return False;
   end buildingChase;

   procedure allStop (This : in out RTSLayer) is
   begin
        null;
   end allStop;

   function getMinStaticType return Integer is
   begin
        return 1;
   end getMinStaticType;

   function getMaxStaticType return Integer is
   begin
        return 4;
   end getMaxStaticType;

   function isRTSLayer (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if ((layerInterface.getType) >= (RTSLayer_Package.getMinStaticType)) and then ((layerInterface.getType) <= (RTSLayer_Package.getMaxStaticType)) then
            return True;
        end if;
        return False;
   end isRTSLayer;

   function implmentsTickableInterface (This : in out RTSLayer) return Boolean is
   begin
        return True;
   end implmentsTickableInterface;

   function implmentsGameInputInterface (This : in out RTSLayer) return Boolean is
   begin
        return True;
   end implmentsGameInputInterface;

   function getRootName (This : in out RTSLayer) return Unbounded_String is
   begin
        return This.rootName;
   end getRootName;

   function getRotationAnimationInterface (This : in out RTSLayer) return RotationAnimation_Access is
   begin
        return RotationAnimation_Access (This.indexedButShouldBeRotationAnimationInterface);
   end getRotationAnimationInterface;

   procedure setFrame (This : in out RTSLayer; index : Integer) is
   begin
        RTSLayer'Class (This).getRotationAnimationInterface.setFrame (index);
   end setFrame;

   procedure setRotationAnimationInterface (This : in out RTSLayer; rotationAnimationInterface_Param : access RotationAnimation_Package.RotationAnimation'Class) is
      rotationAnimationInterface : constant RotationAnimation_Access := RotationAnimation_Access (rotationAnimationInterface_Param);
   begin
        This.indexedButShouldBeRotationAnimationInterface := rotationAnimationInterface;
   end setRotationAnimationInterface;

   procedure createSimulatedInstance (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class) is
      Java_Result : constant RTSLayer_Access := createSimulatedInstance (remoteInfo_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSimulatedInstance;

   procedure getMoveOutOfBuildAreaPath (This : in out RTSLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := RTSLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure buildingChase (This : in out RTSLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := RTSLayer'Class (This).buildingChase (allbinaryLayer_Param, cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

   procedure isRTSLayer (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := isRTSLayer (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRTSLayer;

begin
   null;
   id := 0;
   MAIN_INDEX := 0;
   SECONDARY_INDEX := 1;

end org.allbinary.game.layer.RTSLayer_Package;


