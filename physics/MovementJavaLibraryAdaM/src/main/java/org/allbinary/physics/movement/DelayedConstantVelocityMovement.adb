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


with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

package body org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package is

   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   procedure Initialize_Fields (This : in out DelayedConstantVelocityMovement'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (60);
   end Initialize_Fields;


   procedure Initialize (This : in out DelayedConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) is
      basicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (basicDecimal_Param);
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, basicDecimal, velocityProperties);
        Initialize_Fields (This);
   end Initialize;

   function Create (basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) return DelayedConstantVelocityMovement_Access is
      This : constant DelayedConstantVelocityMovement_Access := new DelayedConstantVelocityMovement;
   begin
      DelayedConstantVelocityMovement_Package.Initialize (This.all, basicDecimal_Param, velocityProperties_Param);
      return This;
   end Create;

   procedure init (This : in out DelayedConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        null;
   end init;

   --  throws Exception
   procedure process (This : in out DelayedConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            BasicConstantVelocityMovement (This).process (layer);
        end if;
   end process;

end org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package;


