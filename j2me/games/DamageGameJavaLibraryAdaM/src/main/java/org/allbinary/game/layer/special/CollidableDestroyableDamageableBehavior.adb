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


with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
with org.allbinary.game.combat.damage.DamageUtil_Package; use org.allbinary.game.combat.damage.DamageUtil_Package;
with org.allbinary.game.combat.damage.DamageUtil_Package_References;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
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
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype DamageUtil_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access;
   function "=" (Left, Right : DamageUtil_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array;
   function "=" (Left, Right : DamageUtil_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access;
   function "=" (Left, Right : DamageUtil_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DamageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out CollidableDestroyableDamageableBehavior'Class) is
   begin
      null;
      This.damageUtil := DamageUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableDestroyableDamageableBehavior'Class; collidable : Boolean) is
   begin
        CollidableBaseBehavior_Package.Initialize (This, collidable);
        Initialize_Fields (This);
   end Initialize;

   function Create (collidable : Boolean) return CollidableDestroyableDamageableBehavior_Access is
      This : constant CollidableDestroyableDamageableBehavior_Access := new CollidableDestroyableDamageableBehavior;
   begin
      CollidableDestroyableDamageableBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collisionLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collisionLayer_Param);
   begin
        if (ownerLayer.getGroupInterface (0)) /= (collisionLayer.getGroupInterface (0)) then
            return CollidableBaseBehavior_Package.CollidableBaseBehavior (This).isCollision (ownerLayer, collisionLayer);
        end if;
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      ownerCollidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        ownerCollidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (ownerLayer);
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (collidableInterfaceCompositeInterface);
        ownerCollidableDestroyableDamageableLayer.damage (collidableDestroyableDamageableLayer.getDamage (0), 0);
   end collide;

   function isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        ForcedLogUtil_Package.log (To_Unbounded_String ("No Longer Used"), CollidableDestroyableDamageableBehavior_Access'(This'Unchecked_Access));
        return False;
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        ForcedLogUtil_Package.log (To_Unbounded_String ("No Longer Used"), CollidableDestroyableDamageableBehavior_Access'(This'Unchecked_Access));
   end collideInterface;

   procedure isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollision (ownerLayer_Param => ownerLayer_Param, collisionLayer_Param => collisionLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollisionInterface (ownerLayer_Param => ownerLayer_Param, collidableInterfaceCompositeInterface_Param => collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;


