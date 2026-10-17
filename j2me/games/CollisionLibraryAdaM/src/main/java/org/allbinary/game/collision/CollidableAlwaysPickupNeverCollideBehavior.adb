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


package body org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class) is
   begin
        CollidableNeverCollideBehavior_Package.Initialize (This, True);
   end Initialize;

   function Create return CollidableAlwaysPickupNeverCollideBehavior_Access is
      This : constant CollidableAlwaysPickupNeverCollideBehavior_Access := new CollidableAlwaysPickupNeverCollideBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access is
   begin
        return CollisionTypeFactory_Package.getInstance.PICKUP;
   end getCollisionTypeWith;

   procedure getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant CollisionType_Access := CollidableAlwaysPickupNeverCollideBehavior'Class (This).getCollisionTypeWith (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCollisionTypeWith;

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package;


