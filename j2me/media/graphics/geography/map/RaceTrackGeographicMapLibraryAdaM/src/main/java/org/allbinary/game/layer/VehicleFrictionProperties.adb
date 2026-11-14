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


with org.allbinary.game.physics.FrictionProperties_Package; use org.allbinary.game.physics.FrictionProperties_Package;
with org.allbinary.game.physics.friction.FrictionData_Package; use org.allbinary.game.physics.friction.FrictionData_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package;

package body org.allbinary.game.layer.VehicleFrictionProperties_Package is

   package FrictionData_Package renames Standard.org.allbinary.game.physics.friction.FrictionData_Package;
   procedure Initialize_Fields (This : in out VehicleFrictionProperties'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out VehicleFrictionProperties'Class; tireFriction : Integer; brakeFriction : Integer; airFriction : Integer; crashFriction : Integer) is
   begin
      FrictionProperties_Package.Initialize (This);
      Initialize_Fields (This);
        This.TIRE_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (tireFriction);
        This.BRAKE_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (brakeFriction);
        This.AIR_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (airFriction);
        This.CRASH_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (crashFriction);
   end Initialize;

   function Create (tireFriction : Integer; brakeFriction : Integer; airFriction : Integer; crashFriction : Integer) return VehicleFrictionProperties_Access is
      This : constant VehicleFrictionProperties_Access := new VehicleFrictionProperties;
   begin
      VehicleFrictionProperties_Package.Initialize (This.all, tireFriction, brakeFriction, airFriction, crashFriction);
      return This;
   end Create;

   function getTireFrictionNominator (This : in out VehicleFrictionProperties) return Integer is
   begin
        return This.TIRE_FRICTION_NOMINATOR;
   end getTireFrictionNominator;

   function getBrakeFrictionNominator (This : in out VehicleFrictionProperties) return Integer is
   begin
        return This.BRAKE_FRICTION_NOMINATOR;
   end getBrakeFrictionNominator;

   function getAirFrictionNominator (This : in out VehicleFrictionProperties) return Integer is
   begin
        return This.AIR_FRICTION_NOMINATOR;
   end getAirFrictionNominator;

   function getCrashFrictionNominator (This : in out VehicleFrictionProperties) return Integer is
   begin
        return This.CRASH_FRICTION_NOMINATOR;
   end getCrashFrictionNominator;

end org.allbinary.game.layer.VehicleFrictionProperties_Package;


