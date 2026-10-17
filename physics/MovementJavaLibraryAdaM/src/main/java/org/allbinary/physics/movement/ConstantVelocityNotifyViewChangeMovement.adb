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


package body org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package is

   procedure Initialize_Fields (This : in out ConstantVelocityNotifyViewChangeMovement'Class) is
   begin
      null;
      
      
      This.axisMathVectorUtil := AxisMathVectorUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ConstantVelocityNotifyViewChangeMovement'Class) is
   begin
      Movement_Package.Initialize (This);
      Initialize_Fields (This);
        This.speedBasicDecimal := BasicDecimal_Package.ZERO_BIGDECIMAL;
        This.basicVelocityProperties := BasicVelocityProperties_Package.Create;
   end Initialize;

   function Create return ConstantVelocityNotifyViewChangeMovement_Access is
      This : constant ConstantVelocityNotifyViewChangeMovement_Access := new ConstantVelocityNotifyViewChangeMovement;
   begin
      ConstantVelocityNotifyViewChangeMovement_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out ConstantVelocityNotifyViewChangeMovement; speedBasicDecimal_Param : access BasicDecimal'Class; angle : Integer; otherAngle : Integer) is
      speedBasicDecimal : BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
      angleFactory : AngleFactory_Access;
   begin
        This.speedBasicDecimal := speedBasicDecimal;
        angleFactory := AngleFactory_Package.getInstance;
        This.basicVelocityProperties.setVelocityWithBigDecimal (speedBasicDecimal, angleFactory.getAt (angle), angleFactory.getAt (otherAngle));
   end init;

   procedure moveOutsideRadius (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
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
   procedure process (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryGameLayer'Class) is
      layer : AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
      x : Integer;
      y : Integer;
      z : Integer;
   begin
        x := This.basicVelocityProperties.getVelocityXBasicDecimalP.getScaled;
        y := This.basicVelocityProperties.getVelocityYBasicDecimalP.getScaled;
        z := This.basicVelocityProperties.getVelocityZBasicDecimalP.getScaled;
        layer.moveDXYZ (x, y, z);
        if (((x) /= (0)) or else ((y) /= (0))) or else ((z) /= (0)) then
            layer.onViewPositionChangeEvent;
        end if;
   end process;

   procedure stop (This : in out ConstantVelocityNotifyViewChangeMovement) is
   begin
        This.basicVelocityProperties.zero;
   end stop;

end org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package;


