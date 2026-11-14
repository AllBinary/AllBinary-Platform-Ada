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
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.view.event.ViewPositionEvent_Package; use org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEvent_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
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
with org.microemu.device.MutableImage_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.layer.PositionInterface_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.layer.AllBinaryLayer_Package is

   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
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
   subtype ViewPositionEvent_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access;
   function "=" (Left, Right : ViewPositionEvent_Access) return Boolean renames org.allbinary.view.event.ViewPositionEvent_Package_References."=";
   subtype ViewPositionEvent_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array;
   function "=" (Left, Right : ViewPositionEvent_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEvent_Package_References."=";
   subtype ViewPositionEvent_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEvent_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEvent_Package_References."=";
   subtype ViewPositionEvent_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEvent_Package_References."=";
   subtype ViewPositionEvent_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEvent_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryLayer'Class) is
   begin
      null;
      This.viewPositionEvent := ViewPositionEvent_Package.Create (AllBinaryLayer_Access'(This'Unchecked_Access));
      This.halfWidth := 0;
      This.halfHeight := 0;
      
      This.viewPosition := ViewPositionBase_Access (ViewPositionBase_Package.NULL_VIEW_POSITION);
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayer'Class; name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
      localName : Unbounded_String;
      point : GPoint_Access;
   begin
        Layer_Package.Initialize (This, rectangle.getWidth, rectangle.getHeight);
        Initialize_Fields (This);
        localName := Null_Unbounded_String;
        localName := StringMaker_Package.Create.append (name).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (AllBinaryLayer_Access'(This'Unchecked_Access)), 16))).toString;
        This.name := localName;
        point := rectangle.getPoint;
        AllBinaryLayer'Class (This).setPosition (point.getX, point.getY, point.getZ);
        AllBinaryLayer'Class (This).setHalfWidth ((Java_Shift_Right_Arithmetic (AllBinaryLayer'Class (This).getWidth, 1)));
        AllBinaryLayer'Class (This).setHalfHeight ((Java_Shift_Right_Arithmetic (AllBinaryLayer'Class (This).getHeight, 1)));
        This.viewPosition := viewPosition;
        This.viewPosition.setAllbinaryLayer (AllBinaryLayer_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AllBinaryLayer_Access is
      This : constant AllBinaryLayer_Access := new AllBinaryLayer;
   begin
      AllBinaryLayer_Package.Initialize (This.all, name, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   procedure setPosition (This : in out AllBinaryLayer; x : Integer; y : Integer; z : Integer) is
   begin
        Layer_Package.Layer (This).setPosition (x, y, z);
   end setPosition;

   procedure moveDXYZ (This : in out AllBinaryLayer; dx : Integer; dy : Integer; dz : Integer) is
   begin
        Layer_Package.Layer (This).moveDXYZ (dx, dy, dz);
   end moveDXYZ;

   function getXP (This : in out AllBinaryLayer) return Integer is
   begin
        return Layer_Package.Layer (This).getXP;
   end getXP;

   function getYP (This : in out AllBinaryLayer) return Integer is
   begin
        return Layer_Package.Layer (This).getYP;
   end getYP;

   function getZP (This : in out AllBinaryLayer) return Integer is
   begin
        return Layer_Package.Layer (This).getZP;
   end getZP;

   function getWidth (This : in out AllBinaryLayer) return Integer is
   begin
        return Layer_Package.Layer (This).getWidth;
   end getWidth;

   function getHeight (This : in out AllBinaryLayer) return Integer is
   begin
        return Layer_Package.Layer (This).getHeight;
   end getHeight;

   procedure setVisible (This : in out AllBinaryLayer; visible : Boolean) is
   begin
        Layer_Package.Layer (This).setVisible (visible);
   end setVisible;

   function isVisible (This : in out AllBinaryLayer) return Boolean is
   begin
        return Layer_Package.Layer (This).isVisible;
   end isVisible;

   procedure paint (This : in out AllBinaryLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        Layer_Package.Layer (This).paint (graphics);
   end paint;

   --  throws Exception
   procedure onChangeEvent (This : in out AllBinaryLayer; layerManagerEvent_Param : access ViewPositionEvent_Package.ViewPositionEvent'Class) is
      layerManagerEvent : constant ViewPositionEvent_Access := ViewPositionEvent_Access (layerManagerEvent_Param);
   begin
        null;
   end onChangeEvent;

   procedure paintThreed (This : in out AllBinaryLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getX2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (AllBinaryLayer'Class (This).getXP) + (AllBinaryLayer'Class (This).getWidth);
   end getX2;

   function getY2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (AllBinaryLayer'Class (This).getYP) + (AllBinaryLayer'Class (This).getHeight);
   end getY2;

   function getZ2 (This : in out AllBinaryLayer) return Integer is
   begin
        return Integer (((Long_Long_Integer (AllBinaryLayer'Class (This).getZP)) + (AllBinaryLayer'Class (This).getDepth)));
   end getZ2;

   function getName (This : in out AllBinaryLayer) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setHalfWidth (This : in out AllBinaryLayer; halfWidth : Integer) is
   begin
        This.halfWidth := halfWidth;
   end setHalfWidth;

   function getHalfWidth (This : in out AllBinaryLayer) return Integer is
   begin
        return This.halfWidth;
   end getHalfWidth;

   procedure setHalfHeight (This : in out AllBinaryLayer; halfHeight : Integer) is
   begin
        This.halfHeight := halfHeight;
   end setHalfHeight;

   function getHalfHeight (This : in out AllBinaryLayer) return Integer is
   begin
        return This.halfHeight;
   end getHalfHeight;

   function getHalfDepth (This : in out AllBinaryLayer) return Integer is
   begin
        return (Integer (AllBinaryLayer'Class (This).getDepth)) / (2);
   end getHalfDepth;

   function getViewPosition (This : in out AllBinaryLayer) return ViewPositionBase_Access is
   begin
        return This.viewPosition;
   end getViewPosition;

   procedure setViewPosition (This : in out AllBinaryLayer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        This.viewPosition := viewPosition;
   end setViewPosition;

   function getGroupInterface (This : in out AllBinaryLayer) return Group_Access_Array_Access is
   begin
        return BasicGroupFactory_Package.getInstance.NONE_ARRAY;
   end getGroupInterface;

   function implmentsTickableInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsTickableInterface;

   function implmentsGameInputInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsGameInputInterface;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsArtificialIntelligenceCompositeInterface;

   function implmentsCollidableInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsCollidableInterface;

   function implementsThreedInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return OpenGLFeatureUtil_Package.getInstance.isAnyThreed;
   end implementsThreedInterface;

   function getType (This : in out AllBinaryLayer) return Integer is
   begin
        return -(1);
   end getType;

   function getMultiPlayerType (This : in out AllBinaryLayer) return Integer is
   begin
        return -(1);
   end getMultiPlayerType;

   procedure toStringAppend (This : in out AllBinaryLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      commonLabels : CommonLabels_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer.append (AllBinaryLayer'Class (This).getName);
        stringBuffer.append (commonSeps.COLON);
        stringBuffer.append (AllBinaryLayer_Package.TYPE_Id);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getType);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getXP);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getYP);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getZP);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getWidth);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getHeight);
   end toStringAppend;

   function toString (This : in out AllBinaryLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        AllBinaryLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_ALLBINARY_LAYER := AllBinaryLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION);
   TYPE_Id := To_Unbounded_String ("Type: ");

end org.allbinary.layer.AllBinaryLayer_Package;


