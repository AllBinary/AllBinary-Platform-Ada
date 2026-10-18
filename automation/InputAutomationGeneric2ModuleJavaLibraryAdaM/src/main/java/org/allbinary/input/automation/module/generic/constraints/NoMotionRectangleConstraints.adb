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


with org.allbinary.input.automation.module.generic_Id.constraints.Dimension_Package; use org.allbinary.input.automation.module.generic_Id.constraints.Dimension_Package;

package body org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package is

   procedure Initialize_Fields (This : in out NoMotionRectangleConstraints'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoMotionRectangleConstraints'Class) is
   begin
      MotionRectangleConstraints_Package.Initialize (This);
      Initialize_Fields (This);
        NoMotionRectangleConstraints'Class (This).setMinDimension (Dimension_Package.Create (0, 0));
        NoMotionRectangleConstraints'Class (This).setMinArea (0);
        NoMotionRectangleConstraints'Class (This).setMaxDimension (Dimension_Package.Create (Integer'Last, Integer'Last));
        NoMotionRectangleConstraints'Class (This).setMaxMotionRectangles (Integer'Last);
   end Initialize;

   function Create return NoMotionRectangleConstraints_Access is
      This : constant NoMotionRectangleConstraints_Access := new NoMotionRectangleConstraints;
   begin
      NoMotionRectangleConstraints_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        return True;
   end isValid;

   procedure isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      Java_Result : constant Boolean := NoMotionRectangleConstraints'Class (This).isValid (frame, bufferedImage_Param, rectangle_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;


