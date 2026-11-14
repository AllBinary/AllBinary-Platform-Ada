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
limited with org.allbinary.image.GameFeatureImageCacheFactory_Package;
package org.allbinary.image.GameFeatureImageCacheFactory_Package_References is
   type GameFeatureImageCacheFactory_Access is access all org.allbinary.image.GameFeatureImageCacheFactory_Package.GameFeatureImageCacheFactory'Class;
   type GameFeatureImageCacheFactory_Access_Array is array (Natural range <>) of GameFeatureImageCacheFactory_Access;
   type GameFeatureImageCacheFactory_Access_Array_Access is access all GameFeatureImageCacheFactory_Access_Array;
   type GameFeatureImageCacheFactory_Access_Array_Access_Array is array (Natural range <>) of GameFeatureImageCacheFactory_Access_Array_Access;
   type GameFeatureImageCacheFactory_Access_Array_Access_Array_Access is access all GameFeatureImageCacheFactory_Access_Array_Access_Array;
   type GameFeatureImageCacheFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureImageCacheFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureImageCacheFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureImageCacheFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureImageCacheFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureImageCacheFactory_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureImageCacheFactory_Access_Array_Object'Class then GameFeatureImageCacheFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureImageCacheFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureImageCacheFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureImageCacheFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureImageCacheFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureImageCacheFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureImageCacheFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureImageCacheFactory_Access_Array_Access_Array_Object'Class then GameFeatureImageCacheFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.GameFeatureImageCacheFactory_Package_References;

with org.allbinary.image.GameFeatureImageCacheFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;

package org.allbinary.image.GameFeatureImageCacheFactory_Package is

   package Reference_Types is
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureImageCacheFactory_Access is org.allbinary.image.GameFeatureImageCacheFactory_Package_References.GameFeatureImageCacheFactory_Access;
   function "=" (Left, Right : GameFeatureImageCacheFactory_Access) return Boolean renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References."=";
   subtype GameFeatureImageCacheFactory_Access_Array is org.allbinary.image.GameFeatureImageCacheFactory_Package_References.GameFeatureImageCacheFactory_Access_Array;
   function "=" (Left, Right : GameFeatureImageCacheFactory_Access_Array) return Boolean renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References."=";
   subtype GameFeatureImageCacheFactory_Access_Array_Access is org.allbinary.image.GameFeatureImageCacheFactory_Package_References.GameFeatureImageCacheFactory_Access_Array_Access;
   function "=" (Left, Right : GameFeatureImageCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References."=";
   function Java_Box (Value : GameFeatureImageCacheFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References.Java_Box;
   function Java_Unbox_GameFeatureImageCacheFactory_Access_Array (Value : access Java_Object'Class) return GameFeatureImageCacheFactory_Access_Array_Access renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References.Java_Unbox_GameFeatureImageCacheFactory_Access_Array;
   subtype GameFeatureImageCacheFactory_Access_Array_Access_Array is org.allbinary.image.GameFeatureImageCacheFactory_Package_References.GameFeatureImageCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureImageCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References."=";
   subtype GameFeatureImageCacheFactory_Access_Array_Access_Array_Access is org.allbinary.image.GameFeatureImageCacheFactory_Package_References.GameFeatureImageCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureImageCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References."=";
   function Java_Box (Value : GameFeatureImageCacheFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References.Java_Box;
   function Java_Unbox_GameFeatureImageCacheFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureImageCacheFactory_Access_Array_Access_Array_Access renames org.allbinary.image.GameFeatureImageCacheFactory_Package_References.Java_Unbox_GameFeatureImageCacheFactory_Access_Array_Access_Array;

   type GameFeatureImageCacheFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameFeatureImageCacheFactory'Class);
   function Create return GameFeatureImageCacheFactory_Access;
   function getInstance return ImageCache_Access;
   procedure init;
   procedure releaseAll;

end org.allbinary.image.GameFeatureImageCacheFactory_Package;


