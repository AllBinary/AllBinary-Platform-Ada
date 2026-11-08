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
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
with org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.Special1GameInputProcessor_Package; use org.allbinary.game.layer.special.Special1GameInputProcessor_Package;
with org.allbinary.game.layer.special.Special3GameInputProcessor_Package; use org.allbinary.game.layer.special.Special3GameInputProcessor_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogDownGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightTriggerGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogRightTriggerGameInputProcessor_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.game.layer.special.Special1GameInputProcessor_Package;
with org.allbinary.game.layer.special.Special3GameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightTriggerGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package;
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

package body org.allbinary.game.layer.special.AnalogInputBuilder_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   function "=" (Left, Right : GameInputProcessor_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   procedure Initialize_Fields (This : in out AnalogInputBuilder'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnalogInputBuilder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnalogInputBuilder_Access is
      This : constant AnalogInputBuilder_Access := new AnalogInputBuilder;
   begin
      AnalogInputBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnalogInputBuilder_Access is
   begin
        return AnalogInputBuilder_Access (AnalogInputBuilder_Package.instance);
   end getInstance;

   procedure disable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Access (SpecialUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Access (SpecialDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Access (SpecialRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Access (SpecialLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.KEY_NUM0) := GameInputProcessor_Access (Special1GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.KEY_NUM5) := GameInputProcessor_Access (Special3GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
   end disable;

   procedure enable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Access (SpecialAnalogUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Access (SpecialAnalogDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Access (SpecialAnalogRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Access (SpecialAnalogLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.KEY_NUM0) := GameInputProcessor_Access (SpecialAnalogLeftTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
        inputProcessorArray (Canvas_Package.KEY_NUM5) := GameInputProcessor_Access (SpecialAnalogRightTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer));
   end enable;

begin
   null;
   instance := AnalogInputBuilder_Package.Create;

end org.allbinary.game.layer.special.AnalogInputBuilder_Package;


