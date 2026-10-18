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


with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

package body org.allbinary.game.layer.special.CollidableCharacterNoDamageBehavior_Package is

   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
   package PickedUpLayerInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   procedure Initialize_Fields (This : in out CollidableCharacterNoDamageBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableCharacterNoDamageBehavior'Class; collidable : Boolean) is
   begin
        CollidableDestroyableDamageableBehavior_Package.Initialize (This, collidable);
   end Initialize;

   function Create (collidable : Boolean) return CollidableCharacterNoDamageBehavior_Access is
      This : constant CollidableCharacterNoDamageBehavior_Access := new CollidableCharacterNoDamageBehavior;
   begin
      CollidableCharacterNoDamageBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   --  throws Exception
   procedure collide (This : in out CollidableCharacterNoDamageBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (ownerLayer);
            collidableDestroyableDamageableLayer.getPickupBehavior.doPickupLayer (PickedUpLayerInterface_Access (collidableInterfaceCompositeInterface));
        else
            null;
        end if;
   end collide;

   --  throws Exception
   procedure collideInterface (This : in out CollidableCharacterNoDamageBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, CollidableCharacterNoDamageBehavior_Access'(This'Unchecked_Access));
   end collideInterface;

end org.allbinary.game.layer.special.CollidableCharacterNoDamageBehavior_Package;


