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


package body org.allbinary.vector.PointsUtil_Package is

   procedure Initialize_Fields (This : in out PointsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PointsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PointsUtil_Access is
      This : constant PointsUtil_Access := new PointsUtil;
   begin
      PointsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PointsUtil_Access is
   begin
        return PointsUtil_Package.instance;
   end getInstance;

   function adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access_Array_Access is
      size : Integer;
      newPoints : Integer_Array_Access_Array_Access_Array_Access;
      size2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        size := points'Length;
        newPoints := new Integer_Array_Access_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array_Access_Array'(0 .. (0) - 1 => new Integer_Array'(0 .. (0) - 1 => 0)));
        for index in 0 .. (size) - 1 loop
            size2 := points (index)'Length;
            newPoints (index) := new Integer_Array_Access_Array'(0 .. (size2) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
            for index2 in 0 .. (size2) - 1 loop
                if (points (index) (index2) (0)) /= (1000) then
                    newPoints (index) (index2) (0) := (points (index) (index2) (0)) + (x);
                    newPoints (index) (index2) (1) := (points (index) (index2) (1)) + (y);
                else
                    newPoints (index) (index2) (0) := 1000;
                    newPoints (index) (index2) (1) := 1000;
                end if;
            end loop;
        end loop;
        return newPoints;
   end adjustXY;

   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer) return Integer_Array_Access_Array_Access is
   begin
        return This.adjust (points, both, both);
   end adjust;

   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access is
      newPoints : Integer_Array_Access_Array_Access;
      index2 : Integer;
   begin
        newPoints := new Integer_Array_Access_Array'(0 .. (points'Length) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
        for index2 in 0 .. (points'Length) - 1 loop
            if (points (index2) (0)) /= (1000) then
                newPoints (index2) (0) := (points (index2) (0)) + (x);
                newPoints (index2) (1) := (points (index2) (1)) + (y);
            else
                newPoints (index2) (0) := 1000;
                newPoints (index2) (1) := 1000;
            end if;
        end loop;
        return newPoints;
   end adjust;

   procedure adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := PointsUtil'Class (This).adjustXY (points, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustXY;

   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access := PointsUtil'Class (This).adjust (points, both);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjust;

   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access := PointsUtil'Class (This).adjust (points, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjust;

begin
   null;
   instance := PointsUtil_Package.Create;

end org.allbinary.vector.PointsUtil_Package;


