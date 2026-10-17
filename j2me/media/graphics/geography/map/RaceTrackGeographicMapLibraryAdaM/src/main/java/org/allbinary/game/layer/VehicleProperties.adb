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


   procedure Initialize (This : in out VehicleProperties'Class; velocityProperties : VelocityProperties_Access; vehicleFrictionProperties : VehicleFrictionProperties_Access) is
   begin
      Initialize_Fields (This);
        This.velocityProperties := velocityProperties;
        This.vehicleFrictionProperties := vehicleFrictionProperties;
   end Initialize;

   function Create (velocityProperties : VelocityProperties_Access; vehicleFrictionProperties : VehicleFrictionProperties_Access) return VehicleProperties_Access is
      This : constant VehicleProperties_Access := new VehicleProperties;
   begin
      Initialize (This.all, velocityProperties, vehicleFrictionProperties);
      return This;
   end Create;

   function getVehicleFrictionProperties (This : in out VehicleProperties) return VehicleFrictionProperties_Access is
   begin
        return This.vehicleFrictionProperties;
   end getVehicleFrictionProperties;

   procedure setVehicleFrictionProperties (This : in out VehicleProperties; vehicleFrictionProperties : VehicleFrictionProperties_Access) is
   begin
        This.vehicleFrictionProperties := vehicleFrictionProperties;
   end setVehicleFrictionProperties;

   function getVelocityProperties (This : in out VehicleProperties) return VelocityProperties_Access is
   begin
        return This.velocityProperties;
   end getVelocityProperties;

   procedure getVehicleFrictionProperties (This : in out VehicleProperties) is
      Java_Result : constant VehicleFrictionProperties_Access := VehicleProperties'Class (This).getVehicleFrictionProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVehicleFrictionProperties;

   procedure getVelocityProperties (This : in out VehicleProperties) is
      Java_Result : constant VelocityProperties_Access := VehicleProperties'Class (This).getVelocityProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVelocityProperties;

end org.allbinary.game.layer.VehicleProperties_Package;


