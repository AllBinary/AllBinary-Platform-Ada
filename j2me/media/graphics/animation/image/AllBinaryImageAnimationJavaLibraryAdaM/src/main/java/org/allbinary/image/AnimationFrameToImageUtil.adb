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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
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
with org.allbinary.image.GameFeatureImageCacheFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
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
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.image.AnimationFrameToImageUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   procedure Initialize_Fields (This : in out AnimationFrameToImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationFrameToImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationFrameToImageUtil_Access is
      This : constant AnimationFrameToImageUtil_Access := new AnimationFrameToImageUtil;
   begin
      AnimationFrameToImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationFrameToImageUtil_Access is
   begin
        return AnimationFrameToImageUtil_Access (AnimationFrameToImageUtil_Package.instance);
   end getInstance;

   --  throws Exception
   function getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) return Image_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      image : Image_Access;
      graphics : Graphics_Access;
      tranlateX : Integer;
      tranlateY : Integer;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (AnimationFrameToImageUtil_Package.instance.all'Tag)), (Java_Shift_Right_Arithmetic (((width) * (3)), 1)), (Java_Shift_Right_Arithmetic (((height) * (3)), 1)));
        graphics := image.getGraphics;
        tranlateX := (Java_Shift_Right_Arithmetic (width, 2));
        tranlateY := (Java_Shift_Right_Arithmetic (height, 2));
        graphics.translate (tranlateX, tranlateY);
        animationInterface.paintXY (graphics, 0, 0);
        graphics.translate (-(tranlateX), -(tranlateY));
        return image;
   end getInstanceTranslate;

   --  throws Exception
   function getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) return Image_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      image : Image_Access;
      graphics : Graphics_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (AnimationFrameToImageUtil_Package.instance.all'Tag)), width, height);
        graphics := image.getGraphics;
        animationInterface.paintXY (graphics, 0, 0);
        return image;
   end getInstanceWH;

   procedure getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Image_Access := AnimationFrameToImageUtil'Class (This).getInstanceTranslate (width => width, height => height, animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceTranslate;

   procedure getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Image_Access := AnimationFrameToImageUtil'Class (This).getInstanceWH (width => width, height => height, animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceWH;

begin
   null;
   instance := AnimationFrameToImageUtil_Package.Create;

end org.allbinary.image.AnimationFrameToImageUtil_Package;


