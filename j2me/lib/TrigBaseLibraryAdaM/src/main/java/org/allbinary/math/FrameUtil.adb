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


package body org.allbinary.math.FrameUtil_Package is

   procedure Initialize_Fields (This : in out FrameUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return FrameUtil_Access is
   begin
        return FrameUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FrameUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FrameUtil_Access is
      This : constant FrameUtil_Access := new FrameUtil;
   begin
      FrameUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer) return Integer is
   begin
        return (FrameUtil'Class (This).adjustAngleToFrameAngle (Integer (angle))) / (angleIncrement);
   end getFrameForAngle;

   function getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer) return Integer is
      frameAngle : Integer;
   begin
        frameAngle := ((angleIncrement) * (frame)) - (90);
        return FrameUtil'Class (This).adjustAngleToFrameAngle (frameAngle);
   end getFrameAngle;

   function adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer) return Integer is
      currentAngle : Integer := currentAngle_Param;
      angleFactory : AngleFactory_Access;
   begin
        angleFactory := AngleFactory_Package.getInstance;
        if (currentAngle) > (359) then
            currentAngle := ((currentAngle) - (angleFactory.TOTAL_ANGLE));
            while (currentAngle) > (359) loop
                currentAngle := ((currentAngle) - (angleFactory.TOTAL_ANGLE));
            end loop;
        end if;
        if (currentAngle) < (0) then
            currentAngle := ((currentAngle) + (angleFactory.TOTAL_ANGLE));
            while (currentAngle) < (0) loop
                currentAngle := ((currentAngle) + (angleFactory.TOTAL_ANGLE));
            end loop;
        end if;
        return currentAngle;
   end adjustAngleToFrameAngle;

   procedure getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer) is
      Java_Result : constant Integer := FrameUtil'Class (This).getFrameForAngle (angle, angleIncrement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameForAngle;

   procedure getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer) is
      Java_Result : constant Integer := FrameUtil'Class (This).getFrameAngle (frame, angleIncrement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameAngle;

   procedure adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer) is
      Java_Result : constant Integer := FrameUtil'Class (This).adjustAngleToFrameAngle (currentAngle_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustAngleToFrameAngle;

begin
   null;
   instance := FrameUtil_Package.Create;

end org.allbinary.math.FrameUtil_Package;


