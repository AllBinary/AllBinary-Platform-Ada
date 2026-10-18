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


with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

package body org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
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
            return CollidableBaseBehavior (This).isCollision (ownerLayer, collisionLayer);
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
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollision (ownerLayer_Param, collisionLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollisionInterface (ownerLayer_Param, collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;


