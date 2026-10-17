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


package body org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out BasicGravityConstantVelocityMovement'Class) is
   begin
      null;
      This.gravityUtil := GravityUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGravityConstantVelocityMovement'Class; speedBasicDecimal : BasicDecimal_Access) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
   end Initialize;

   function Create (speedBasicDecimal : BasicDecimal_Access) return BasicGravityConstantVelocityMovement_Access is
      This : constant BasicGravityConstantVelocityMovement_Access := new BasicGravityConstantVelocityMovement;
   begin
      Initialize (This.all, speedBasicDecimal);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out BasicGravityConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
   begin
        BasicConstantVelocityMovement (This).process (layer);
        This.gravityUtil.process (This.getVelocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
   end process;

end org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package;


