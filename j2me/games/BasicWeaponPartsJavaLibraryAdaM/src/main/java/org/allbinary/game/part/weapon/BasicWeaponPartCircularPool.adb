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


with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package; use org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
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
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
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
with org.allbinary.layer.LayerManager_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.part.PartInterface_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.part.weapon.SalvoInterface_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;
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
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   function "=" (Left, Right : WeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   function "=" (Left, Right : ScoreableInterface_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   function "=" (Left, Right : RelativeRelationship_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype BasicWeaponPart_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access;
   function "=" (Left, Right : BasicWeaponPart_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      null;
      This.basicWeaponPart := BasicWeaponPart_Access (BasicWeaponPart_Package.NULL_BASIC_WEAPON_PART);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicWeaponPartCircularPool_Access is
      This : constant BasicWeaponPartCircularPool_Access := new BasicWeaponPartCircularPool;
   begin
      BasicWeaponPartCircularPool_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface_Param : access BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class) is
      basicWeaponPartFactoryInterface : constant BasicWeaponPartFactoryInterface_Access := BasicWeaponPartFactoryInterface_Access (basicWeaponPartFactoryInterface_Param);
   begin
        This.basicWeaponPart := basicWeaponPartFactoryInterface.getInstance;
   end init;

   --  throws Exception
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        This.basicWeaponPart.init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return This.basicWeaponPart;
   end getInstance;

   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      Java_Result : constant BasicWeaponPart_Access := BasicWeaponPartCircularPool'Class (This).getInstance (sourceLayerInterface_Param => sourceLayerInterface_Param, weaponProperties_Param => weaponProperties_Param, scoreableInterface_Param => scoreableInterface_Param, relativeRelationship_Param => relativeRelationship_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL := BasicWeaponPartCircularPool_Package.Create;

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


