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
limited with org.allbinary.image.ImageCache_Package;
package org.allbinary.image.ImageCache_Package_References is
   type ImageCache_Access is access all org.allbinary.image.ImageCache_Package.ImageCache'Class;
   type ImageCache_Access_Array is array (Natural range <>) of ImageCache_Access;
   type ImageCache_Access_Array_Access is access all ImageCache_Access_Array;
   type ImageCache_Access_Array_Access_Array is array (Natural range <>) of ImageCache_Access_Array_Access;
   type ImageCache_Access_Array_Access_Array_Access is access all ImageCache_Access_Array_Access_Array;
   type ImageCache_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCache_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCache_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCache_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCache_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCache_Access_Array_Access is (if Value /= null and then Value.all in ImageCache_Access_Array_Object'Class then ImageCache_Access_Array_Object'Class (Value.all).Value else null);
   type ImageCache_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCache_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCache_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCache_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCache_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCache_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageCache_Access_Array_Access_Array_Object'Class then ImageCache_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.ImageCache_Package_References;

with org.allbinary.image.ImageCache_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.ImageCache_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   use type TsUtil_Access;
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   use type TsUtil_Access_Array;
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   use type TsUtil_Access_Array_Access;
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   use type TsUtil_Access_Array_Access_Array;
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   use type TsUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   function Java_Box (Value : ImageCache_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageCache_Package_References.Java_Box;
   function Java_Unbox_ImageCache_Access_Array (Value : access Java_Object'Class) return ImageCache_Access_Array_Access renames org.allbinary.image.ImageCache_Package_References.Java_Unbox_ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   function Java_Box (Value : ImageCache_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageCache_Package_References.Java_Box;
   function Java_Unbox_ImageCache_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageCache_Access_Array_Access_Array_Access renames org.allbinary.image.ImageCache_Package_References.Java_Unbox_ImageCache_Access_Array_Access_Array;

   type ImageCache is new ImageCacheBase with record
      commonStrings : CommonStrings_Access;
      tsUtil : TsUtil_Access;
   end record;
   NULL_IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCache'Class);
   function Create return ImageCache_Access;
   procedure addListener (This : in out ImageCache; renderer_Param : access Java_Object'Class);
   function getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) return Integer;
   procedure getIndex (This : in out ImageCache; key_Param : access Java_Object'Class);
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class) return Image_Access;
   procedure getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class);
   procedure loadImageForAnimation (This : in out ImageCache);
   procedure progressEnded (This : in out ImageCache);
   procedure runTask (This : in out ImageCache);
   function isLazy (This : in out ImageCache) return Boolean;
   procedure addListener (This : in out ImageCache; Value : Unbounded_String);
   function getIndex (This : in out ImageCache; Value : Unbounded_String) return Integer;
   procedure getIndex (This : in out ImageCache; Value : Unbounded_String);
   function getWithKey (This : in out ImageCache; Value : Unbounded_String) return Image_Access;
   procedure getWithKey (This : in out ImageCache; Value : Unbounded_String);

end org.allbinary.image.ImageCache_Package;


