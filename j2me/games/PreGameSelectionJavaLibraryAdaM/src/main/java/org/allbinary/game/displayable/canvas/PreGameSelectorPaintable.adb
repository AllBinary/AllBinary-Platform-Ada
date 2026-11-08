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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.draw.CanvasDrawLineString_Package; use org.allbinary.graphics.draw.CanvasDrawLineString_Package;
with org.allbinary.graphics.draw.CanvasDrawLineString_Package_References;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package; use org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;
with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
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
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
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
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;
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

package body org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
   subtype CanvasDrawLineString_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype PreGameScrollSelectionForm_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References."=";
   procedure Initialize_Fields (This : in out PreGameSelectorPaintable'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameSelectorPaintable'Class; title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) is
      preGameScrollSelectionForm : constant PreGameScrollSelectionForm_Access := PreGameScrollSelectionForm_Access (preGameScrollSelectionForm_Param);
      displayInfo : DisplayInfoSingleton_Access;
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.title := title;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.canvasDrawLineString := CanvasDrawLineString_Package.Create (displayInfo.getLastHalfWidth, 0);
        This.preGameScrollSelectionForm := preGameScrollSelectionForm;
   end Initialize;

   function Create (title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) return PreGameSelectorPaintable_Access is
      This : constant PreGameSelectorPaintable_Access := new PreGameSelectorPaintable;
   begin
      PreGameSelectorPaintable_Package.Initialize (This.all, title, preGameScrollSelectionForm_Param);
      return This;
   end Create;

   procedure update (This : in out PreGameSelectorPaintable) is
      displayInfo : DisplayInfoSingleton_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.canvasDrawLineString := CanvasDrawLineString_Package.Create (displayInfo.getLastHalfWidth, 0);
   end update;

   procedure paint (This : in out PreGameSelectorPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (BasicColorFactory_Package.getInstance.WHITE.intValue);
        This.canvasDrawLineString.paint (graphics, This.title, 0);
        PreGameSelectorPaintable'Class (This).getPreGameSelectionForm.paint (graphics);
   end paint;

   function getPreGameSelectionForm (This : in out PreGameSelectorPaintable) return PreGameScrollSelectionForm_Access is
   begin
        return This.preGameScrollSelectionForm;
   end getPreGameSelectionForm;

end org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;


