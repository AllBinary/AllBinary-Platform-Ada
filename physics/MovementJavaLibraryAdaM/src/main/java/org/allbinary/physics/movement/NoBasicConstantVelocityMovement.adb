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


package body org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out NoBasicConstantVelocityMovement'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoBasicConstantVelocityMovement'Class) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, BasicDecimal_Package.ZERO_BIGDECIMAL, BasicVelocityProperties_Package.Create);
   end Initialize;

   function Create return NoBasicConstantVelocityMovement_Access is
      This : constant NoBasicConstantVelocityMovement_Access := new NoBasicConstantVelocityMovement;
   begin
      NoBasicConstantVelocityMovement_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out NoBasicConstantVelocityMovement; layer_Param : access AllBinaryGameLayer'Class) is
      layer : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        null;
   end process;

end org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package;


