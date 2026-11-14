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
limited with org.allbinary.media.image.ImageUnifierCell_Package;
package org.allbinary.media.image.ImageUnifierCell_Package_References is
   type ImageUnifierCell_Access is access all org.allbinary.media.image.ImageUnifierCell_Package.ImageUnifierCell'Class;
   type ImageUnifierCell_Access_Array is array (Natural range <>) of ImageUnifierCell_Access;
   type ImageUnifierCell_Access_Array_Access is access all ImageUnifierCell_Access_Array;
   type ImageUnifierCell_Access_Array_Access_Array is array (Natural range <>) of ImageUnifierCell_Access_Array_Access;
   type ImageUnifierCell_Access_Array_Access_Array_Access is access all ImageUnifierCell_Access_Array_Access_Array;
   type ImageUnifierCell_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUnifierCell_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUnifierCell_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUnifierCell_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUnifierCell_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUnifierCell_Access_Array_Access is (if Value /= null and then Value.all in ImageUnifierCell_Access_Array_Object'Class then ImageUnifierCell_Access_Array_Object'Class (Value.all).Value else null);
   type ImageUnifierCell_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUnifierCell_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUnifierCell_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUnifierCell_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUnifierCell_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUnifierCell_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageUnifierCell_Access_Array_Access_Array_Object'Class then ImageUnifierCell_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageUnifierCell_Package_References;

with org.allbinary.media.image.ImageUnifierCell_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.ImageUnifierCell_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageUnifierCell_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access;
   function "=" (Left, Right : ImageUnifierCell_Access) return Boolean renames org.allbinary.media.image.ImageUnifierCell_Package_References."=";
   subtype ImageUnifierCell_Access_Array is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array;
   function "=" (Left, Right : ImageUnifierCell_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierCell_Package_References."=";
   subtype ImageUnifierCell_Access_Array_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierCell_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierCell_Package_References."=";
   function Java_Box (Value : ImageUnifierCell_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUnifierCell_Package_References.Java_Box;
   function Java_Unbox_ImageUnifierCell_Access_Array (Value : access Java_Object'Class) return ImageUnifierCell_Access_Array_Access renames org.allbinary.media.image.ImageUnifierCell_Package_References.Java_Unbox_ImageUnifierCell_Access_Array;
   subtype ImageUnifierCell_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUnifierCell_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierCell_Package_References."=";
   subtype ImageUnifierCell_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierCell_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierCell_Package_References."=";
   function Java_Box (Value : ImageUnifierCell_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUnifierCell_Package_References.Java_Box;
   function Java_Unbox_ImageUnifierCell_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageUnifierCell_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageUnifierCell_Package_References.Java_Unbox_ImageUnifierCell_Access_Array_Access_Array;

   type ImageUnifierCell is new Java_Object with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out ImageUnifierCell'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return ImageUnifierCell_Access;
   function getWidth (This : in out ImageUnifierCell) return Integer;
   procedure setWidth (This : in out ImageUnifierCell; width : Integer);
   function getHeight (This : in out ImageUnifierCell) return Integer;
   procedure setHeight (This : in out ImageUnifierCell; height : Integer);

end org.allbinary.media.image.ImageUnifierCell_Package;


