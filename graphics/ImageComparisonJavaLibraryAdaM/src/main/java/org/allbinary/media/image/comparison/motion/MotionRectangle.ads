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

with AllBinary_Java;
limited with org.allbinary.media.image.comparison.motion.MotionRectangle_Package;
package org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References is
   type MotionRectangle_Access is access all org.allbinary.media.image.comparison.motion.MotionRectangle_Package.MotionRectangle'Class;
   type MotionRectangle_Access_Array is array (Natural range <>) of MotionRectangle_Access;
   type MotionRectangle_Access_Array_Access is access all MotionRectangle_Access_Array;
   type MotionRectangle_Access_Array_Access_Array is array (Natural range <>) of MotionRectangle_Access_Array_Access;
   type MotionRectangle_Access_Array_Access_Array_Access is access all MotionRectangle_Access_Array_Access_Array;
   type MotionRectangle_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectangle_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectangle_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectangle_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectangle_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectangle_Access_Array_Access is (if Value /= null and then Value.all in MotionRectangle_Access_Array_Object'Class then MotionRectangle_Access_Array_Object'Class (Value.all).Value else null);
   type MotionRectangle_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectangle_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectangle_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectangle_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectangle_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectangle_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionRectangle_Access_Array_Access_Array_Object'Class then MotionRectangle_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectangle_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionRectangle_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access;
   function "=" (Left, Right : MotionRectangle_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References."=";
   subtype MotionRectangle_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array;
   function "=" (Left, Right : MotionRectangle_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References."=";
   subtype MotionRectangle_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access;
   function "=" (Left, Right : MotionRectangle_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References."=";
   function Java_Box (Value : MotionRectangle_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.Java_Box;
   function Java_Unbox_MotionRectangle_Access_Array (Value : access Java_Object'Class) return MotionRectangle_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.Java_Unbox_MotionRectangle_Access_Array;
   subtype MotionRectangle_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References."=";
   subtype MotionRectangle_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References."=";
   function Java_Box (Value : MotionRectangle_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.Java_Box;
   function Java_Unbox_MotionRectangle_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionRectangle_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.Java_Unbox_MotionRectangle_Access_Array_Access_Array;

   type MotionRectangle is new Java_Object with record
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


