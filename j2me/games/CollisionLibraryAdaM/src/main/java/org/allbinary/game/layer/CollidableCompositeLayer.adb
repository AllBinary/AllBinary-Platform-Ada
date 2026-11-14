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


with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
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
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;
with org.allbinary.game.collision.CollidableInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
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
with org.allbinary.game.collision.LayerCollisionUtil_Package;
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
with org.allbinary.layer.NamedInterface_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.layer.CollidableCompositeLayer_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package CollidableNeverCollideBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableCompositeLayer'Class) is
   begin
      null;
      This.collidableInferface := CollidableNeverCollideBehaviorFactory_Package.getInstance.createBehavior;
   end Initialize_Fields;


   function getNullInstance return CollidableCompositeLayer_Access is
   begin
        if (Java_Object_Access (CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER := Java_Object_Access (CollidableCompositeLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory_Package.getInstance));
        end if;
        return CollidableCompositeLayer_Access (CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER);
   end getNullInstance;

   procedure Initialize (This : in out CollidableCompositeLayer'Class; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class) is
      layerInfo : constant Rectangle_Access := Rectangle_Access (layerInfo_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
      collidableBaseBehaviorFactory : constant CollidableBaseBehaviorFactory_Access := CollidableBaseBehaviorFactory_Access (collidableBaseBehaviorFactory_Param);
   begin
        AllBinaryGameLayer_Package.Initialize (This, name, layerInfo, viewPosition);
        Initialize_Fields (This);
        if (Java_Object_Access (collidableBaseBehaviorFactory)) /= (Java_Object_Access (CollidableNeverCollideBehaviorFactory_Package.getInstance)) then
            CollidableCompositeLayer'Class (This).setCollidableInferface (collidableBaseBehaviorFactory.createBehavior);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class) return CollidableCompositeLayer_Access is
      This : constant CollidableCompositeLayer_Access := new CollidableCompositeLayer;
   begin
      CollidableCompositeLayer_Package.Initialize (This.all, name, layerInfo_Param, viewPosition_Param, collidableBaseBehaviorFactory_Param);
      return This;
   end Create;

   function getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer) return ArtificialIntelligenceInterface_Access is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, CollidableCompositeLayer_Access'(This'Unchecked_Access));
        return ArtificialIntelligenceInterface_Access (ArtificialIntelligence_Package.getInstance);
   end getArtificialIntelligenceInterface;

   function getCollidableInferface (This : in out CollidableCompositeLayer) return CollidableBaseBehavior_Access is
   begin
        return This.collidableInferface;
   end getCollidableInferface;

   procedure setCollidableInferface (This : in out CollidableCompositeLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class) is
      collidableInferface : constant CollidableBaseBehavior_Access := CollidableBaseBehavior_Access (collidableInferface_Param);
   begin
        This.collidableInferface := collidableInferface;
   end setCollidableInferface;

   function implmentsCollidableInterface (This : in out CollidableCompositeLayer) return Boolean is
   begin
        return True;
   end implmentsCollidableInterface;

   procedure toStringAppend (This : in out CollidableCompositeLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        AllBinaryGameLayer_Package.AllBinaryGameLayer (This).toStringAppend (stringBuffer);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (CollidableCompositeLayer'Class (This).getCollidableInferface.toString);
   end toStringAppend;

   function toString (This : in out CollidableCompositeLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        CollidableCompositeLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_COLLIDABLE_COMPOSITE_LAYER := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.CollidableCompositeLayer_Package;


