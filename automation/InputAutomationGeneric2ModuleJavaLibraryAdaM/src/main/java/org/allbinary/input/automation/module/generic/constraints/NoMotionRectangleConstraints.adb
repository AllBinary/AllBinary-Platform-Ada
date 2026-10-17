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


package body org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package is

   procedure Initialize_Fields (This : in out NoMotionRectangleConstraints'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoMotionRectangleConstraints'Class) is
   begin
      MotionRectangleConstraints_Package.Initialize (This);
      Initialize_Fields (This);
        This.setMinDimension (Dimension_Package.Create (0, 0));
        This.setMinArea (0);
        This.setMaxDimension (Dimension_Package.Create (Integer_Package.MAX_VALUE, Integer_Package.MAX_VALUE));
        This.setMaxMotionRectangles (Integer_Package.MAX_VALUE);
   end Initialize;

   function Create return NoMotionRectangleConstraints_Access is
      This : constant NoMotionRectangleConstraints_Access := new NoMotionRectangleConstraints;
   begin
      NoMotionRectangleConstraints_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access) return Boolean is
   begin
        return True;
   end isValid;

   procedure isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access) is
      Java_Result : constant Boolean := NoMotionRectangleConstraints'Class (This).isValid (frame, bufferedImage, rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;


