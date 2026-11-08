--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package; use org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
with org.allbinary.animation.RotationAnimationInterface_Package; use org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package_References;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package RotationAnimationInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterface_Package;
   package RotationAnimationInterfaceCompositeInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package AngleIncrementInfo_Package renames Standard.org.allbinary.math.AngleIncrementInfo_Package;
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   function "=" (Left, Right : IndexedAnimation_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype VelocityInterface_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access;
   function "=" (Left, Right : VelocityInterface_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array;
   function "=" (Left, Right : VelocityInterface_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   procedure Initialize_Fields (This : in out HorizontaRotationManeuverAI'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstanceAt (10, Integer'Last);
      This.currentSpeedDivisor := 5;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HorizontaRotationManeuverAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface);
        This.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface;
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface);
        This.baseVelocityInterface := velocityInterfaceCompositeInterface.getVelocityProperties;
        This.velocityInterface := VelocityInterface_Access (This.baseVelocityInterface);
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        rotationAnimationInterfaceCompositeInterface.setFrame (Integer (angleIncrementInfo.RIGHT_FRAME));
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return HorizontaRotationManeuverAI_Access is
      This : constant HorizontaRotationManeuverAI_Access := new HorizontaRotationManeuverAI;
   begin
      HorizontaRotationManeuverAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure transition (This : in out HorizontaRotationManeuverAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   begin
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface);
        rotationAnimationInterfaceCompositeInterface.setFrame (Integer (angleIncrementInfo.RIGHT_FRAME));
        allbinaryLayer := HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface;
        allbinaryLayer.setPosition (allbinaryLayer.getXP, 1, allbinaryLayer.getZP);
   end transition;

   --  throws Exception
   procedure processAI (This : in out HorizontaRotationManeuverAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      frame : Integer;
      ownerLayerInterface : AllBinaryLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
      index : Integer;
   begin
        rotationAnimationInterface := (RotationAnimationInterface_Access (This.rotationAnimationInterface));
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        frame := This.rotationAnimationInterface.getFrame;
        ownerLayerInterface := HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface;
        if (((ownerLayerInterface.getXP) - (ownerLayerInterface.getWidth)) <= (0)) and then ((frame) = (Integer (angleIncrementInfo.LEFT_FRAME))) then
            HorizontaRotationManeuverAI'Class (This).reverse_Id;
            HorizontaRotationManeuverAI'Class (This).drop;
        end if;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (((ownerLayerInterface.getX2) + (ownerLayerInterface.getWidth)) > (displayInfo.getLastWidth)) and then ((frame) = (Integer (angleIncrementInfo.RIGHT_FRAME))) then
            HorizontaRotationManeuverAI'Class (This).reverse_Id;
            HorizontaRotationManeuverAI'Class (This).accelerate;
            HorizontaRotationManeuverAI'Class (This).drop;
        end if;
        index := This.circularIndexUtil.getIndex;
        if (((index) rem (This.currentSpeedDivisor)) = (0)) and then (((index) rem (2)) = (0)) then
            BasicAI_Package.BasicAI (This).processKeyAI (Canvas_Package.UP);
            This.velocityInterface.limitMaxXYVelocity ((This.velocityInterface.getMaxForwardVelocity) / (This.currentSpeedDivisor));
        end if;
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
        if (frame) = (Integer (angleIncrementInfo.LEFT_FRAME)) then
            BasicAI_Package.BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM0);
        elsif (frame) = (Integer (angleIncrementInfo.RIGHT_FRAME)) then
            BasicAI_Package.BasicAI (This).processKeyAI (Canvas_Package.KEY_POUND);
        end if;
   end processAI;

   procedure reverse_Id (This : in out HorizontaRotationManeuverAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      frame : Integer;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        frame := This.rotationAnimationInterface.getFrame;
        if (frame) = (Integer (angleIncrementInfo.LEFT_FRAME)) then
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (Integer (angleIncrementInfo.RIGHT_FRAME));
            This.baseVelocityInterface.zero;
        elsif (frame) = (Integer (angleIncrementInfo.RIGHT_FRAME)) then
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (Integer (angleIncrementInfo.LEFT_FRAME));
            This.baseVelocityInterface.zero;
        end if;
   end reverse_Id;

   procedure accelerate (This : in out HorizontaRotationManeuverAI) is
   begin
        if (This.currentSpeedDivisor) > (1) then
            This.currentSpeedDivisor := This.currentSpeedDivisor - 1;
        end if;
   end accelerate;

   procedure drop (This : in out HorizontaRotationManeuverAI) is
      displayInfo : DisplayInfoSingleton_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      y : Integer;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        ownerLayerInterface := HorizontaRotationManeuverAI'Class (This).getOwnerLayerInterface;
        y := ownerLayerInterface.getYP;
        if ((ownerLayerInterface.getY2) + (ownerLayerInterface.getHeight)) > (displayInfo.getLastHeight) then
            y := 0;
        else
            y := (y) + ((ownerLayerInterface.getHeight) + (1));
        end if;
        ownerLayerInterface.setPosition (ownerLayerInterface.getXP, y, ownerLayerInterface.getZP);
   end drop;

   function getId (This : in out HorizontaRotationManeuverAI) return Integer is
   begin
        return ArtificialIntelligence_Package.AI_ID;
   end getId;

end org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package;


