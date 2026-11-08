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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
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
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.image.ImageCache_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
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
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out ImageCache'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCache'Class) is
   begin
      ImageCacheBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageCache_Access is
      This : constant ImageCache_Access := new ImageCache;
   begin
      ImageCache_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out ImageCache; renderer_Param : access Java_Object'Class) is
      renderer : constant Java_Object_Access := Java_Object_Access (renderer_Param);
   begin
        null;
   end addListener;

   function getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) return Integer is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      gdResources : GDResources_Access;
      resourceStringArray : Unbounded_String_Array_Access;
      size : Integer;
      index : Integer;
   begin
        gdResources := GDResources_Package.getInstance;
        resourceStringArray := gdResources.resourceStringArray;
        size := resourceStringArray'Length;
        for index in 0 .. (size) - 1 loop
            if (resourceStringArray (index)) = (key) then
                return index;
            end if;
        end loop;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("unable to find key: ")).append (StringUtil_Package.getInstance.toString (key)).toString, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getIndex;

   --  throws Exception
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
      foundIndex : Integer;
      image : Image_Access;
      widths : Integer_Array_Access;
   begin
        foundIndex := ImageCache'Class (This).getIndexWH (width, height);
        image := ImageCache'Class (This).getFromAvailable (foundIndex, width, height);
        if (Java_Object_Access (image)) = (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
            This.volume := (This.volume) + ((width) * (height));
            if (This.volume) > (32000) then
                This.tsUtil.gc;
                This.volume := 0;
            end if;
            image := ImageCache'Class (This).createImage (caller, width, height);
            widths := This.widths;
            if (This.nextIndex) > ((widths'Length) - (1)) then
                if (foundIndex) = (-(1)) then
                    foundIndex := This.nextIndex;
                    widths (This.nextIndex) := width;
                    This.heights (This.nextIndex) := height;
                    This.nextIndex := This.nextIndex + 1;
                end if;
                This.listOfList (foundIndex).add (image);
            end if;
        end if;
        return image;
   end get;

   --  throws Exception
   function getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class) return Image_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      image : Image_Access;
      resourceUtil : ResourceUtil_Access;
      resourceInputStream : InputStream_Access;
   begin
        image := ImageCache'Class (This).getImage (key);
        if (Java_Object_Access (image)) = (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
            resourceUtil := ResourceUtil_Package.getInstance;
            resourceInputStream := resourceUtil.getResourceAsStream (Java_Unbox (key));
            if (resourceInputStream) = (null) then
                Java_Throw (Java_New_Exception ("RuntimeException", StringMaker_Package.Create.append (To_Unbounded_String ("Image resource is not available for key: ")).append (StringUtil_Package.getInstance.toString (key)).toString));
            end if;
            begin
                image := ImageCache'Class (This).createImageFromInputStream (key, resourceInputStream);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (To_Unbounded_String ("Exception: Trying Again After GC"), ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("InputStream: ")).append (StringUtil_Package.getInstance.toString (resourceInputStream)).toString, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET);
                This.tsUtil.gc;
                This.tsUtil.gc;
                This.logUtil.putF (Memory_Package.getInfo, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET);
                Java_Sleep (100);
                image := ImageCache'Class (This).createImageFromInputStream (key, resourceInputStream);
                    end;
            end;
            if J2MEUtil_Package.isHTML then
                null;
            else
                resourceInputStream.close;
            end if;
            This.hashtable.put (key, image);
        end if;
        return image;
   end getWithKey;

   --  throws Exception
   procedure loadImageForAnimation (This : in out ImageCache) is
   begin
        null;
   end loadImageForAnimation;

   procedure progressEnded (This : in out ImageCache) is
   begin
        null;
   end progressEnded;

   procedure runTask (This : in out ImageCache) is
   begin
        null;
   end runTask;

   function isLazy (This : in out ImageCache) return Boolean is
   begin
        return False;
   end isLazy;

   procedure getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCache'Class (This).get (caller => caller, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class) is
      Java_Result : constant Image_Access := ImageCache'Class (This).getWithKey (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithKey;

   procedure addListener (This : in out ImageCache; Value : Unbounded_String) is
   begin
      ImageCache'Class (This).addListener (Java_Box (Value));
   end addListener;

   function getIndex (This : in out ImageCache; Value : Unbounded_String) return Integer is
   begin
      return ImageCache'Class (This).getIndex (Java_Box (Value));
   end getIndex;

   procedure getIndex (This : in out ImageCache; Value : Unbounded_String) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

   function getWithKey (This : in out ImageCache; Value : Unbounded_String) return Image_Access is
   begin
      return ImageCache'Class (This).getWithKey (Java_Box (Value));
   end getWithKey;

   procedure getWithKey (This : in out ImageCache; Value : Unbounded_String) is
      Java_Result : constant Image_Access := ImageCache'Class (This).getWithKey (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithKey;

begin
   null;
   NULL_IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCache_Package;


