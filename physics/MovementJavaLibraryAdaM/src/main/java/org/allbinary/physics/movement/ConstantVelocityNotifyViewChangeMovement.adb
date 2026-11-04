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


with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package_References;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.physics.movement.MovementInterface_Package;

package body org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   subtype AllBinaryGameLayer_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype AxisMathVectorUtil_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ConstantVelocityNotifyViewChangeMovement'Class) is
   begin
      null;
      
      
      This.axisMathVectorUtil := AxisMathVectorUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ConstantVelocityNotifyViewChangeMovement'Class) is
   begin
      Movement_Package.Initialize (This);
      Initialize_Fields (This);
        This.speedBasicDecimal := BasicDecimal_Access (BasicDecimal_Package.ZERO_BIGDECIMAL);
        This.basicVelocityProperties := BasicVelocityProperties_Package.Create;
   end Initialize;

   function Create return ConstantVelocityNotifyViewChangeMovement_Access is
      This : constant ConstantVelocityNotifyViewChangeMovement_Access := new ConstantVelocityNotifyViewChangeMovement;
   begin
      ConstantVelocityNotifyViewChangeMovement_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out ConstantVelocityNotifyViewChangeMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
      angleFactory : AngleFactory_Access;
   begin
        This.speedBasicDecimal := speedBasicDecimal;
        angleFactory := AngleFactory_Package.getInstance;
        This.basicVelocityProperties.setVelocityWithBigDecimal (speedBasicDecimal, angleFactory.getAt (angle), angleFactory.getAt (otherAngle));
   end init;

   procedure moveOutsideRadius (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
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
   procedure process (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
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


