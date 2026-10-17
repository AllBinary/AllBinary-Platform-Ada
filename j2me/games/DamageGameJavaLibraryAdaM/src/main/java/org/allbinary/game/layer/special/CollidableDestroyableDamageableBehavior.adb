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


package body org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package is

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
      Initialize (This.all, collidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean is
   begin
        if (ownerLayer.getGroupInterface (0)) /= (collisionLayer.getGroupInterface (0)) then
            return CollidableBaseBehavior (This).isCollision (ownerLayer, collisionLayer);
        end if;
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      ownerCollidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        ownerCollidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (ownerLayer);
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (collidableInterfaceCompositeInterface);
        ownerCollidableDestroyableDamageableLayer.damage (collidableDestroyableDamageableLayer.getDamage (0), 0);
   end collide;

   function isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean is
   begin
        ForcedLogUtil_Package.log (To_Unbounded_String ("No Longer Used"), This'Unchecked_Access);
        return False;
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
   begin
        ForcedLogUtil_Package.log (To_Unbounded_String ("No Longer Used"), This'Unchecked_Access);
   end collideInterface;

   procedure isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollision (ownerLayer, collisionLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
      Java_Result : constant Boolean := CollidableDestroyableDamageableBehavior'Class (This).isCollisionInterface (ownerLayer, collidableInterfaceCompositeInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;


