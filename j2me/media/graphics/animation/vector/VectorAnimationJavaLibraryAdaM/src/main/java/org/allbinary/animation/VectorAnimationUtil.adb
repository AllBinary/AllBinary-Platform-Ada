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


package body org.allbinary.animation.VectorAnimationUtil_Package is

   procedure Initialize_Fields (This : in out VectorAnimationUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return VectorAnimationUtil_Access is
   begin
        return VectorAnimationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VectorAnimationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorAnimationUtil_Access is
      This : constant VectorAnimationUtil_Access := new VectorAnimationUtil;
   begin
      VectorAnimationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; pointsPerFrame : Integer) return Integer_Array_Access_Array_Access_Array_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      size : Integer;
      points : Integer_Array_Access_Array_Access_Array_Access;
      nextBasicArrayList : BasicArrayList_Access;
      framePoints : Integer_Array_Access_Array_Access;
      pointIndex : Integer;
      index : Integer;
   begin
        size := vector.size;
        points := new Integer_Array_Access_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array_Access_Array'(0 .. (pointsPerFrame) - 1 => new Integer_Array'(0 .. (2) - 1 => 0)));
        nextBasicArrayList := null;
        framePoints := null;
        for index in 0 .. (size) - 1 loop
            nextBasicArrayList := BasicArrayList_Access (vector.objectArray (index));
            framePoints := This.toFrameArrayFromPointBasicArrayList (nextBasicArrayList);
            for pointIndex in 0 .. (framePoints'Length) - 1 loop
                points (index) (pointIndex) (0) := framePoints (pointIndex) (0);
                points (index) (pointIndex) (1) := framePoints (pointIndex) (1);
            end loop;
        end loop;
        return points;
   end toAnimationArrayFromListOfPointListWithPointsPerFrame;

   function toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer_Array_Access_Array_Access_Array_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      size : Integer;
      points : Integer_Array_Access_Array_Access_Array_Access;
      nextBasicArrayList : BasicArrayList_Access;
      framePoints : Integer_Array_Access_Array_Access;
      pointIndex : Integer;
      index : Integer;
   begin
        size := vector.size;
        points := new Integer_Array_Access_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array_Access_Array'(0 .. (0) - 1 => new Integer_Array'(0 .. (0) - 1 => 0)));
        nextBasicArrayList := null;
        framePoints := null;
        for index in 0 .. (size) - 1 loop
            nextBasicArrayList := BasicArrayList_Access (vector.objectArray (index));
            framePoints := This.toFrameArrayFromPointBasicArrayList (nextBasicArrayList);
            points (index) := new Integer_Array_Access_Array'(0 .. (framePoints'Length) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
            for pointIndex in 0 .. (framePoints'Length) - 1 loop
                points (index) (pointIndex) (0) := framePoints (pointIndex) (0);
                points (index) (pointIndex) (1) := framePoints (pointIndex) (1);
            end loop;
        end loop;
        return points;
   end toAnimationArrayFromListOfPointList;

   function toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer_Array_Access_Array_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      points : Integer_Array_Access_Array_Access;
      size : Integer;
      nextPoint : GPoint_Access;
      index : Integer;
   begin
        points := new Integer_Array_Access_Array'(0 .. (list.size) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
        size := list.size;
        for index in 0 .. (size) - 1 loop
            nextPoint := GPoint_Access (list.objectArray (index));
            points (index) (0) := nextPoint.getX;
            points (index) (1) := nextPoint.getY;
        end loop;
        return points;
   end toFrameArrayFromPointBasicArrayList;

   procedure toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; pointsPerFrame : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorAnimationUtil'Class (This).toAnimationArrayFromListOfPointListWithPointsPerFrame (vector_Param, pointsPerFrame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toAnimationArrayFromListOfPointListWithPointsPerFrame;

   procedure toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorAnimationUtil'Class (This).toAnimationArrayFromListOfPointList (vector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toAnimationArrayFromListOfPointList;

   procedure toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Integer_Array_Access_Array_Access := VectorAnimationUtil'Class (This).toFrameArrayFromPointBasicArrayList (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toFrameArrayFromPointBasicArrayList;

begin
   null;
   instance := VectorAnimationUtil_Package.Create;

end org.allbinary.animation.VectorAnimationUtil_Package;


