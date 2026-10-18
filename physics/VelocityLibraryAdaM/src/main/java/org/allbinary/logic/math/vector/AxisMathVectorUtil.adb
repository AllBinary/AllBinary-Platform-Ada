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



package body org.allbinary.logic.math.vector.AxisMathVectorUtil_Package is

   procedure Initialize_Fields (This : in out AxisMathVectorUtil'Class) is
   begin
      null;
      This.noDecimalTrigTable := NoDecimalTrigTable_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AxisMathVectorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AxisMathVectorUtil_Access is
      This : constant AxisMathVectorUtil_Access := new AxisMathVectorUtil;
   begin
      AxisMathVectorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AxisMathVectorUtil_Access is
   begin
        return AxisMathVectorUtil_Package.instance;
   end getInstance;

   function calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer is
   begin
        return ((magnitude) * (This.noDecimalTrigTable.cos (angle))) / (10);
   end calculateX;

   function calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer is
   begin
        return ((magnitude) * (This.noDecimalTrigTable.sin (angle))) / (10);
   end calculateY;

   function calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer) return Long_Long_Integer is
   begin
        return ((magnitude) * (This.noDecimalTrigTable.sin (otherAngle))) / (10);
   end calculateZ;

   procedure calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) is
      Java_Result : constant Long_Long_Integer := AxisMathVectorUtil'Class (This).calculateX (magnitude, angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end calculateX;

   procedure calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) is
      Java_Result : constant Long_Long_Integer := AxisMathVectorUtil'Class (This).calculateY (magnitude, angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end calculateY;

   procedure calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer) is
      Java_Result : constant Long_Long_Integer := AxisMathVectorUtil'Class (This).calculateZ (magnitude, otherAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end calculateZ;

begin
   null;
   instance := AxisMathVectorUtil_Package.Create;

end org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;


