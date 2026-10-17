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


   procedure Initialize (This : in out BasicConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) is
      basicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (basicDecimal_Param);
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
      Movement_Package.Initialize (This);
      Initialize_Fields (This);
        This.setSpeedBasicDecimal (basicDecimal);
        This.velocityProperties := velocityProperties;
   end Initialize;

   function Create (basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) return BasicConstantVelocityMovement_Access is
      This : constant BasicConstantVelocityMovement_Access := new BasicConstantVelocityMovement;
   begin
      BasicConstantVelocityMovement_Package.Initialize (This.all, basicDecimal_Param, velocityProperties_Param);
      return This;
   end Create;

   procedure init (This : in out BasicConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
      angleFactory : AngleFactory_Access;
   begin
        This.speedBasicDecimal := speedBasicDecimal;
        angleFactory := AngleFactory_Package.getInstance;
        This.velocityProperties.setVelocityWithBigDecimal (speedBasicDecimal, angleFactory.getAt (angle), angleFactory.getAt (otherAngle));
   end init;

   procedure moveOutsideRadius (This : in out BasicConstantVelocityMovement; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
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
   procedure process (This : in out BasicConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
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

   procedure setVelocityProperties (This : in out BasicConstantVelocityMovement; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        This.velocityProperties := velocityProperties;
   end setVelocityProperties;

   procedure setSpeedBasicDecimal (This : in out BasicConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        This.speedBasicDecimal := speedBasicDecimal;
   end setSpeedBasicDecimal;

   function getSpeedBasicDecimal (This : in out BasicConstantVelocityMovement) return BasicDecimal_Access is
   begin
        return This.speedBasicDecimal;
   end getSpeedBasicDecimal;

end org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;


