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


package body org.allbinary.physics.movement.XYOscillateVelocityMovement_Package is

   procedure Initialize_Fields (This : in out XYOscillateVelocityMovement'Class) is
   begin
      null;
      
      
      This.oscillate := 0;
      This.oscillatePositive := False;
   end Initialize_Fields;


   procedure Initialize (This : in out XYOscillateVelocityMovement'Class; speedBasicDecimal : BasicDecimal_Access; oscillateMin : Integer; oscillateMax : Integer) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
        This.oscillateMin := oscillateMin;
        This.oscillateMax := oscillateMax;
   end Initialize;

   function Create (speedBasicDecimal : BasicDecimal_Access; oscillateMin : Integer; oscillateMax : Integer) return XYOscillateVelocityMovement_Access is
      This : constant XYOscillateVelocityMovement_Access := new XYOscillateVelocityMovement;
   begin
      Initialize (This.all, speedBasicDecimal, oscillateMin, oscillateMax);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out XYOscillateVelocityMovement; layer : AllBinaryGameLayer_Access) is
   begin
        BasicConstantVelocityMovement (This).process (layer);
        if (This.oscillate) < (This.oscillateMin) then
            This.oscillatePositive := True;
            This.getVelocityProperties.getVelocityYBasicDecimalP.addint (3000);
        elsif (This.oscillate) > (This.oscillateMax) then
            This.oscillatePositive := False;
            This.getVelocityProperties.getVelocityYBasicDecimalP.subtractint (3000);
        end if;
        if This.oscillatePositive then
            This.oscillate := This.oscillate + 1;
            This.getVelocityProperties.getVelocityXBasicDecimalP.addint (5000);
        else
            This.oscillate := This.oscillate - 1;
            This.getVelocityProperties.getVelocityXBasicDecimalP.subtractint (5000);
        end if;
   end process;

end org.allbinary.physics.movement.XYOscillateVelocityMovement_Package;


