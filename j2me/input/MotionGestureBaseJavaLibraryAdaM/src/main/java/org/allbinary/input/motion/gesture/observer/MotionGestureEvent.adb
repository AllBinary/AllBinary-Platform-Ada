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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   function "=" (Left, Right : CommonLabels_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   procedure Initialize_Fields (This : in out MotionGestureEvent'Class) is
   begin
      null;
      This.motionGesture := MotionGestureInput_Access (TouchMotionGestureFactory_Package.getInstance.NO_MOTION);
      
      This.previousPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
      This.currentPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
      This.commonLabels := CommonLabels_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureEvent'Class; source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class) is
      source : constant Java_Object_Access := Java_Object_Access (source_Param);
      motionGesture : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGesture_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, source);
        Initialize_Fields (This);
        This.id := id;
        MotionGestureEvent'Class (This).setMotionGesture (motionGesture);
   end Initialize;

   function Create (source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return MotionGestureEvent_Access is
      This : constant MotionGestureEvent_Access := new MotionGestureEvent;
   begin
      MotionGestureEvent_Package.Initialize (This.all, source_Param, id, motionGesture_Param);
      return This;
   end Create;

   function getMotionGesture (This : in out MotionGestureEvent) return MotionGestureInput_Access is
   begin
        return This.motionGesture;
   end getMotionGesture;

   procedure setMotionGesture (This : in out MotionGestureEvent; motionGesture_Param : access MotionGestureInput_Package.MotionGestureInput'Class) is
      motionGesture : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGesture_Param);
   begin
        This.motionGesture := motionGesture;
   end setMotionGesture;

   function getPreviousPoint (This : in out MotionGestureEvent) return GPoint_Access is
   begin
        return This.previousPoint;
   end getPreviousPoint;

   procedure setPreviousPoint (This : in out MotionGestureEvent; previousPoint_Param : access GPoint_Package.GPoint'Class) is
      previousPoint : constant GPoint_Access := GPoint_Access (previousPoint_Param);
   begin
        This.previousPoint := previousPoint;
   end setPreviousPoint;

   function getCurrentPoint (This : in out MotionGestureEvent) return GPoint_Access is
   begin
        return This.currentPoint;
   end getCurrentPoint;

   procedure setCurrentPoint (This : in out MotionGestureEvent; currentPoint_Param : access GPoint_Package.GPoint'Class) is
      currentPoint : constant GPoint_Access := GPoint_Access (currentPoint_Param);
   begin
        This.currentPoint := currentPoint;
   end setCurrentPoint;

   function toString (This : in out MotionGestureEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (stringUtil.toString (This.motionGesture));
        stringBuffer.append (This.commonLabels.CURRENT);
        stringBuffer.append (stringUtil.toString (This.currentPoint));
        stringBuffer.append (MotionGestureEvent_Package.PREVIOUS);
        stringBuffer.append (stringUtil.toString (This.previousPoint));
        stringBuffer.append (MotionGestureEvent_Package.HASHCODE);
        stringBuffer.appendint (Integer (TsUtil_Package.getInstance.hashCode (MotionGestureEvent_Access'(This'Unchecked_Access))));
        return stringBuffer.toString;
   end toString;

   function getId (This : in out MotionGestureEvent) return Integer is
   begin
        return This.id;
   end getId;

begin
   null;
   PREVIOUS := To_Unbounded_String (" Previous: ");
   HASHCODE := To_Unbounded_String (" hashcode: ");

end org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;


