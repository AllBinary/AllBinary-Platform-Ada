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


package body org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableWeaponBehavior'Class) is
   begin
      null;
      This.collided := False;
      
   end Initialize_Fields;


   function getNullInstance return CollidableWeaponBehavior_Access is
   begin
        if (CollidableWeaponBehavior_Package.NULL_COLLIDABLE_WEAPON_BEHAVIOR) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CollidableWeaponBehavior_Package.NULL_COLLIDABLE_WEAPON_BEHAVIOR := CollidableWeaponBehavior_Package.Create (False);
        end if;
        return CollidableWeaponBehavior_Access (CollidableWeaponBehavior_Package.NULL_COLLIDABLE_WEAPON_BEHAVIOR);
   end getNullInstance;

   procedure Initialize (This : in out CollidableWeaponBehavior'Class; collidable : Boolean) is
   begin
        CollidableDestroyableDamageableBehavior_Package.Initialize (This, collidable);
        Initialize_Fields (This);
        This.setCollided (False);
        This.setCollidable (True);
        This.collisionHelper := CollidableHelperFactory_Package.getInstance;
   end Initialize;

   function Create (collidable : Boolean) return CollidableWeaponBehavior_Access is
      This : constant CollidableWeaponBehavior_Access := new CollidableWeaponBehavior;
   begin
      CollidableWeaponBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   procedure init (This : in out CollidableWeaponBehavior; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
        This.setCollided (False);
        This.collisionHelper.setOwnerLayerInterface (sourceLayerInterface);
   end init;

   function isCollision (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean is
   begin
        if This.collisionHelper.isCollidable (collisionLayer) then
            if (ownerLayer.getGroupInterface (0)) /= (collisionLayer.getGroupInterface (0)) then
                return CollidableDestroyableDamageableBehavior (This).isCollision (ownerLayer, collisionLayer);
            end if;
        end if;
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
   begin
        CollidableDestroyableDamageableBehavior (This).collide (ownerLayer, collisionLayer);
        This.collided := True;
   end collide;

   function isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean is
      layerInterface : AllBinaryLayer_Access;
   begin
        if This.collisionHelper.isCollidable (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface)) then
            layerInterface := AllBinaryLayer_Access (collidableInterfaceCompositeInterface);
            if (ownerLayer.getGroupInterface (0)) /= (layerInterface.getGroupInterface (0)) then
                if This.layerCollisionUtil.isCollision (ownerLayer, layerInterface) then
                    return True;
                end if;
            end if;
        end if;
        return False;
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
      ownerDamageableInterface : DamageableInterface_Access;
      damageableInterface : DamageableInterface_Access;
   begin
        ownerDamageableInterface := DamageableInterface_Access (ownerLayer);
        damageableInterface := DamageableInterface_Access (collidableInterfaceCompositeInterface);
        This.damageUtil.process (ownerDamageableInterface, damageableInterface);
        This.collided := True;
   end collideInterface;

   function getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access is
   begin
        return CollisionTypeFactory_Package.getInstance.COLLISION;
   end getCollisionTypeWith;

   function isCollided (This : in out CollidableWeaponBehavior) return Boolean is
   begin
        return This.collided;
   end isCollided;

   procedure setCollided (This : in out CollidableWeaponBehavior; collided : Boolean) is
   begin
        This.collided := collided;
   end setCollided;

   procedure isCollision (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableWeaponBehavior'Class (This).isCollision (ownerLayer, collisionLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
      Java_Result : constant Boolean := CollidableWeaponBehavior'Class (This).isCollisionInterface (ownerLayer, collidableInterfaceCompositeInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

   procedure getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant CollisionType_Access := CollidableWeaponBehavior'Class (This).getCollisionTypeWith (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCollisionTypeWith;

begin
   null;
   NULL_COLLIDABLE_WEAPON_BEHAVIOR := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;


