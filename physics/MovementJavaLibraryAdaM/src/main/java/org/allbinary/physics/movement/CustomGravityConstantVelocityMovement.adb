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


package body org.allbinary.physics.movement.CustomGravityConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out CustomGravityConstantVelocityMovement'Class) is
   begin
      null;
      
      This.gravityUtil := GravityUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomGravityConstantVelocityMovement'Class; speedBasicDecimal : BasicDecimal_Access; customGravity : Integer) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
        This.customGravity := customGravity;
   end Initialize;

   function Create (speedBasicDecimal : BasicDecimal_Access; customGravity : Integer) return CustomGravityConstantVelocityMovement_Access is
      This : constant CustomGravityConstantVelocityMovement_Access := new CustomGravityConstantVelocityMovement;
   begin
      CustomGravityConstantVelocityMovement_Package.Initialize (This.all, speedBasicDecimal, customGravity);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out CustomGravityConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
      velocityProperties : VelocityProperties_Access;
   begin
        BasicConstantVelocityMovement (This).process (layer);
        This.gravityUtil.process (This.getVelocityProperties, This.customGravity);
        velocityProperties := VelocityProperties_Access (This.getVelocityProperties);
        velocityProperties.limitMaxYForwardVelocity;
   end process;

end org.allbinary.physics.movement.CustomGravityConstantVelocityMovement_Package;


