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


package body org.allbinary.input.automation.module.MotionRectangleConstraints_Package is

   procedure Initialize_Fields (This : in out MotionRectangleConstraints'Class) is
   begin
      null;
      This.minDimension := null;
      This.maxDimension := null;
      This.maxMotionRectangles := 0;
      This.minArea := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectangleConstraints'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MotionRectangleConstraints_Access is
      This : constant MotionRectangleConstraints_Access := new MotionRectangleConstraints;
   begin
      MotionRectangleConstraints_Package.Initialize (This.all);
      return This;
   end Create;

   function getMinDimension (This : in out MotionRectangleConstraints) return Dimension_Access is
   begin
        return This.minDimension;
   end getMinDimension;

   function getMaxDimension (This : in out MotionRectangleConstraints) return Dimension_Access is
   begin
        return This.maxDimension;
   end getMaxDimension;

   function isTooSmall (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) return Boolean is
   begin
        if ((rectangle.width) < (This.getMinDimension.width)) or else ((rectangle.height) < (This.getMinDimension.height)) then
            return True;
        else
            return False;
        end if;
   end isTooSmall;

   function isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) return Boolean is
   begin
        if ((rectangle.width) * (rectangle.height)) < (This.getMinArea) then
            return True;
        else
            return False;
        end if;
   end isAreaTooSmall;

   function isTooBig (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) return Boolean is
   begin
        if ((rectangle.width) > (This.getMaxDimension.width)) or else ((rectangle.height) > (This.getMaxDimension.height)) then
            return True;
        else
            return False;
        end if;
   end isTooBig;

   --  throws Exception
   function isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   procedure setMinDimension (This : in out MotionRectangleConstraints; minDimension : Dimension_Access) is
   begin
        This.minDimension := minDimension;
   end setMinDimension;

   procedure setMaxDimension (This : in out MotionRectangleConstraints; maxDimension : Dimension_Access) is
   begin
        This.maxDimension := maxDimension;
   end setMaxDimension;

   function getMaxMotionRectangles (This : in out MotionRectangleConstraints) return Integer is
   begin
        return This.maxMotionRectangles;
   end getMaxMotionRectangles;

   procedure setMaxMotionRectangles (This : in out MotionRectangleConstraints; maxMotionRectangles : Integer) is
   begin
        This.maxMotionRectangles := maxMotionRectangles;
   end setMaxMotionRectangles;

   function getMinArea (This : in out MotionRectangleConstraints) return Integer is
   begin
        return This.minArea;
   end getMinArea;

   procedure setMinArea (This : in out MotionRectangleConstraints; minArea : Integer) is
   begin
        This.minArea := minArea;
   end setMinArea;

   procedure isTooSmall (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) is
      Java_Result : constant Boolean := MotionRectangleConstraints'Class (This).isTooSmall (rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTooSmall;

   procedure isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) is
      Java_Result : constant Boolean := MotionRectangleConstraints'Class (This).isAreaTooSmall (rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAreaTooSmall;

   procedure isTooBig (This : in out MotionRectangleConstraints; rectangle : Rectangle_Access) is
      Java_Result : constant Boolean := MotionRectangleConstraints'Class (This).isTooBig (rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTooBig;

   procedure isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access) is
      Java_Result : constant Boolean := MotionRectangleConstraints'Class (This).isValid (frame, bufferedImage, rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.input.automation.module.MotionRectangleConstraints_Package;


