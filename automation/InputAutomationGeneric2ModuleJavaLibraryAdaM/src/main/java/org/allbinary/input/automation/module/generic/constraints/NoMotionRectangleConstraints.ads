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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.input.automation.module.MotionRectangleConstraints_Package; use org.allbinary.input.automation.module.MotionRectangleConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Dimension_Package; use org.allbinary.input.automation.module.generic_Id.constraints.Dimension_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package; use org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package;

package org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package is

   package MotionRectangleConstraints_Package renames Standard.org.allbinary.input.automation.module.MotionRectangleConstraints_Package;

   type NoMotionRectangleConstraints is tagged;
   type NoMotionRectangleConstraints_Access is access all NoMotionRectangleConstraints'Class;
   type NoMotionRectangleConstraints_Access_Array is array (Natural range <>) of NoMotionRectangleConstraints_Access;
   type NoMotionRectangleConstraints_Access_Array_Access is access all NoMotionRectangleConstraints_Access_Array;

   type NoMotionRectangleConstraints is new MotionRectangleConstraints with null record;

   procedure Initialize (This : in out NoMotionRectangleConstraints'Class);
   function Create return NoMotionRectangleConstraints_Access;
   function isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access) return Boolean;
   procedure isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage : BufferedImage_Access; rectangle : Rectangle_Access);

end org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;


