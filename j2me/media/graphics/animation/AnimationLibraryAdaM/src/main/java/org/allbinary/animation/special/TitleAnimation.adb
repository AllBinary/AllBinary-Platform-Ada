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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.ABSystemWrapper_Package_References;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
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
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.animation.special.SpecialAnimationInterface_Package;
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

package body org.allbinary.animation.special.TitleAnimation_Package is

   package IndexedAnimationBehavior_Package renames Standard.org.allbinary.animation.IndexedAnimationBehavior_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype ABSystemWrapper_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access;
   function "=" (Left, Right : ABSystemWrapper_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   procedure Initialize_Fields (This : in out TitleAnimation'Class) is
   begin
      null;
      This.systemWrapper := ABSystemWrapper_Package.getInstance;
      This.deltaX := 0.0;
      This.deltaY := 0.0;
      This.deltaZ := 0.0;
      
      
      
      
      
      
      
      
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.CLEAR_COLOR := BasicColor_Access (BasicColorFactory_Package.getInstance.CLEAR_COLOR);
   end Initialize_Fields;


   function createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer) return TitleAnimation_Access is
   begin
        return TitleAnimation_Package.Create (animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior_Package.Create (1, 250));
   end createAnimation;

   procedure Initialize (This : in out TitleAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        SpecialAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.lastFrameStartTime := This.systemWrapper.currentTimeMillis;
        This.animationInterfaceArray := animationInterfaceArray;
        This.sizeP := This.animationInterfaceArray'Length;
        This.basicColorArray := basicColorArray;
        This.dxArray := dxArray;
        This.dyArray := dyArray;
        This.y := y;
        This.widthP := width;
        TitleAnimation'Class (This).reset;
   end Initialize;

   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TitleAnimation_Access is
      This : constant TitleAnimation_Access := new TitleAnimation;
   begin
      TitleAnimation_Package.Initialize (This.all, animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out TitleAnimation) is
      currentTime : Long_Long_Integer;
      totalTimeElapsed : Long_Long_Integer;
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
   begin
        currentTime := This.systemWrapper.currentTimeMillis;
        totalTimeElapsed := (currentTime) - (This.lastFrameStartTime);
        indexedAnimationBehavior := IndexedAnimationBehavior_Access (TitleAnimation'Class (This).getAnimationBehavior);
        if (totalTimeElapsed) > (indexedAnimationBehavior.frameDelayTime) then
            TitleAnimation'Class (This).previousFrame;
            This.lastFrameStartTime := currentTime;
        end if;
        if (This.animationInterfaceArray (0).getFrame) = (0) then
            indexedAnimationBehavior.loopIndex := indexedAnimationBehavior.loopIndex + 1;
        end if;
   end nextFrame;

   function isComplete (This : in out TitleAnimation) return Boolean is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
   begin
        indexedAnimationBehavior := IndexedAnimationBehavior_Access (TitleAnimation'Class (This).getAnimationBehavior);
        if (((indexedAnimationBehavior.loopTotal) = (-(1))) or else ((indexedAnimationBehavior.loopIndex) < (indexedAnimationBehavior.loopTotal))) or else ((TitleAnimation'Class (This).getFrame) /= (0)) then
            return False;
        else
            return True;
        end if;
   end isComplete;

   procedure setSequence (This : in out TitleAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out TitleAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   function getSize (This : in out TitleAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getSize;
   end getSize;

   function getFrame (This : in out TitleAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getFrame;
   end getFrame;

   procedure setFrame (This : in out TitleAnimation; frame : Integer) is
      index : Integer;
   begin
        for index in 0 .. (This.sizeP) - 1 loop
            This.animationInterfaceArray (index).setFrame (frame);
        end loop;
   end setFrame;

   procedure setLastFrame (This : in out TitleAnimation) is
   begin
        TitleAnimation'Class (This).setFrame ((TitleAnimation'Class (This).getSize) - (1));
   end setLastFrame;

   procedure reset (This : in out TitleAnimation) is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
   begin
        TitleAnimation'Class (This).setLastFrame;
        indexedAnimationBehavior := (IndexedAnimationBehavior_Access (TitleAnimation'Class (This).getAnimationBehavior));
        indexedAnimationBehavior.reset;
   end reset;

   procedure previousFrame (This : in out TitleAnimation) is
      index : Integer;
   begin
        for index in 0 .. (This.sizeP) - 1 loop
            This.animationInterfaceArray (index).previousFrame;
        end loop;
   end previousFrame;

   procedure paintFrameXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        TitleAnimation'Class (This).setFrame (frame);
        TitleAnimation'Class (This).paintXY (graphics, x, y);
   end paintFrameXY;

   procedure paintXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; ax : Integer; ay : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      x : Integer;
      deltaX : Integer;
      deltaY : Integer;
      index : Integer;
   begin
        x := 0;
        if (This.widthP) /= (Integer'First) then
            x := ((((This.displayInfoSingleton.getLastWidth) - (This.widthP))) / (2));
        end if;
        deltaX := 0;
        deltaY := 0;
        for index in 0 .. (This.sizeP) - 1 loop
            deltaX := (This.dxArray (index)) + (x);
            deltaY := (This.dyArray (index)) + (This.y);
            if (This.basicColorArray (index)) /= (This.CLEAR_COLOR) then
                This.basicSetColorUtil.setBasicColorP (graphics, This.basicColorArray (index));
            end if;
            This.animationInterfaceArray (index).paintXY (graphics, deltaX, deltaY);
        end loop;
   end paintXY;

   procedure createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer) is
      Java_Result : constant TitleAnimation_Access := createAnimation (animationInterfaceArray => animationInterfaceArray, basicColorArray => basicColorArray, dxArray => dxArray, dyArray => dyArray, y => y, width => width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.special.TitleAnimation_Package;


