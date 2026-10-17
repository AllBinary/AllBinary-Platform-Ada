-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package is

   procedure Initialize_Fields (This : in out NoDragVelocityBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoDragVelocityBehavior'Class) is
   begin
      VelocityBehaviorBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoDragVelocityBehavior_Access is
      This : constant NoDragVelocityBehavior_Access := new NoDragVelocityBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   instance := NoDragVelocityBehavior_Package.Create;

end org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package;


