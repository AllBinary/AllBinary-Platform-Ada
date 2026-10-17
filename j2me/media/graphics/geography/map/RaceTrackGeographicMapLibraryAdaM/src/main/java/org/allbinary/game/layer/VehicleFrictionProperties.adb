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


package body org.allbinary.game.layer.VehicleFrictionProperties_Package is

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


