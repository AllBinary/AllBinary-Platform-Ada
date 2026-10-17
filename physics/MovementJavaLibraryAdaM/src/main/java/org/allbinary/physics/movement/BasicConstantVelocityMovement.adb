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


package body org.allbinary.physics.movement.BasicConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out BasicConstantVelocityMovement'Class) is
   begin
      null;
      
      This.speedBasicDecimal := BasicDecimal_Package.ZERO_BIGDECIMAL;
      This.axisMathVectorUtil := AxisMathVectorUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) is
   begin
      Movement_Package.Initialize (This);
      Initialize_Fields (This);
        This.setSpeedBasicDecimal (basicDecimal);
        This.velocityProperties := velocityProperties;
   end Initialize;

   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return BasicConstantVelocityMovement_Access is
      This : constant BasicConstantVelocityMovement_Access := new BasicConstantVelocityMovement;
   begin
      BasicConstantVelocityMovement_Package.Initialize (This.all, basicDecimal, velocityProperties);
      return This;
   end Create;

   procedure init (This : in out BasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer) is
      angleFactory : AngleFactory_Access;
   begin
        This.speedBasicDecimal := speedBasicDecimal;
        angleFactory := AngleFactory_Package.getInstance;
        This.velocityProperties.setVelocityWithBigDecimal (speedBasicDecimal, angleFactory.getAt (angle), angleFactory.getAt (otherAngle));
   end init;

   procedure moveOutsideRadius (This : in out BasicConstantVelocityMovement; layer : AllBinaryLayer_Access; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      scaleFactorValue : Integer;
      xVector : Integer;
      yVector : Integer;
      zVector : Integer;
   begin
        scaleFactorValue := This.speedBasicDecimal.getScaledFactorValue;
        xVector := Integer (((This.axisMathVectorUtil.calculateX (radius, angle)) / (scaleFactorValue)));
        yVector := Integer (((This.axisMathVectorUtil.calculateY (radius, angle)) / (scaleFactorValue)));
        zVector := Integer (((This.axisMathVectorUtil.calculateZ (radius, otherAngle)) / (scaleFactorValue)));
        layer.moveDXYZ (xVector, yVector, zVector);
   end moveOutsideRadius;

   --  throws Exception
   procedure process (This : in out BasicConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
   begin
        layer.moveDXYZ (This.velocityProperties.getVelocityXBasicDecimalP.getScaled, This.velocityProperties.getVelocityYBasicDecimalP.getScaled, This.velocityProperties.getVelocityZBasicDecimalP.getScaled);
   end process;

   function toString (This : in out BasicConstantVelocityMovement) return Unbounded_String is
   begin
        return This.velocityProperties.toString;
   end toString;

   procedure stop (This : in out BasicConstantVelocityMovement) is
   begin
        This.velocityProperties.zero;
   end stop;

   function getVelocityProperties (This : in out BasicConstantVelocityMovement) return BasicVelocityProperties_Access is
   begin
        return This.velocityProperties;
   end getVelocityProperties;

   procedure setVelocityProperties (This : in out BasicConstantVelocityMovement; velocityProperties : BasicVelocityProperties_Access) is
   begin
        This.velocityProperties := velocityProperties;
   end setVelocityProperties;

   procedure setSpeedBasicDecimal (This : in out BasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access) is
   begin
        This.speedBasicDecimal := speedBasicDecimal;
   end setSpeedBasicDecimal;

   function getSpeedBasicDecimal (This : in out BasicConstantVelocityMovement) return BasicDecimal_Access is
   begin
        return This.speedBasicDecimal;
   end getSpeedBasicDecimal;

end org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;


