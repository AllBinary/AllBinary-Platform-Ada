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
limited with org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;
package org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References is
   type ImageComparisonResultFrameCacheable_Access is access all org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package.ImageComparisonResultFrameCacheable'Class;
   type ImageComparisonResultFrameCacheable_Access_Array is array (Natural range <>) of ImageComparisonResultFrameCacheable_Access;
   type ImageComparisonResultFrameCacheable_Access_Array_Access is access all ImageComparisonResultFrameCacheable_Access_Array;
   type ImageComparisonResultFrameCacheable_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonResultFrameCacheable_Access_Array_Access;
   type ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access is access all ImageComparisonResultFrameCacheable_Access_Array_Access_Array;
   type ImageComparisonResultFrameCacheable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparisonResultFrameCacheable_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparisonResultFrameCacheable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparisonResultFrameCacheable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparisonResultFrameCacheable_Access_Array_Access is (if Value /= null and then Value.all in ImageComparisonResultFrameCacheable_Access_Array_Object'Class then ImageComparisonResultFrameCacheable_Access_Array_Object'Class (Value.all).Value else null);
   type ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Object'Class then ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References;

with org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
limited with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package_References;

package org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
   subtype ImageComparisonResult_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access;
   use type ImageComparisonResult_Access;
   subtype ImageComparisonResult_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array;
   use type ImageComparisonResult_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access;
   subtype ImageComparisonResult_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array;
   use type ImageComparisonResult_Access_Array_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageComparisonResultFrameCacheable_Access is org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.ImageComparisonResultFrameCacheable_Access;
   function "=" (Left, Right : ImageComparisonResultFrameCacheable_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References."=";
   subtype ImageComparisonResultFrameCacheable_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.ImageComparisonResultFrameCacheable_Access_Array;
   function "=" (Left, Right : ImageComparisonResultFrameCacheable_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References."=";
   subtype ImageComparisonResultFrameCacheable_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.ImageComparisonResultFrameCacheable_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultFrameCacheable_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References."=";
   function Java_Box (Value : ImageComparisonResultFrameCacheable_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.Java_Box;
   function Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array (Value : access Java_Object'Class) return ImageComparisonResultFrameCacheable_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array;
   subtype ImageComparisonResultFrameCacheable_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.ImageComparisonResultFrameCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonResultFrameCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References."=";
   subtype ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References."=";
   function Java_Box (Value : ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.Java_Box;
   function Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageComparisonResultFrameCacheable_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package_References.Java_Unbox_ImageComparisonResultFrameCacheable_Access_Array_Access_Array;

   type ImageComparisonResultFrameCacheable is new Java_Object and CacheableInterface with record
      frame : Long_Long_Integer;
      imageComparisonResult : ImageComparisonResult_Access;
   end record;

   procedure Initialize (This : in out ImageComparisonResultFrameCacheable'Class; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer);
   function Create (imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) return ImageComparisonResultFrameCacheable_Access;
   function getKey (This : in out ImageComparisonResultFrameCacheable) return Java_Object_Access;
   function getFrame (This : in out ImageComparisonResultFrameCacheable) return Long_Long_Integer;
   procedure setFrame (This : in out ImageComparisonResultFrameCacheable; frame : Long_Long_Integer);
   function getImageComparisonResult (This : in out ImageComparisonResultFrameCacheable) return ImageComparisonResult_Access;
   procedure setImageComparisonResult (This : in out ImageComparisonResultFrameCacheable; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);
   function toString (This : in out ImageComparisonResultFrameCacheable) return Unbounded_String;

end org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;


