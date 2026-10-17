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


package body org.allbinary.game.physics.acceleration.GravityUtil_Package is

   procedure Initialize_Fields (This : in out GravityUtil'Class) is
   begin
      null;
      This.GAME_GRAVITY_VELOCITY := 1800;
      This.MAX_GAME_VELOCITY := 18000;
   end Initialize_Fields;

   procedure Initialize (This : in out GravityUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GravityUtil_Access is
      This : constant GravityUtil_Access := new GravityUtil;
   begin
      GravityUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GravityUtil_Access is
   begin
        return GravityUtil_Package.instance;
   end getInstance;

   procedure process (This : in out GravityUtil; velocityProperties : BasicVelocityProperties_Access; customGravity : Integer) is
   begin
        velocityProperties.getVelocityYBasicDecimalP.addint (customGravity);
   end process;

begin
   null;
   instance := GravityUtil_Package.Create;

end org.allbinary.game.physics.acceleration.GravityUtil_Package;


