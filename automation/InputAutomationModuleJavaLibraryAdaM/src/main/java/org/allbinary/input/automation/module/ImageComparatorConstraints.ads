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
--  with java.awt.Color_Package; use java.awt.Color_Package;
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.collision.RectangleCollisionUtil_Package; use org.allbinary.collision.RectangleCollisionUtil_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package; use org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;

package org.allbinary.input.automation.module.ImageComparatorConstraints_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.collision.RectangleCollisionUtil_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparatorConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;

   type ImageComparatorConstraints is tagged;
   type ImageComparatorConstraints_Access is access all ImageComparatorConstraints'Class;
   type ImageComparatorConstraints_Access_Array is array (Natural range <>) of ImageComparatorConstraints_Access;
   type ImageComparatorConstraints_Access_Array_Access is access all ImageComparatorConstraints_Access_Array;

   type ImageComparatorConstraints is new ImageComparatorConstraintsInterface with record
      logUtil : LogUtil_Access;
      avoidVector : BasicArrayList_Access;
      maxNonMatchingPixelDeltas : Integer;
      doImageComparisonEveryNthFrame : Integer;
   end record;

   procedure Initialize (This : in out ImageComparatorConstraints'Class; doImageComparisonEveryNthFrame : Integer);
   function Create (doImageComparisonEveryNthFrame : Integer) return ImageComparatorConstraints_Access;
   function getAvoidVector (This : in out ImageComparatorConstraints) return BasicArrayList_Access;
   function isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point : GPoint_Access; color : Color_Access) return Boolean;
   procedure isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point : GPoint_Access; color : Color_Access);
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle : Rectangle_Access) return Boolean;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle : Rectangle_Access);
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point : GPoint_Access) return Boolean;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point : GPoint_Access);
   procedure setAvoidVector (This : in out ImageComparatorConstraints; avoidVector : BasicArrayList_Access);
   function getMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints) return Integer;
   procedure setMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints; maxNonMatchingPixelDeltas : Integer);
   function isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer) return Boolean;
   procedure isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer);
   function isImageValid (This : in out ImageComparatorConstraints; bufferedImage : BufferedImage_Access) return Boolean;
   procedure isImageValid (This : in out ImageComparatorConstraints; bufferedImage : BufferedImage_Access);
   procedure log (This : in out ImageComparatorConstraints);

end org.allbinary.input.automation.module.ImageComparatorConstraints_Package;


