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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package; use org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
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
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.media.image.comparison.pixel.PixelDelta_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype ColorDelta_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access;
   function "=" (Left, Right : ColorDelta_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array;
   function "=" (Left, Right : ColorDelta_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access;
   function "=" (Left, Right : ColorDelta_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array;
   function "=" (Left, Right : ColorDelta_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorDelta_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   procedure Initialize_Fields (This : in out PixelDelta'Class) is
   begin
      null;
      This.point := null;
      This.colorDelta := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PixelDelta'Class; point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
      Initialize_Fields (This);
        PixelDelta'Class (This).setPoint (point);
        PixelDelta'Class (This).setColorDelta (colorDelta);
        This.key := PixelDelta_Package.getKey (PixelDelta'Class (This).getPoint, PixelDelta'Class (This).getColorDelta);
   end Initialize;

   function Create (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return PixelDelta_Access is
      This : constant PixelDelta_Access := new PixelDelta;
   begin
      PixelDelta_Package.Initialize (This.all, point_Param, colorDelta_Param);
      return This;
   end Create;

   function getKey (This : in out PixelDelta) return Java_Object_Access is
   begin
        return This.key;
   end getKey;

   function getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return Java_Object_Access is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
        return Java_Box (StringMaker_Package.Create.appendint (Integer (TsUtil_Package.getInstance.hashCode (point))).append (CommonSeps_Package.getInstance.UNDERSCORE).append (colorDelta.getKey.toString).toString);
   end getKey;

   function getPoint (This : in out PixelDelta) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out PixelDelta; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        This.point := point;
   end setPoint;

   function getColorDelta (This : in out PixelDelta) return ColorDelta_Access is
   begin
        return This.colorDelta;
   end getColorDelta;

   procedure setColorDelta (This : in out PixelDelta; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      colorDelta : constant ColorDelta_Access := ColorDelta_Access (colorDelta_Param);
   begin
        This.colorDelta := colorDelta;
   end setColorDelta;

   function toString (This : in out PixelDelta) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("PixelDelta: Point: ")).append (This.point.toString).append (CommonSeps_Package.getInstance.SPACE).append (This.colorDelta.toString).toString;
   end toString;

   procedure getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) is
      Java_Result : constant Java_Object_Access := getKey (point_Param => point_Param, colorDelta_Param => colorDelta_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.media.image.comparison.pixel.PixelDelta_Package;


