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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.input.automation.module.ImageComparatorConstraints_Package; use org.allbinary.input.automation.module.ImageComparatorConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Color_Package; use org.allbinary.input.automation.module.generic_Id.constraints.Color_Package;

package org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package ImageComparatorConstraints_Package renames Standard.org.allbinary.input.automation.module.ImageComparatorConstraints_Package;

   type NoImageComparatorConstraints is tagged;
   type NoImageComparatorConstraints_Access is access all NoImageComparatorConstraints'Class;
   type NoImageComparatorConstraints_Access_Array is array (Natural range <>) of NoImageComparatorConstraints_Access;
   type NoImageComparatorConstraints_Access_Array_Access is access all NoImageComparatorConstraints_Access_Array;

   type NoImageComparatorConstraints is new ImageComparatorConstraints with null record;

   procedure Initialize (This : in out NoImageComparatorConstraints'Class);
   function Create return NoImageComparatorConstraints_Access;
   function isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point : GPoint_Access; color : Color_Access) return Boolean;
   procedure isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point : GPoint_Access; color : Color_Access);
   function isImageValid (This : in out NoImageComparatorConstraints; bufferedImage : BufferedImage_Access) return Boolean;
   procedure isImageValid (This : in out NoImageComparatorConstraints; bufferedImage : BufferedImage_Access);

end org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;


