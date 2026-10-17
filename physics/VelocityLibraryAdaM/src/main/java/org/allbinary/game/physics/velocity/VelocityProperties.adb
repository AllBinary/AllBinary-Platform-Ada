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


package body org.allbinary.game.physics.velocity.VelocityProperties_Package is

   procedure Initialize_Fields (This : in out VelocityProperties'Class) is
   begin
      null;
      This.maxForwardVelocity := 0;
      This.maxReverseVelocity := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out VelocityProperties'Class; maxForwardVelocity : Integer; maxReverseVelocity : Integer) is
   begin
      BasicVelocityProperties_Package.Initialize (This);
      Initialize_Fields (This);
        This.setMaxForwardVelocity (maxForwardVelocity);
        This.setMaxReverseVelocity (maxReverseVelocity);
   end Initialize;

   function Create (maxForwardVelocity : Integer; maxReverseVelocity : Integer) return VelocityProperties_Access is
      This : constant VelocityProperties_Access := new VelocityProperties;
   begin
      VelocityProperties_Package.Initialize (This.all, maxForwardVelocity, maxReverseVelocity);
      return This;
   end Create;

   function getMaxForwardVelocity (This : in out VelocityProperties) return Integer is
   begin
        return This.maxForwardVelocity;
   end getMaxForwardVelocity;

   procedure setMaxForwardVelocity (This : in out VelocityProperties; maxForwardVelocity : Integer) is
   begin
        This.maxForwardVelocity := maxForwardVelocity;
   end setMaxForwardVelocity;

   function getMaxReverseVelocity (This : in out VelocityProperties) return Integer is
   begin
        return This.maxReverseVelocity;
   end getMaxReverseVelocity;

   procedure setMaxReverseVelocity (This : in out VelocityProperties; maxReverseVelocity : Integer) is
   begin
        This.maxReverseVelocity := maxReverseVelocity;
   end setMaxReverseVelocity;

   procedure limitMaxXYForwardVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxXYVelocity (This.getMaxForwardVelocity);
   end limitMaxXYForwardVelocity;

   procedure limitMaxXYReverseVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxXYVelocity (This.getMaxReverseVelocity);
   end limitMaxXYReverseVelocity;

   procedure limitMaxYForwardVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxYVelocity (This.getMaxForwardVelocity);
   end limitMaxYForwardVelocity;

   procedure limitMaxYReverseVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxYVelocity (This.getMaxReverseVelocity);
   end limitMaxYReverseVelocity;

   procedure limitMaxXForwardVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxXVelocity (This.getMaxForwardVelocity);
   end limitMaxXForwardVelocity;

   procedure limitMaxXReverseVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxXVelocity (This.getMaxReverseVelocity);
   end limitMaxXReverseVelocity;

   function isOverXYMaxForwardVelocity (This : in out VelocityProperties) return Boolean is
   begin
        return This.isOverXYMaxVelocity (This.getMaxForwardVelocity);
   end isOverXYMaxForwardVelocity;

   function isOverXYMaxReverseVelocity (This : in out VelocityProperties) return Boolean is
   begin
        return This.isOverXYMaxVelocity (This.getMaxReverseVelocity);
   end isOverXYMaxReverseVelocity;

   procedure limitXYToForwardAndReverseMaxVelocity (This : in out VelocityProperties) is
   begin
        This.limitMaxXYForwardVelocity;
        This.limitMaxXYReverseVelocity;
   end limitXYToForwardAndReverseMaxVelocity;

   procedure limitMaxXYVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
   begin
        This.limitMaxXVelocity (maxVelocity);
        This.limitMaxYVelocity (maxVelocity);
   end limitMaxXYVelocity;

   procedure limitMaxPositiveYVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
   begin
        if (This.velocityYBasicDecimal.getUnscaled) > (maxVelocity) then
            This.velocityYBasicDecimal.setint (maxVelocity);
        end if;
   end limitMaxPositiveYVelocity;

   procedure limitMaxNegativeYVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
   begin
        if (This.velocityYBasicDecimal.getUnscaled) < (-(maxVelocity)) then
            This.velocityYBasicDecimal.setint (-(maxVelocity));
        end if;
   end limitMaxNegativeYVelocity;

   procedure limitMaxYVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
   begin
        This.limitMaxPositiveYVelocity (maxVelocity);
        This.limitMaxNegativeYVelocity (maxVelocity);
   end limitMaxYVelocity;

   procedure limitMaxXVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
   begin
        if (This.velocityXBasicDecimal.getUnscaled) > (maxVelocity) then
            This.velocityXBasicDecimal.setint (maxVelocity);
        end if;
        if (This.velocityXBasicDecimal.getUnscaled) < (-(maxVelocity)) then
            This.velocityXBasicDecimal.setint (-(maxVelocity));
        end if;
   end limitMaxXVelocity;

   function isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer) return Boolean is
   begin
        if (This.velocityXBasicDecimal.getUnscaled) > (maxVelocity) then
            return True;
        end if;
        if (This.velocityXBasicDecimal.getUnscaled) < (-(maxVelocity)) then
            return True;
        end if;
        if (This.velocityYBasicDecimal.getUnscaled) > (maxVelocity) then
            return True;
        end if;
        if (This.velocityYBasicDecimal.getUnscaled) < (-(maxVelocity)) then
            return True;
        end if;
        return False;
   end isOverXYMaxVelocity;

   procedure setVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
   begin
        BasicVelocityProperties (This).setVelocityi (magnitude, angle, otherAngle);
        This.limitXYToForwardAndReverseMaxVelocity;
   end setVelocityi;

   procedure addVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
   begin
        BasicVelocityProperties (This).addVelocityi (magnitude, angle, otherAngle);
        This.limitXYToForwardAndReverseMaxVelocity;
   end addVelocityi;

   procedure isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer) is
      Java_Result : constant Boolean := VelocityProperties'Class (This).isOverXYMaxVelocity (maxVelocity);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOverXYMaxVelocity;

begin
   null;
   NULL_VELOCITY_PROPERTIES := VelocityProperties_Package.Create (0, 0);

end org.allbinary.game.physics.velocity.VelocityProperties_Package;


