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
limited with org.allbinary.media.image.cache.BufferedImageInfo_Package;
package org.allbinary.media.image.cache.BufferedImageInfo_Package_References is
   type BufferedImageInfo_Access is access all org.allbinary.media.image.cache.BufferedImageInfo_Package.BufferedImageInfo'Class;
   type BufferedImageInfo_Access_Array is array (Natural range <>) of BufferedImageInfo_Access;
   type BufferedImageInfo_Access_Array_Access is access all BufferedImageInfo_Access_Array;
   type BufferedImageInfo_Access_Array_Access_Array is array (Natural range <>) of BufferedImageInfo_Access_Array_Access;
   type BufferedImageInfo_Access_Array_Access_Array_Access is access all BufferedImageInfo_Access_Array_Access_Array;
   type BufferedImageInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageInfo_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageInfo_Access_Array_Object'Class then BufferedImageInfo_Access_Array_Object'Class (Value.all).Value else null);
   type BufferedImageInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageInfo_Access_Array_Access_Array_Object'Class then BufferedImageInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.cache.BufferedImageInfo_Package_References;

with org.allbinary.media.image.cache.BufferedImageInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.cache.BufferedImageInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BufferedImageInfo_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access;
   function "=" (Left, Right : BufferedImageInfo_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array;
   function "=" (Left, Right : BufferedImageInfo_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   function Java_Box (Value : BufferedImageInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References.Java_Box;
   function Java_Unbox_BufferedImageInfo_Access_Array (Value : access Java_Object'Class) return BufferedImageInfo_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References.Java_Unbox_BufferedImageInfo_Access_Array;
   subtype BufferedImageInfo_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   subtype BufferedImageInfo_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References."=";
   function Java_Box (Value : BufferedImageInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References.Java_Box;
   function Java_Unbox_BufferedImageInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return BufferedImageInfo_Access_Array_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageInfo_Package_References.Java_Unbox_BufferedImageInfo_Access_Array_Access_Array;

   type BufferedImageInfo is new Java_Object with record
      width : Integer;
      height : Integer;
      type_Id : Integer;
   end record;

   procedure Initialize (This : in out BufferedImageInfo'Class; width : Integer; height : Integer; type_Id : Integer);
   function Create (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access;
   function getWidth (This : in out BufferedImageInfo) return Integer;
   procedure setWidth (This : in out BufferedImageInfo; width : Integer);
   function getHeight (This : in out BufferedImageInfo) return Integer;
   procedure setHeight (This : in out BufferedImageInfo; height : Integer);
   function getType (This : in out BufferedImageInfo) return Integer;
   procedure setType (This : in out BufferedImageInfo; type_Id : Integer);
   function toString (This : in out BufferedImageInfo) return Unbounded_String;

end org.allbinary.media.image.cache.BufferedImageInfo_Package;


