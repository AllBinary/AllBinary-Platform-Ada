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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.CoreImage_Package; use playn.core.CoreImage_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.html.HTMLPlaynUtil_Package; use playn.html.HTMLPlaynUtil_Package;
with playn.html.HTMLPlaynUtil_Package_References;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.media.image.ImageCreationUtil_Package;
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

package body org.allbinary.media.image.ImageScaleUtil_Package is

   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
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
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype HTMLPlaynUtil_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access;
   function "=" (Left, Right : HTMLPlaynUtil_Access) return Boolean renames playn.html.HTMLPlaynUtil_Package_References."=";
   subtype HTMLPlaynUtil_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array;
   function "=" (Left, Right : HTMLPlaynUtil_Access_Array) return Boolean renames playn.html.HTMLPlaynUtil_Package_References."=";
   subtype HTMLPlaynUtil_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access;
   function "=" (Left, Right : HTMLPlaynUtil_Access_Array_Access) return Boolean renames playn.html.HTMLPlaynUtil_Package_References."=";
   subtype HTMLPlaynUtil_Access_Array_Access_Array is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HTMLPlaynUtil_Access_Array_Access_Array) return Boolean renames playn.html.HTMLPlaynUtil_Package_References."=";
   subtype HTMLPlaynUtil_Access_Array_Access_Array_Access is playn.html.HTMLPlaynUtil_Package_References.HTMLPlaynUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HTMLPlaynUtil_Access_Array_Access_Array_Access) return Boolean renames playn.html.HTMLPlaynUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageScaleUtil'Class) is
   begin
      null;
      This.playnUtil := HTMLPlaynUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageScaleUtil_Access is
   begin
        return ImageScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageScaleUtil_Access is
      This : constant ImageScaleUtil_Access := new ImageScaleUtil;
   begin
      ImageScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageScaleUtil'Class (This).createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True);
   end createImage2;

   --  throws Exception
   function createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      scaleX : Float;
      scaleY : Float;
   begin
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        return ImageScaleUtil'Class (This).createImage (imageCache, originalImage, scaleX, scaleY, cached);
   end createImage3;

   --  throws Exception
   function createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageScaleUtil'Class (This).createImageInternal (originalImage, scaleX, scaleY);
   end createImage;

   --  throws Exception
   function createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      originalPlayNImage : CoreImage_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
      originalHTMLImage_2 : PlaynMutableImage_Access;
      htmlImage : PlaynMutableImage_Access;
      canvasImage : ImageImpl_Access;
      canvas : Canvas_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.createImageWH (Integer (((Float (originalImage.getWidth)) * (scaleX))), Integer (((Float (originalImage.getHeight)) * (scaleY))));
        if image.isMutable then
            originalPlayNImage := null;
            if originalImage.isMutable then
                originalHTMLImage_2 := PlaynMutableImage_Access (originalImage);
                originalPlayNImage := CoreImage_Access (originalHTMLImage_2.getImage);
            else
                originalHTMLImage := PlaynImmutableImage_Access (originalImage);
                originalPlayNImage := CoreImage_Access (originalHTMLImage.getImage);
            end if;
            htmlImage := PlaynMutableImage_Access (image);
            canvasImage := ImageImpl_Access (htmlImage.getImage);
            canvas := This.playnUtil.getCanvas (canvasImage);
            canvas.drawScale (originalPlayNImage, 0, 0, image.getWidth, image.getHeight, 0, 0, originalImage.getWidth, originalImage.getHeight);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImageInternal;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached, mutable => mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

   procedure createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleX => scaleX, scaleY => scaleY, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImageInternal (originalImage_Param => originalImage_Param, scaleX => scaleX, scaleY => scaleY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageInternal;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


