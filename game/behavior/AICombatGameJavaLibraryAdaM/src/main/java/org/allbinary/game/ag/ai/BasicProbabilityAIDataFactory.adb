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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.time.NoTimeDelayHelper_Package; use org.allbinary.time.NoTimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.ag.ai.InputProbability_Package; use org.allbinary.game.ag.ai.InputProbability_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
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

package body org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package NoTimeDelayHelper_Package renames Standard.org.allbinary.time.NoTimeDelayHelper_Package;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out BasicProbabilityAIDataFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicProbabilityAIDataFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicProbabilityAIDataFactory_Access is
      This : constant BasicProbabilityAIDataFactory_Access := new BasicProbabilityAIDataFactory;
   begin
      BasicProbabilityAIDataFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out BasicProbabilityAIDataFactory) return ABHashtable_Access is
      likelyhoodIntegerArray : Integer_Array_Access_Array_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      repeatLikelyhoodIntegerArray : Integer_Array_Access;
      inputProbability : InputProbability_Access;
   begin
        likelyhoodIntegerArray := new Integer_Array_Access_Array'(0 .. ((Canvas_Package.KEY_NUM9) + (1)) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        likelyhoodIntegerArray (Canvas_Package.UP) (0) := smallIntegerSingletonFactory.getAt (0);
        likelyhoodIntegerArray (Canvas_Package.UP) (1) := smallIntegerSingletonFactory.getAt (10);
        likelyhoodIntegerArray (Canvas_Package.DOWN) (0) := smallIntegerSingletonFactory.getAt (10);
        likelyhoodIntegerArray (Canvas_Package.DOWN) (1) := smallIntegerSingletonFactory.getAt (14);
        likelyhoodIntegerArray (Canvas_Package.LEFT) (0) := smallIntegerSingletonFactory.getAt (14);
        likelyhoodIntegerArray (Canvas_Package.LEFT) (1) := smallIntegerSingletonFactory.getAt (18);
        likelyhoodIntegerArray (Canvas_Package.RIGHT) (0) := smallIntegerSingletonFactory.getAt (18);
        likelyhoodIntegerArray (Canvas_Package.RIGHT) (1) := smallIntegerSingletonFactory.getAt (22);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM7) (0) := smallIntegerSingletonFactory.getAt (22);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM7) (1) := smallIntegerSingletonFactory.getAt (26);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM9) (0) := smallIntegerSingletonFactory.getAt (26);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM9) (1) := smallIntegerSingletonFactory.getAt (30);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM1) (0) := smallIntegerSingletonFactory.getAt (30);
        likelyhoodIntegerArray (Canvas_Package.KEY_NUM1) (1) := smallIntegerSingletonFactory.getAt (40);
        repeatLikelyhoodIntegerArray := new Integer_Array'(0 .. ((Canvas_Package.KEY_NUM9) + (1)) - 1 => 0);
        repeatLikelyhoodIntegerArray (Canvas_Package.UP) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.DOWN) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.LEFT) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.RIGHT) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.KEY_NUM7) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.KEY_NUM9) := smallIntegerSingletonFactory.getAt (0);
        repeatLikelyhoodIntegerArray (Canvas_Package.KEY_NUM1) := smallIntegerSingletonFactory.getAt (10);
        inputProbability := InputProbability_Package.Create (likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper_Package.SINGLETON);
        return inputProbability.toHashtable;
   end getInstance;

end org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;


