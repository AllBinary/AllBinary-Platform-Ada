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


with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;

package body org.allbinary.direction.DirectionUtil_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   procedure Initialize_Fields (This : in out DirectionUtil'Class) is
   begin
      null;
      This.directionArray := new Angle_Access_Array'(0 .. (10) - 1 => null);
      This.directionArray2 := new Angle_Access_Array'(0 .. (10) - 1 => null);
   end Initialize_Fields;


   function getInstance return DirectionUtil_Access is
   begin
        return DirectionUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DirectionUtil'Class) is
      angleFactory : AngleFactory_Access;
      directionFactory : DirectionFactory_Access;
   begin
      Initialize_Fields (This);
        angleFactory := AngleFactory_Package.getInstance;
        directionFactory := DirectionFactory_Package.getInstance;
        This.directionArray (directionFactory.LEFT.getValue) := angleFactory.LEFT;
        This.directionArray (directionFactory.RIGHT.getValue) := angleFactory.RIGHT;
        This.directionArray (directionFactory.UP.getValue) := angleFactory.UP;
        This.directionArray (directionFactory.DOWN.getValue) := angleFactory.DOWN;
        This.directionArray2 (directionFactory.LEFT.getValue) := angleFactory.LEFT;
        This.directionArray2 (directionFactory.RIGHT.getValue) := angleFactory.RIGHT;
        This.directionArray2 (directionFactory.UP.getValue) := angleFactory.UP;
        This.directionArray2 (directionFactory.DOWN.getValue) := angleFactory.DOWN;
   end Initialize;

   function Create return DirectionUtil_Access is
      This : constant DirectionUtil_Access := new DirectionUtil;
   begin
      DirectionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) return Angle_Access is
      direction : constant Direction_Access := Direction_Access (direction_Param);
   begin
        return This.directionArray2 (direction.getValue);
   end getAngle;

   function getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) return Angle_Access is
      direction : constant Direction_Access := Direction_Access (direction_Param);
   begin
        return This.directionArray (direction.getValue);
   end getFrameAngle;

   procedure getAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) is
      Java_Result : constant Angle_Access := DirectionUtil'Class (This).getAngle (direction_Param => direction_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngle;

   procedure getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) is
      Java_Result : constant Angle_Access := DirectionUtil'Class (This).getFrameAngle (direction_Param => direction_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameAngle;

begin
   null;
   instance := DirectionUtil_Package.Create;

end org.allbinary.direction.DirectionUtil_Package;


