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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleFactory_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.vector.VectorInfo_Package_References;
with org.allbinary.animation.VectorAnimationUtil_Package; use org.allbinary.animation.VectorAnimationUtil_Package;
with org.allbinary.animation.VectorAnimationUtil_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.animation.VectorAnimationUtil_Package;

package body org.allbinary.animation.VectorRotationGenerator_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
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
   subtype AngleFactory_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access;
   function "=" (Left, Right : AngleFactory_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype VectorInfo_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access;
   function "=" (Left, Right : VectorInfo_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorAnimationUtil_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   subtype VectorAnimationUtil_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationUtil_Package_References."=";
   procedure Initialize_Fields (This : in out VectorRotationGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.vectorAnimationUtil := VectorAnimationUtil_Package.getInstance;
      This.angleFactory := AngleFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return VectorRotationGenerator_Access is
   begin
        return VectorRotationGenerator_Access (VectorRotationGenerator_Package.instance);
   end getInstance;

   procedure Initialize (This : in out VectorRotationGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorRotationGenerator_Access is
      This : constant VectorRotationGenerator_Access := new VectorRotationGenerator;
   begin
      VectorRotationGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out VectorRotationGenerator; vectorRotationInfo_Param : access VectorInfo_Package.VectorInfo'Class) return Integer_Array_Access_Array_Access_Array_Access is
      vectorRotationInfo : constant VectorInfo_Access := VectorInfo_Access (vectorRotationInfo_Param);
   begin
        return VectorRotationGenerator'Class (This).getInstanceFrames (vectorRotationInfo.getWidth, vectorRotationInfo.getHeight, vectorRotationInfo.getPoints, vectorRotationInfo.getTotalFrames);
   end getInstance;

   function getInstanceFrames (This : in out VectorRotationGenerator; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; frames : Integer) return Integer_Array_Access_Array_Access_Array_Access is
      totalAngle : Short_Integer;
      angleIncrement : Integer;
      pointsBasicArrayList : BasicArrayList_Access;
      pointBasicArrayList : BasicArrayList_Access;
      pointFactory : PointFactory_Access;
      size : Integer;
      index : Integer;
      newPoints : Integer_Array_Access_Array_Access_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            totalAngle := This.angleFactory.TOTAL_ANGLE;
            angleIncrement := (Integer (totalAngle)) / (frames);
            pointsBasicArrayList := BasicArrayList_Access (BasicArrayListS_Package.Create ((Integer (totalAngle)) / (angleIncrement)));
            pointBasicArrayList := BasicArrayList_Access (BasicArrayListS_Package.Create (points'Length));
            pointFactory := PointFactory_Package.getInstance;
            size := points'Length;
            for index in 0 .. (size) - 1 loop
                pointBasicArrayList.add (pointFactory.createXY (points (index) (0), points (index) (1)));
            end loop;
            index := 0;
            while (index) < (Integer (totalAngle)) loop
                pointsBasicArrayList.add (VectorRotationGenerator'Class (This).getListAtAngle (width, height, pointBasicArrayList, This.angleFactory.getAt (index)));
                index := (index) + (angleIncrement);
            end loop;
            newPoints := This.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame (pointsBasicArrayList, pointBasicArrayList.size);
            return newPoints;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, VectorRotationGenerator_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            return NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
                end;
        end;
   end getInstanceFrames;

   --  throws Exception
   function getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; angle_Param : access Angle_Package.Angle'Class) return BasicArrayList_Access is
      pointBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (pointBasicArrayList_Param);
      angle : constant Angle_Access := Angle_Access (angle_Param);
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (pointBasicArrayList);
        graphicsPipe.createMatrix;
        graphicsPipe.translate (-((Java_Shift_Right_Arithmetic (width, 1))), -((Java_Shift_Right_Arithmetic (height, 1))));
        graphicsPipe.rotateToAngle (angle);
        graphicsPipe.translate ((Java_Shift_Right_Arithmetic (width, 1)), (Java_Shift_Right_Arithmetic (height, 1)));
        return graphicsPipe.getMatrix;
   end getListAtAngle;

   procedure getInstance (This : in out VectorRotationGenerator; vectorRotationInfo_Param : access VectorInfo_Package.VectorInfo'Class) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorRotationGenerator'Class (This).getInstance (vectorRotationInfo_Param => vectorRotationInfo_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceFrames (This : in out VectorRotationGenerator; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; frames : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorRotationGenerator'Class (This).getInstanceFrames (width => width, height => height, points => points, frames => frames);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceFrames;

   procedure getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; angle_Param : access Angle_Package.Angle'Class) is
      Java_Result : constant BasicArrayList_Access := VectorRotationGenerator'Class (This).getListAtAngle (width => width, height => height, pointBasicArrayList_Param => pointBasicArrayList_Param, angle_Param => angle_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getListAtAngle;

begin
   null;
   instance := VectorRotationGenerator_Package.Create;

end org.allbinary.animation.VectorRotationGenerator_Package;


