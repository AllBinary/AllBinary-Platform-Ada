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



package body org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package is

   procedure Initialize_Fields (This : in out CollidableNeverCollideBehaviorFactory'Class) is
   begin
      null;
      This.instance := CollidableNeverCollideBehavior_Package.Create (False);
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableNeverCollideBehaviorFactory'Class) is
   begin
      CollidableBaseBehaviorFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableNeverCollideBehaviorFactory_Access is
      This : constant CollidableNeverCollideBehaviorFactory_Access := new CollidableNeverCollideBehaviorFactory;
   begin
      CollidableNeverCollideBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollidableNeverCollideBehaviorFactory_Access is
   begin
        return CollidableNeverCollideBehaviorFactory_Package.instanceC;
   end getInstance;

   function createBehavior (This : in out CollidableNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access is
   begin
        return CollidableBaseBehavior_Access (This.instance);
   end createBehavior;

begin
   null;
   instanceC := CollidableNeverCollideBehaviorFactory_Package.Create;

end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;


