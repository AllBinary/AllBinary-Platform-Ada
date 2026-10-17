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
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
with java.util.Vector_Package; use java.util.Vector_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.media.image.comparison.motion.Cloneable_Package; use org.allbinary.media.image.comparison.motion.Cloneable_Package;

package org.allbinary.media.image.comparison.motion.MotionRectangle_Package is

   package Vector_Package renames Standard.java.util.Vector_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type MotionRectangle is tagged;
   type MotionRectangle_Access is access all MotionRectangle'Class;
   type MotionRectangle_Access_Array is array (Natural range <>) of MotionRectangle_Access;
   type MotionRectangle_Access_Array_Access is access all MotionRectangle_Access_Array;

   type MotionRectangle is new Cloneable with record
      rectangle : Rectangle_Access;
      pixelDeltaVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MotionRectangle'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return MotionRectangle_Access;
   function getRectangle (This : in out MotionRectangle) return Rectangle_Access;
   procedure setRectangle (This : in out MotionRectangle; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function getPixelDeltaVector (This : in out MotionRectangle) return BasicArrayList_Access;
   procedure setPixelDeltaVector (This : in out MotionRectangle; pixelDeltaVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function clone (This : in out MotionRectangle) return Java_Object_Access;

end org.allbinary.media.image.comparison.motion.MotionRectangle_Package;


