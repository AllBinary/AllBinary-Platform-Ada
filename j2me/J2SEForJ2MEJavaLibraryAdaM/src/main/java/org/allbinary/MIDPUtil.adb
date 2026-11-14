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
with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
with javax.microedition.lcdui.Form_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
with javax.microedition.media.Manager_Package; use javax.microedition.media.Manager_Package;
with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with javax.microedition.media.PlayerListener_Package;
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

package body org.allbinary.MIDPUtil_Package is

   package Manager_Package renames Standard.javax.microedition.media.Manager_Package;
   package MediaException_Package renames Standard.javax.microedition.media.MediaException_Package;
   subtype Form_Access is javax.microedition.lcdui.Form_Package_References.Form_Access;
   function "=" (Left, Right : Form_Access) return Boolean renames javax.microedition.lcdui.Form_Package_References."=";
   subtype Form_Access_Array is javax.microedition.lcdui.Form_Package_References.Form_Access_Array;
   function "=" (Left, Right : Form_Access_Array) return Boolean renames javax.microedition.lcdui.Form_Package_References."=";
   subtype Form_Access_Array_Access is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access;
   function "=" (Left, Right : Form_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Form_Package_References."=";
   subtype Form_Access_Array_Access_Array is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access_Array;
   function "=" (Left, Right : Form_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Form_Package_References."=";
   subtype Form_Access_Array_Access_Array_Access is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Form_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Form_Package_References."=";
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
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   function "=" (Left, Right : Item_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   function "=" (Left, Right : Item_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   function "=" (Left, Right : Item_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   function "=" (Left, Right : Player_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   function "=" (Left, Right : Player_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   function "=" (Left, Right : Player_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   procedure Initialize_Fields (This : in out MIDPUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MIDPUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MIDPUtil_Access is
      This : constant MIDPUtil_Access := new MIDPUtil;
   begin
      MIDPUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MIDPUtil_Access is
   begin
        return MIDPUtil_Package.instance;
   end getInstance;

   function createImageWH (This : in out MIDPUtil; width : Integer; height : Integer) return Image_Access is
   begin
        return Image_Package.createImageWH (width, height);
   end createImageWH;

   function createImageFromByteArray (This : in out MIDPUtil; imageData : Short_Short_Integer_Array_Access; imageOffset : Integer; imageLength : Integer) return Image_Access is
   begin
        return Image_Package.createImageFromByteArray (imageData, imageOffset, imageLength);
   end createImageFromByteArray;

   --  throws IOException
   function createImageFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return Image_Package.createImageFromInputStream (inputStream);
   end createImageFromInputStream;

   --  throws IOException, MediaException
   function createPlayerFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) return Player_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return Manager_Package.createPlayerFromInputStream (inputStream, type_Id);
   end createPlayerFromInputStream;

   function appendItem (This : in out MIDPUtil; form_Param : access Form_Package.Form'Class; item_Param : access Item_Package.Item'Class) return Integer is
      form : constant Form_Access := Form_Access (form_Param);
      item : constant Item_Access := Item_Access (item_Param);
   begin
        return form.appendItem (item);
   end appendItem;

   procedure createImageWH (This : in out MIDPUtil; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := MIDPUtil'Class (This).createImageWH (width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageWH;

   procedure createImageFromByteArray (This : in out MIDPUtil; imageData : Short_Short_Integer_Array_Access; imageOffset : Integer; imageLength : Integer) is
      Java_Result : constant Image_Access := MIDPUtil'Class (This).createImageFromByteArray (imageData => imageData, imageOffset => imageOffset, imageLength => imageLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromByteArray;

   procedure createImageFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant Image_Access := MIDPUtil'Class (This).createImageFromInputStream (inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure createPlayerFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) is
      Java_Result : constant Player_Access := MIDPUtil'Class (This).createPlayerFromInputStream (inputStream_Param => inputStream_Param, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayerFromInputStream;

   procedure appendItem (This : in out MIDPUtil; form_Param : access Form_Package.Form'Class; item_Param : access Item_Package.Item'Class) is
      Java_Result : constant Integer := MIDPUtil'Class (This).appendItem (form_Param => form_Param, item_Param => item_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendItem;

begin
   null;
   instance := MIDPUtil_Package.Create;

end org.allbinary.MIDPUtil_Package;


