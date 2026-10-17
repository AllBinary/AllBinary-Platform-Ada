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


package body org.allbinary.animation.VectorRotationGenerator_Package is

   procedure Initialize_Fields (This : in out VectorRotationGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.vectorAnimationUtil := VectorAnimationUtil_Package.getInstance;
      This.angleFactory := AngleFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return VectorRotationGenerator_Access is
   begin
        return VectorRotationGenerator_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VectorRotationGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorRotationGenerator_Access is
      This : constant VectorRotationGenerator_Access := new VectorRotationGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out VectorRotationGenerator; vectorRotationInfo : VectorInfo_Access) return Integer_Array_Access_Array_Access_Array_Access is
   begin
        return This.getInstanceFrames (vectorRotationInfo.getWidth, vectorRotationInfo.getHeight, vectorRotationInfo.getPoints, vectorRotationInfo.getTotalFrames);
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
            pointsBasicArrayList := BasicArrayListS_Package.Create ((Integer (totalAngle)) / (angleIncrement));
            pointBasicArrayList := BasicArrayListS_Package.Create (points'Length);
            pointFactory := PointFactory_Package.getInstance;
            size := points'Length;
            for index in 0 .. (size) - 1 loop
                pointBasicArrayList.add (pointFactory.createXY (points (index) (0), points (index) (1)));
            end loop;
            index := 0;
            while (index) < (Integer (totalAngle)) loop
                pointsBasicArrayList.add (This.getListAtAngle (width, height, pointBasicArrayList, This.angleFactory.getAt (index)));
                index := (index) + (angleIncrement);
            end loop;
            newPoints := This.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame (pointsBasicArrayList, pointBasicArrayList.size);
            return newPoints;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            return NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
        end;
   end getInstanceFrames;

   --  throws Exception
   function getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList : BasicArrayList_Access; angle : Angle_Access) return BasicArrayList_Access is
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (pointBasicArrayList);
        graphicsPipe.createMatrix;
        graphicsPipe.translate (-((Java_Shift_Right_Arithmetic (width, 1))), -((Java_Shift_Right_Arithmetic (height, 1))));
        graphicsPipe.rotateToAngle (angle);
        graphicsPipe.translate ((Java_Shift_Right_Arithmetic (width, 1)), (Java_Shift_Right_Arithmetic (height, 1)));
        return graphicsPipe.getMatrix;
   end getListAtAngle;

   procedure getInstance is
      Java_Result : constant VectorRotationGenerator_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out VectorRotationGenerator; vectorRotationInfo : VectorInfo_Access) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorRotationGenerator'Class (This).getInstance (vectorRotationInfo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceFrames (This : in out VectorRotationGenerator; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; frames : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorRotationGenerator'Class (This).getInstanceFrames (width, height, points, frames);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceFrames;

   procedure getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList : BasicArrayList_Access; angle : Angle_Access) is
      Java_Result : constant BasicArrayList_Access := VectorRotationGenerator'Class (This).getListAtAngle (width, height, pointBasicArrayList, angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getListAtAngle;

begin
   null;
   instance := VectorRotationGenerator_Package.Create;

end org.allbinary.animation.VectorRotationGenerator_Package;


