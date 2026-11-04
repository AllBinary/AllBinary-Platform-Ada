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


with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;

package body org.allbinary.game.layer.CollidableRTSBehavior_Package is

   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
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
      CollidableRTSBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            null;
        elsif (collisionType) = (collisionTypeFactory.COLLISION) then
            return CollidableDestroyableDamageableBehavior_Package.CollidableDestroyableDamageableBehavior (This).isCollision (ownerLayer, collidableInterfaceCompositeInterface);
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
   procedure collide (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            null;
        elsif (collisionType) = (collisionTypeFactory.COLLISION) then
            CollidableDestroyableDamageableBehavior_Package.CollidableDestroyableDamageableBehavior (This).collide (ownerLayer, collidableInterfaceCompositeInterface);
        else
            CollidableRTSBehavior'Class (This).collideNone (ownerLayer, collidableInterfaceCompositeInterface);
        end if;
   end collide;

   --  throws Exception
   procedure collideNone (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterface_Param);
   begin
        null;
   end collideNone;

   procedure isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollidableRTSBehavior'Class (This).isCollision (ownerLayer_Param => ownerLayer_Param, collidableInterfaceCompositeInterface_Param => collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.layer.CollidableRTSBehavior_Package;


