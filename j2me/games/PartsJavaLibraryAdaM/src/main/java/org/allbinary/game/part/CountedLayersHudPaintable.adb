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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package; use org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
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
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
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
with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
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

package body org.allbinary.game.part.CountedLayersHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   function "=" (Left, Right : PartInterface_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   procedure Initialize_Fields (This : in out CountedLayersHudPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      
      
      
      
      
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (CountedLayersHudPaintable_Access'(This'Unchecked_Access)));
      This.height := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CountedLayersHudPaintable'Class; partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) is
   begin
      Initialize_Fields (This);
        This.partInterfaceArray := partInterfaceArray;
        This.startIndex := startIndex;
        This.countedTotalStringColor := countedTotalStringColor;
        This.countedPartsBorder := countedPartsBorder;
        This.dropSize := dropSize;
   end Initialize;

   function Create (partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) return CountedLayersHudPaintable_Access is
      This : constant CountedLayersHudPaintable_Access := new CountedLayersHudPaintable;
   begin
      CountedLayersHudPaintable_Package.Initialize (This.all, partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      XXString : Unbounded_String;
   begin
        font := graphics.getFont;
        This.height := font.getHeight;
        if (This.dropSize) > (font.getHeight) then
            This.height := This.dropSize;
        end if;
        if (CountedLayersHudPaintable_Package.XXStringWidth) = (0) then
            XXString := To_Unbounded_String ("XX");
            CountedLayersHudPaintable_Package.XXStringWidth := font.stringWidth (XXString);
        end if;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      lastWidth : Integer;
      widthEdge : Integer;
      size : Integer;
      count : Integer;
      y : Integer;
      countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart_Access;
      pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;
      layerInterface : AllBinaryLayer_Access;
      charArray : Character_Array_Access;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        lastWidth := This.displayInfoSingleton.getLastWidth;
        widthEdge := (lastWidth) - (This.dropSize);
        size := This.partInterfaceArray'Length;
        count := 0;
        y := 0;
        countedLayerInterfaceFactory := null;
        pickedUpLayerInterfaceFactoryInterface := null;
        layerInterface := null;
        charArray := null;
        for index in This.startIndex .. (size) - 1 loop
            countedLayerInterfaceFactory := CountedLayerInterfaceFactoryPart_Access (This.partInterfaceArray (index));
            if (countedLayerInterfaceFactory.getTotal) > (0) then
                pickedUpLayerInterfaceFactoryInterface := PickedUpLayerInterfaceFactoryInterface_Access (countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory);
                layerInterface := pickedUpLayerInterfaceFactoryInterface.getIconLayer;
                y := (40) + (((count) * (This.height)));
                layerInterface.setPosition (widthEdge, y, layerInterface.getZP);
                layerInterface.paint (graphics);
                graphics.setColor (This.countedTotalStringColor);
                countedLayerInterfaceFactory.paint (graphics);
                charArray := countedLayerInterfaceFactory.getTotalString;
                graphics.drawChars (charArray, 0, charArray'Length, (widthEdge) - (countedLayerInterfaceFactory.getXOffset), y, 0);
                count := count + 1;
            end if;
        end loop;
        if (count) > (0) then
            graphics.setColor (This.countedPartsBorder);
            graphics.drawRect ((lastWidth) - (((CountedLayersHudPaintable_Package.XXStringWidth) + (This.dropSize))), 40, (CountedLayersHudPaintable_Package.XXStringWidth) + (This.dropSize), (((count) * (This.height))) + (3));
        end if;
   end paint;

   procedure paintThreed (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

begin
   null;
   XXStringWidth := 0;

end org.allbinary.game.part.CountedLayersHudPaintable_Package;


