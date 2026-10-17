-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.CollidableRTSBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableRTSBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableRTSBehavior'Class; collidable : Boolean) is
   begin
        CollidableDestroyableDamageableBehavior_Package.Initialize (This, collidable);
   end Initialize;

   function Create (collidable : Boolean) return CollidableRTSBehavior_Access is
      This : constant CollidableRTSBehavior_Access := new CollidableRTSBehavior;
   begin
      Initialize (This.all, collidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) return Boolean is
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            null;
        elsif (collisionType) = (collisionTypeFactory.COLLISION) then
            return CollidableDestroyableDamageableBehavior (This).isCollision (ownerLayer, collidableInterfaceCompositeInterface);
        else
            if ((((collidableInterfaceCompositeInterface.getX2) <= (ownerLayer.getXP)) or else ((collidableInterfaceCompositeInterface.getY2) <= (ownerLayer.getYP))) or else ((collidableInterfaceCompositeInterface.getYP) >= (ownerLayer.getY2))) or else ((collidableInterfaceCompositeInterface.getXP) >= (ownerLayer.getX2)) then
                return False;
            else
                return True;
            end if;
        end if;
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            null;
        elsif (collisionType) = (collisionTypeFactory.COLLISION) then
            CollidableDestroyableDamageableBehavior (This).collide (ownerLayer, collidableInterfaceCompositeInterface);
        else
            This.collideNone (ownerLayer, collidableInterfaceCompositeInterface);
        end if;
   end collide;

   --  throws Exception
   procedure collideNone (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterface : CollidableCompositeLayer_Access) is
   begin
        null;
   end collideNone;

   procedure isCollision (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableRTSBehavior'Class (This).isCollision (ownerLayer, collidableInterfaceCompositeInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.layer.CollidableRTSBehavior_Package;


