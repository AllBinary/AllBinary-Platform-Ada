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



package body org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package is

   procedure Initialize_Fields (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory'Class) is
   begin
      null;
      This.instance := CollidableAlwaysPickupNeverCollideBehavior_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory'Class) is
   begin
      CollidableBaseBehaviorFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableAlwaysPickupNeverCollideBehaviorFactory_Access is
      This : constant CollidableAlwaysPickupNeverCollideBehaviorFactory_Access := new CollidableAlwaysPickupNeverCollideBehaviorFactory;
   begin
      CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollidableAlwaysPickupNeverCollideBehaviorFactory_Access is
   begin
        return CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.instanceC;
   end getInstance;

   function createBehavior (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access is
   begin
        return CollidableBaseBehavior_Access (This.instance);
   end createBehavior;

begin
   null;
   instanceC := CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.Create;

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package;


