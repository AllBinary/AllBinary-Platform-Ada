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


package body org.allbinary.game.layer.VehicleProperties_Package is

   procedure Initialize_Fields (This : in out VehicleProperties'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out VehicleProperties'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      vehicleFrictionProperties : constant VehicleFrictionProperties_Access := VehicleFrictionProperties_Access (vehicleFrictionProperties_Param);
   begin
      Initialize_Fields (This);
        This.velocityProperties := velocityProperties;
        This.vehicleFrictionProperties := vehicleFrictionProperties;
   end Initialize;

   function Create (velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class) return VehicleProperties_Access is
      This : constant VehicleProperties_Access := new VehicleProperties;
   begin
      VehicleProperties_Package.Initialize (This.all, velocityProperties_Param, vehicleFrictionProperties_Param);
      return This;
   end Create;

   function getVehicleFrictionProperties (This : in out VehicleProperties) return VehicleFrictionProperties_Access is
   begin
        return This.vehicleFrictionProperties;
   end getVehicleFrictionProperties;

   procedure setVehicleFrictionProperties (This : in out VehicleProperties; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class) is
      vehicleFrictionProperties : constant VehicleFrictionProperties_Access := VehicleFrictionProperties_Access (vehicleFrictionProperties_Param);
   begin
        This.vehicleFrictionProperties := vehicleFrictionProperties;
   end setVehicleFrictionProperties;

   function getVelocityProperties (This : in out VehicleProperties) return VelocityProperties_Access is
   begin
        return This.velocityProperties;
   end getVelocityProperties;

end org.allbinary.game.layer.VehicleProperties_Package;


