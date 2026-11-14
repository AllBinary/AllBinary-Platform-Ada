-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.media.image.ImageSwtUtil_Package;
package org.allbinary.media.image.ImageSwtUtil_Package_References is
   type ImageSwtUtil_Access is access all org.allbinary.media.image.ImageSwtUtil_Package.ImageSwtUtil'Class;
   type ImageSwtUtil_Access_Array is array (Natural range <>) of ImageSwtUtil_Access;
   type ImageSwtUtil_Access_Array_Access is access all ImageSwtUtil_Access_Array;
   type ImageSwtUtil_Access_Array_Access_Array is array (Natural range <>) of ImageSwtUtil_Access_Array_Access;
   type ImageSwtUtil_Access_Array_Access_Array_Access is access all ImageSwtUtil_Access_Array_Access_Array;
   type ImageSwtUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageSwtUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageSwtUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageSwtUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageSwtUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageSwtUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageSwtUtil_Access_Array_Object'Class then ImageSwtUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageSwtUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageSwtUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageSwtUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageSwtUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageSwtUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageSwtUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageSwtUtil_Access_Array_Access_Array_Object'Class then ImageSwtUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageSwtUtil_Package_References;

with org.allbinary.media.image.ImageSwtUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.ImageSwtUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageSwtUtil_Access is org.allbinary.media.image.ImageSwtUtil_Package_References.ImageSwtUtil_Access;
   function "=" (Left, Right : ImageSwtUtil_Access) return Boolean renames org.allbinary.media.image.ImageSwtUtil_Package_References."=";
   subtype ImageSwtUtil_Access_Array is org.allbinary.media.image.ImageSwtUtil_Package_References.ImageSwtUtil_Access_Array;
   function "=" (Left, Right : ImageSwtUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageSwtUtil_Package_References."=";
   subtype ImageSwtUtil_Access_Array_Access is org.allbinary.media.image.ImageSwtUtil_Package_References.ImageSwtUtil_Access_Array_Access;
   function "=" (Left, Right : ImageSwtUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageSwtUtil_Package_References."=";
   function Java_Box (Value : ImageSwtUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageSwtUtil_Package_References.Java_Box;
   function Java_Unbox_ImageSwtUtil_Access_Array (Value : access Java_Object'Class) return ImageSwtUtil_Access_Array_Access renames org.allbinary.media.image.ImageSwtUtil_Package_References.Java_Unbox_ImageSwtUtil_Access_Array;
   subtype ImageSwtUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageSwtUtil_Package_References.ImageSwtUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageSwtUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageSwtUtil_Package_References."=";
   subtype ImageSwtUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageSwtUtil_Package_References.ImageSwtUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageSwtUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageSwtUtil_Package_References."=";
   function Java_Box (Value : ImageSwtUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageSwtUtil_Package_References.Java_Box;
   function Java_Unbox_ImageSwtUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageSwtUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageSwtUtil_Package_References.Java_Unbox_ImageSwtUtil_Access_Array_Access_Array;

   type ImageSwtUtil is new Java_Object with null record;
   instance : ImageSwtUtil_Access;

   procedure Initialize (This : in out ImageSwtUtil'Class);
   function Create return ImageSwtUtil_Access;
   function getInstance return ImageSwtUtil_Access;

end org.allbinary.media.image.ImageSwtUtil_Package;


