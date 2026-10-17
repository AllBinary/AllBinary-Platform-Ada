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


package body org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out DelayedConstantVelocityMovement'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (60);
   end Initialize_Fields;


   procedure Initialize (This : in out DelayedConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, basicDecimal, velocityProperties);
        Initialize_Fields (This);
   end Initialize;

   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return DelayedConstantVelocityMovement_Access is
      This : constant DelayedConstantVelocityMovement_Access := new DelayedConstantVelocityMovement;
   begin
      Initialize (This.all, basicDecimal, velocityProperties);
      return This;
   end Create;

   procedure init (This : in out DelayedConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer) is
   begin
        null;
   end init;

   --  throws Exception
   procedure process (This : in out DelayedConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            BasicConstantVelocityMovement (This).process (layer);
        end if;
   end process;

end org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package;


