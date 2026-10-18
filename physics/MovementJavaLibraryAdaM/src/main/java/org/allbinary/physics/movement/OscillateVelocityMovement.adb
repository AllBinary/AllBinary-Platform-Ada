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


package body org.allbinary.physics.movement.OscillateVelocityMovement_Package is

   procedure Initialize_Fields (This : in out OscillateVelocityMovement'Class) is
   begin
      null;
      
      
      This.oscillate := 0;
      This.oscillatePositive := False;
   end Initialize_Fields;


   procedure Initialize (This : in out OscillateVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; oscillateMin : Integer; oscillateMax : Integer) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
        This.oscillateMin := oscillateMin;
        This.oscillateMax := oscillateMax;
   end Initialize;

   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; oscillateMin : Integer; oscillateMax : Integer) return OscillateVelocityMovement_Access is
      This : constant OscillateVelocityMovement_Access := new OscillateVelocityMovement;
   begin
      OscillateVelocityMovement_Package.Initialize (This.all, speedBasicDecimal_Param, oscillateMin, oscillateMax);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out OscillateVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        BasicConstantVelocityMovement (This).process (layer);
        if (This.oscillate) < (This.oscillateMin) then
            This.oscillatePositive := True;
        elsif (This.oscillate) > (This.oscillateMax) then
            This.oscillatePositive := False;
        end if;
        if This.oscillatePositive then
            This.oscillate := This.oscillate + 1;
            OscillateVelocityMovement'Class (This).getVelocityProperties.getVelocityXBasicDecimalP.addint (2000);
        else
            This.oscillate := This.oscillate - 1;
            OscillateVelocityMovement'Class (This).getVelocityProperties.getVelocityXBasicDecimalP.subtractint (2000);
        end if;
   end process;

end org.allbinary.physics.movement.OscillateVelocityMovement_Package;


