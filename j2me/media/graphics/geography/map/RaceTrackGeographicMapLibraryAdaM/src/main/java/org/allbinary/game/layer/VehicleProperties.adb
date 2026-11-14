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


with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
with org.allbinary.game.layer.VehicleFrictionProperties_Package; use org.allbinary.game.layer.VehicleFrictionProperties_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package_References;
with org.allbinary.math.Angle_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.physics.FrictionProperties_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package;

package body org.allbinary.game.layer.VehicleProperties_Package is

   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   function "=" (Left, Right : VelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VehicleFrictionProperties_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access;
   function "=" (Left, Right : VehicleFrictionProperties_Access) return Boolean renames org.allbinary.game.layer.VehicleFrictionProperties_Package_References."=";
   subtype VehicleFrictionProperties_Access_Array is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array;
   function "=" (Left, Right : VehicleFrictionProperties_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleFrictionProperties_Package_References."=";
   subtype VehicleFrictionProperties_Access_Array_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access;
   function "=" (Left, Right : VehicleFrictionProperties_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleFrictionProperties_Package_References."=";
   subtype VehicleFrictionProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VehicleFrictionProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleFrictionProperties_Package_References."=";
   subtype VehicleFrictionProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VehicleFrictionProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleFrictionProperties_Package_References."=";
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


