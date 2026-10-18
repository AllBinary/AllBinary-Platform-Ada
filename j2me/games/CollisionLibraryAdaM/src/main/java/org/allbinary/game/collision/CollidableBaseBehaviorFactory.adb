-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package is

   procedure Initialize_Fields (This : in out CollidableBaseBehaviorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableBaseBehaviorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableBaseBehaviorFactory_Access is
      This : constant CollidableBaseBehaviorFactory_Access := new CollidableBaseBehaviorFactory;
   begin
      CollidableBaseBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createBehavior (This : in out CollidableBaseBehaviorFactory) return CollidableBaseBehavior_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end createBehavior;

end org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;


