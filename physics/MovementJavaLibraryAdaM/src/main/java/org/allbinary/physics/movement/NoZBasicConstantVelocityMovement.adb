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


package body org.allbinary.physics.movement.NoZBasicConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out NoZBasicConstantVelocityMovement'Class) is
   begin
      null;
      
      This.speedBasicDecimal := BasicDecimal_Package.ZERO_BIGDECIMAL;
      This.axisMathVectorUtil := AxisMathVectorUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NoZBasicConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) is
   begin
      Movement_Package.Initialize (This);
      Initialize_Fields (This);
        This.setSpeedBasicDecimal (basicDecimal);
        This.velocityProperties := velocityProperties;
   end Initialize;

   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return NoZBasicConstantVelocityMovement_Access is
      This : constant NoZBasicConstantVelocityMovement_Access := new NoZBasicConstantVelocityMovement;
   begin
      Initialize (This.all, basicDecimal, velocityProperties);
      return This;
   end Create;

   procedure init (This : in out NoZBasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer) is
      angleFactory : AngleFactory_Access;
   begin
        This.speedBasicDecimal := speedBasicDecimal;
        angleFactory := AngleFactory_Package.getInstance;
        This.velocityProperties.setVelocityWithBigDecimal (speedBasicDecimal, angleFactory.getAt (angle), angleFactory.getAt (otherAngle));
   end init;

   procedure moveOutsideRadius (This : in out NoZBasicConstantVelocityMovement; layer : AllBinaryLayer_Access; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      scaleFactorValue : Integer;
      xVector : Integer;
      yVector : Integer;
   begin
        scaleFactorValue := This.speedBasicDecimal.getScaledFactorValue;
        xVector := Integer (((This.axisMathVectorUtil.calculateX (radius, angle)) / (scaleFactorValue)));
        yVector := Integer (((This.axisMathVectorUtil.calculateY (radius, angle)) / (scaleFactorValue)));
        layer.moveDXYZ (xVector, yVector, 0);
   end moveOutsideRadius;

   --  throws Exception
   procedure process (This : in out NoZBasicConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
   begin
        layer.moveDXYZ (This.velocityProperties.getVelocityXBasicDecimalP.getScaled, This.velocityProperties.getVelocityYBasicDecimalP.getScaled, 0);
   end process;

   function toString (This : in out NoZBasicConstantVelocityMovement) return Unbounded_String is
   begin
        return This.velocityProperties.toString;
   end toString;

   procedure stop (This : in out NoZBasicConstantVelocityMovement) is
   begin
        This.velocityProperties.zero;
   end stop;

   function getVelocityProperties (This : in out NoZBasicConstantVelocityMovement) return BasicVelocityProperties_Access is
   begin
        return This.velocityProperties;
   end getVelocityProperties;

   procedure setVelocityProperties (This : in out NoZBasicConstantVelocityMovement; velocityProperties : BasicVelocityProperties_Access) is
   begin
        This.velocityProperties := velocityProperties;
   end setVelocityProperties;

   procedure setSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access) is
   begin
        This.speedBasicDecimal := speedBasicDecimal;
   end setSpeedBasicDecimal;

   function getSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement) return BasicDecimal_Access is
   begin
        return This.speedBasicDecimal;
   end getSpeedBasicDecimal;

   procedure toString (This : in out NoZBasicConstantVelocityMovement) is
      Java_Result : constant Unbounded_String := NoZBasicConstantVelocityMovement'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getVelocityProperties (This : in out NoZBasicConstantVelocityMovement) is
      Java_Result : constant BasicVelocityProperties_Access := NoZBasicConstantVelocityMovement'Class (This).getVelocityProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVelocityProperties;

   procedure getSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement) is
      Java_Result : constant BasicDecimal_Access := NoZBasicConstantVelocityMovement'Class (This).getSpeedBasicDecimal;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpeedBasicDecimal;

end org.allbinary.physics.movement.NoZBasicConstantVelocityMovement_Package;


