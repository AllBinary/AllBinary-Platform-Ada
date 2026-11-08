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


with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
with org.allbinary.direction.DirectionUtil_Package; use org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.direction.DirectionUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.physics.velocity.BasicVelocityProperties_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   function "=" (Left, Right : Direction_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   function "=" (Left, Right : Direction_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   function "=" (Left, Right : Direction_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype DirectionUtil_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access;
   function "=" (Left, Right : DirectionUtil_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   function "=" (Left, Right : Angle_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   function "=" (Left, Right : Angle_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   function "=" (Left, Right : Angle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   procedure Initialize_Fields (This : in out BasicVelocityProperties'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      This.axisMathVectorUtil := AxisMathVectorUtil_Package.getInstance;
      This.directionUtil := DirectionUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicVelocityProperties'Class) is
   begin
      Initialize_Fields (This);
        This.velocityXBasicDecimal := BasicDecimal_Package.Create (0);
        This.velocityYBasicDecimal := BasicDecimal_Package.Create (0);
        This.velocityZBasicDecimal := BasicDecimal_Package.Create (0);
   end Initialize;

   function Create return BasicVelocityProperties_Access is
      This : constant BasicVelocityProperties_Access := new BasicVelocityProperties;
   begin
      BasicVelocityProperties_Package.Initialize (This.all);
      return This;
   end Create;

   procedure zero (This : in out BasicVelocityProperties) is
   begin
        This.velocityXBasicDecimal.setint (0);
        This.velocityYBasicDecimal.setint (0);
        This.velocityZBasicDecimal.setint (0);
   end zero;

   function getVelocityXBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access is
   begin
        return This.velocityXBasicDecimal;
   end getVelocityXBasicDecimalP;

   function getVelocityYBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access is
   begin
        return This.velocityYBasicDecimal;
   end getVelocityYBasicDecimalP;

   function getVelocityZBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access is
   begin
        return This.velocityZBasicDecimal;
   end getVelocityZBasicDecimalP;

   procedure setVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
      direction : constant Direction_Access := Direction_Access (direction_Param);
      otherDirection : constant Direction_Access := Direction_Access (otherDirection_Param);
      angle : Angle_Access;
      otherAngle : Angle_Access;
   begin
        angle := This.directionUtil.getAngle (direction);
        otherAngle := This.directionUtil.getAngle (otherDirection);
        BasicVelocityProperties'Class (This).setVelocityWithBigDecimal (magnitudeBasicDecimal, angle, otherAngle);
   end setVelocityWithBigDecimalAndDirection;

   procedure setVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      otherDirection : constant Direction_Access := Direction_Access (otherDirection_Param);
      angle : Angle_Access;
      otherAngle : Angle_Access;
   begin
        angle := This.directionUtil.getAngle (direction);
        otherAngle := This.directionUtil.getAngle (otherDirection);
        BasicVelocityProperties'Class (This).setVelocity (magnitude, angle, otherAngle);
   end setVelocityWithDirection;

   procedure addVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
      direction : constant Direction_Access := Direction_Access (direction_Param);
      otherDirection : constant Direction_Access := Direction_Access (otherDirection_Param);
      angle : Angle_Access;
      otherAngle : Angle_Access;
   begin
        angle := This.directionUtil.getAngle (direction);
        otherAngle := This.directionUtil.getAngle (otherDirection);
        BasicVelocityProperties'Class (This).addVelocityWithBigDecimal (magnitudeBasicDecimal, angle, otherAngle);
   end addVelocityWithBigDecimalAndDirection;

   procedure addVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      otherDirection : constant Direction_Access := Direction_Access (otherDirection_Param);
      angle : Angle_Access;
      otherAngle : Angle_Access;
   begin
        angle := This.directionUtil.getAngle (direction);
        otherAngle := This.directionUtil.getAngle (otherDirection);
        BasicVelocityProperties'Class (This).addVelocity (magnitude, angle, otherAngle);
   end addVelocityWithDirection;

   procedure setVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
      angle : constant Angle_Access := Angle_Access (angle_Param);
      otherAngle : constant Angle_Access := Angle_Access (otherAngle_Param);
      magnitude : Long_Long_Integer;
   begin
        magnitude := magnitudeBasicDecimal.getUnscaled;
        BasicVelocityProperties'Class (This).setVelocity (magnitude, angle, otherAngle);
   end setVelocityWithBigDecimal;

   procedure addVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
      angle : constant Angle_Access := Angle_Access (angle_Param);
      otherAngle : constant Angle_Access := Angle_Access (otherAngle_Param);
      magnitude : Long_Long_Integer;
   begin
        magnitude := magnitudeBasicDecimal.getUnscaled;
        BasicVelocityProperties'Class (This).addVelocity (magnitude, angle, otherAngle);
   end addVelocityWithBigDecimal;

   procedure setVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
      otherAngle : constant Angle_Access := Angle_Access (otherAngle_Param);
   begin
        BasicVelocityProperties'Class (This).setVelocityi (magnitude, Integer (angle.getValue), Integer (otherAngle.getValue));
   end setVelocity;

   procedure addVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
      otherAngle : constant Angle_Access := Angle_Access (otherAngle_Param);
   begin
        BasicVelocityProperties'Class (This).addVelocityi (magnitude, Integer (angle.getValue), Integer (otherAngle.getValue));
   end addVelocity;

   procedure setVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      xVector : Long_Long_Integer;
      yVector : Long_Long_Integer;
      zVector : Long_Long_Integer;
   begin
        xVector := ((This.axisMathVectorUtil.calculateX (magnitude, angle)) / (Long_Long_Integer (This.velocityXBasicDecimal.getScaledFactorValue)));
        yVector := ((This.axisMathVectorUtil.calculateY (magnitude, angle)) / (Long_Long_Integer (This.velocityYBasicDecimal.getScaledFactorValue)));
        zVector := ((This.axisMathVectorUtil.calculateZ (magnitude, otherAngle)) / (Long_Long_Integer (This.velocityZBasicDecimal.getScaledFactorValue)));
        This.velocityXBasicDecimal.setlong (xVector);
        This.velocityYBasicDecimal.setlong (yVector);
        This.velocityZBasicDecimal.setlong (zVector);
   end setVelocityi;

   procedure addVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is
      xVector : Long_Long_Integer;
      yVector : Long_Long_Integer;
      zVector : Long_Long_Integer;
   begin
        xVector := ((This.axisMathVectorUtil.calculateX (magnitude, angle)) / (Long_Long_Integer (This.velocityXBasicDecimal.getScaledFactorValue)));
        yVector := ((This.axisMathVectorUtil.calculateY (magnitude, angle)) / (Long_Long_Integer (This.velocityYBasicDecimal.getScaledFactorValue)));
        zVector := ((This.axisMathVectorUtil.calculateZ (magnitude, otherAngle)) / (Long_Long_Integer (This.velocityZBasicDecimal.getScaledFactorValue)));
        This.velocityXBasicDecimal.addlong (xVector);
        This.velocityYBasicDecimal.addlong (yVector);
        This.velocityZBasicDecimal.addlong (zVector);
   end addVelocityi;

   function toString (This : in out BasicVelocityProperties) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (To_Unbounded_String ("Velocity "));
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.append (stringUtil.toString (This.velocityXBasicDecimal));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.append (stringUtil.toString (This.velocityYBasicDecimal));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.append (stringUtil.toString (This.velocityZBasicDecimal));
        return stringBuffer.toString;
   end toString;

end org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;


