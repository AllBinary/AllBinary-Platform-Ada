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

package org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;

   type ImageComparatorConstraintsInterface is interface;
   type ImageComparatorConstraintsInterface_Access is access all ImageComparatorConstraintsInterface'Class;
   type ImageComparatorConstraintsInterface_Access_Array is array (Natural range <>) of ImageComparatorConstraintsInterface_Access;
   type ImageComparatorConstraintsInterface_Access_Array_Access is access all ImageComparatorConstraintsInterface_Access_Array;
   function getMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraintsInterface) return Integer is abstract;
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; rectangle : Rectangle_Access) return Boolean is abstract;
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; point : GPoint_Access) return Boolean is abstract;
   function isColorAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer; point : GPoint_Access; color : Color_Access) return Boolean is abstract;
   function isImageValid (This : in out ImageComparatorConstraintsInterface; bufferedImage : BufferedImage_Access) return Boolean is abstract;
   function isFrameAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer) return Boolean is abstract;

end org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;


