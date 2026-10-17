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


package body org.allbinary.game.layer.special.CollidableCharacterBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableCharacterBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableCharacterBehavior'Class; collidable : Boolean) is
   begin
        CollidableDestroyableDamageableBehavior_Package.Initialize (This, collidable);
   end Initialize;

   function Create (collidable : Boolean) return CollidableCharacterBehavior_Access is
      This : constant CollidableCharacterBehavior_Access := new CollidableCharacterBehavior;
   begin
      CollidableCharacterBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   --  throws Exception
   procedure collide (This : in out CollidableCharacterBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer'Class) is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
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
            CollidableDestroyableDamageableBehavior (This).collide (ownerLayer, collidableInterfaceCompositeInterface);
        end if;
   end collide;

   --  throws Exception
   procedure collideInterface (This : in out CollidableCharacterBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class) is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, CollidableCharacterBehavior_Access'(This'Unchecked_Access));
   end collideInterface;

end org.allbinary.game.layer.special.CollidableCharacterBehavior_Package;


