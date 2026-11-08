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


with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;
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

package body org.allbinary.game.layer.resources.OnDemandResources_Package is

   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out OnDemandResources'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OnDemandResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OnDemandResources_Access is
      This : constant OnDemandResources_Access := new OnDemandResources;
   begin
      OnDemandResources_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure waitFor (This : in out OnDemandResources) is
   begin
        null;
   end waitFor;

   --  throws Exception
   procedure init (This : in out OnDemandResources) is
   begin
        null;
   end init;

   --  throws Exception
   function initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache_Package.ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer) return Integer is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      resourceAnimationInterfaceFactoryInterfaceFactory : constant BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access := BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access (resourceAnimationInterfaceFactoryInterfaceFactory_Param);
   begin
        return 0;
   end initAt;

   procedure initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache_Package.ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer) is
      Java_Result : constant Integer := OnDemandResources'Class (This).initAt (imageCache_Param => imageCache_Param, resourceAnimationInterfaceFactoryInterfaceFactory_Param => resourceAnimationInterfaceFactoryInterfaceFactory_Param, portion => portion, loadingString => loadingString, index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initAt;

begin
   null;
   NULL_ON_DEMAND_RESOURCES := OnDemandResources_Package.Create;

end org.allbinary.game.layer.resources.OnDemandResources_Package;


