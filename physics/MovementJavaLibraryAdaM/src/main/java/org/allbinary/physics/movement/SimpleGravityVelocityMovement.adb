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


package body org.allbinary.physics.movement.SimpleGravityVelocityMovement_Package is

   procedure Initialize_Fields (This : in out SimpleGravityVelocityMovement'Class) is
   begin
      null;
      This.gravityUtil := GravityUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleGravityVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal'Class) is
      speedBasicDecimal : BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
   end Initialize;

   function Create (speedBasicDecimal_Param : access BasicDecimal'Class) return SimpleGravityVelocityMovement_Access is
      This : constant SimpleGravityVelocityMovement_Access := new SimpleGravityVelocityMovement;
   begin
      SimpleGravityVelocityMovement_Package.Initialize (This.all, speedBasicDecimal_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out SimpleGravityVelocityMovement; layer_Param : access AllBinaryGameLayer'Class) is
      layer : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        This.gravityUtil.process (This.getVelocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
        BasicConstantVelocityMovement (This).process (layer);
   end process;

end org.allbinary.physics.movement.SimpleGravityVelocityMovement_Package;


