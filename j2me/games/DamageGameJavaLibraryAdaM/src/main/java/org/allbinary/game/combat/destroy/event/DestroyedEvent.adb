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


with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.NullGameCanvas_Package; use org.allbinary.game.displayable.canvas.NullGameCanvas_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.combat.destroy.event.DestroyedEvent_Package is

   package NullGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.NullGameCanvas_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
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
   procedure Initialize_Fields (This : in out DestroyedEvent'Class) is
   begin
      null;
      This.allBinaryGameCanvas := NullGameCanvas_Package.getInstance;
      This.allBinaryLayerInterface := AllBinaryLayer_Access (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER);
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyedEvent'Class; combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      combatGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (combatGameCanvas_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, DestroyedEventHandler_Package.getInstance);
        Initialize_Fields (This);
        DestroyedEvent'Class (This).setAllBinaryGameCanvas (combatGameCanvas);
   end Initialize;

   function Create (combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return DestroyedEvent_Access is
      This : constant DestroyedEvent_Access := new DestroyedEvent;
   begin
      DestroyedEvent_Package.Initialize (This.all, combatGameCanvas_Param);
      return This;
   end Create;

   function getAllBinaryGameCanvas (This : in out DestroyedEvent) return AllBinaryGameCanvas_Access is
   begin
        return This.allBinaryGameCanvas;
   end getAllBinaryGameCanvas;

   function getLayerInterface (This : in out DestroyedEvent) return AllBinaryLayer_Access is
   begin
        return This.allBinaryLayerInterface;
   end getLayerInterface;

   procedure setAllBinaryGameCanvas (This : in out DestroyedEvent; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end setAllBinaryGameCanvas;

   procedure setLayerInterfaceForCircularStaticPool (This : in out DestroyedEvent; allBinaryLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      allBinaryLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allBinaryLayerInterface_Param);
   begin
        This.allBinaryLayerInterface := allBinaryLayerInterface;
   end setLayerInterfaceForCircularStaticPool;

   function toString (This : in out DestroyedEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("DestroyedEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("AllBinaryLayerInterface: "));
        stringBuffer.append (This.allBinaryLayerInterface.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "AllBinaryGameCanvas: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (DestroyedEvent'Class (This).getAllBinaryGameCanvas));
        return stringBuffer.toString;
   end toString;

end org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;


