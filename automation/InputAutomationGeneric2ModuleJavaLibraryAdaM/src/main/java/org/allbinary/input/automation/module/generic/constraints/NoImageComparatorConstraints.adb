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


package body org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package is

   procedure Initialize_Fields (This : in out NoImageComparatorConstraints'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoImageComparatorConstraints'Class) is
   begin
        ImageComparatorConstraints_Package.Initialize (This, 1);
        This.setMaxNonMatchingPixelDeltas (Integer_Package.MAX_VALUE);
   end Initialize;

   function Create return NoImageComparatorConstraints_Access is
      This : constant NoImageComparatorConstraints_Access := new NoImageComparatorConstraints;
   begin
      NoImageComparatorConstraints_Package.Initialize (This.all);
      return This;
   end Create;

   function isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint'Class; color_Param : access Color'Class) return Boolean is
      point : GPoint_Access := GPoint_Access (point_Param);
      color : Color_Access := Color_Access (color_Param);
   begin
        return True;
   end isColorAllowed;

   function isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage'Class) return Boolean is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        return True;
   end isImageValid;

   procedure isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint'Class; color_Param : access Color'Class) is
      Java_Result : constant Boolean := NoImageComparatorConstraints'Class (This).isColorAllowed (frame, point_Param, color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isColorAllowed;

   procedure isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage'Class) is
      Java_Result : constant Boolean := NoImageComparatorConstraints'Class (This).isImageValid (bufferedImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImageValid;

end org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;


