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


with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;

package body org.allbinary.physics.movement.CustomGravityConstantVelocityMovement_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   procedure Initialize_Fields (This : in out CustomGravityConstantVelocityMovement'Class) is
   begin
      null;
      
      This.gravityUtil := GravityUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomGravityConstantVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; customGravity : Integer) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
        This.customGravity := customGravity;
   end Initialize;

   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; customGravity : Integer) return CustomGravityConstantVelocityMovement_Access is
      This : constant CustomGravityConstantVelocityMovement_Access := new CustomGravityConstantVelocityMovement;
   begin
      CustomGravityConstantVelocityMovement_Package.Initialize (This.all, speedBasicDecimal_Param, customGravity);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out CustomGravityConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
      velocityProperties : VelocityProperties_Access;
   begin
        BasicConstantVelocityMovement (This).process (layer);
        This.gravityUtil.process (CustomGravityConstantVelocityMovement'Class (This).getVelocityProperties, This.customGravity);
        velocityProperties := VelocityProperties_Access (CustomGravityConstantVelocityMovement'Class (This).getVelocityProperties);
        velocityProperties.limitMaxYForwardVelocity;
   end process;

end org.allbinary.physics.movement.CustomGravityConstantVelocityMovement_Package;


