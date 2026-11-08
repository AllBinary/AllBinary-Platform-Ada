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


with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
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
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package is

   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   procedure Initialize_Fields (This : in out DestroyableSimpleBehavior'Class) is
   begin
      null;
      
      This.destroyed := False;
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyableSimpleBehavior'Class; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
   begin
      DestroyableBaseBehavior_Package.Initialize (This);
      Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return DestroyableSimpleBehavior_Access is
      This : constant DestroyableSimpleBehavior_Access := new DestroyableSimpleBehavior;
   begin
      DestroyableSimpleBehavior_Package.Initialize (This.all, ownerLayer_Param);
      return This;
   end Create;

   function isDestroyed (This : in out DestroyableSimpleBehavior) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure setDestroyed (This : in out DestroyableSimpleBehavior; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if DestroyableSimpleBehavior'Class (This).isDestroyed then
            DestroyedLayerProcessor_Package.getInstance.add (This.ownerLayer);
        end if;
   end setDestroyed;

end org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package;


