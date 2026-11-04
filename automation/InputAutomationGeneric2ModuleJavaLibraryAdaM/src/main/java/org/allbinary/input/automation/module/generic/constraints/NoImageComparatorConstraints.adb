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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.input.automation.module.ImageComparatorConstraints_Package; use org.allbinary.input.automation.module.ImageComparatorConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Color_Package; use org.allbinary.input.automation.module.generic_Id.constraints.Color_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References;

package body org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package is

   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype Color_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access;
   function "=" (Left, Right : Color_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References."=";
   subtype Color_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array;
   function "=" (Left, Right : Color_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References."=";
   subtype Color_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access;
   function "=" (Left, Right : Color_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References."=";
   subtype Color_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access_Array;
   function "=" (Left, Right : Color_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References."=";
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Color_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References."=";
   procedure Initialize_Fields (This : in out NoImageComparatorConstraints'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoImageComparatorConstraints'Class) is
   begin
        ImageComparatorConstraints_Package.Initialize (This, 1);
        NoImageComparatorConstraints'Class (This).setMaxNonMatchingPixelDeltas (Integer'Last);
   end Initialize;

   function Create return NoImageComparatorConstraints_Access is
      This : constant NoImageComparatorConstraints_Access := new NoImageComparatorConstraints;
   begin
      NoImageComparatorConstraints_Package.Initialize (This.all);
      return This;
   end Create;

   function isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) return Boolean is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      color : constant Color_Access := Color_Access (color_Param);
   begin
        return True;
   end isColorAllowed;

   function isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Boolean is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        return True;
   end isImageValid;

   procedure isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) is
      Java_Result : constant Boolean := NoImageComparatorConstraints'Class (This).isColorAllowed (frame => frame, point_Param => point_Param, color_Param => color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isColorAllowed;

   procedure isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      Java_Result : constant Boolean := NoImageComparatorConstraints'Class (This).isImageValid (bufferedImage_Param => bufferedImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImageValid;

end org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;


