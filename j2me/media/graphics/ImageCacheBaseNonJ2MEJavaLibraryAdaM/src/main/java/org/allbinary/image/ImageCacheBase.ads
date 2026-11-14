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
limited with org.allbinary.image.ImageCacheBase_Package;
package org.allbinary.image.ImageCacheBase_Package_References is
   type ImageCacheBase_Access is access all org.allbinary.image.ImageCacheBase_Package.ImageCacheBase'Class;
   type ImageCacheBase_Access_Array is array (Natural range <>) of ImageCacheBase_Access;
   type ImageCacheBase_Access_Array_Access is access all ImageCacheBase_Access_Array;
   type ImageCacheBase_Access_Array_Access_Array is array (Natural range <>) of ImageCacheBase_Access_Array_Access;
   type ImageCacheBase_Access_Array_Access_Array_Access is access all ImageCacheBase_Access_Array_Access_Array;
   type ImageCacheBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCacheBase_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCacheBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCacheBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCacheBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCacheBase_Access_Array_Access is (if Value /= null and then Value.all in ImageCacheBase_Access_Array_Object'Class then ImageCacheBase_Access_Array_Object'Class (Value.all).Value else null);
   type ImageCacheBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCacheBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCacheBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCacheBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCacheBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCacheBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageCacheBase_Access_Array_Access_Array_Object'Class then ImageCacheBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.ImageCacheBase_Package_References;

with org.allbinary.image.ImageCacheBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.image.ImageFactory_Package;
with org.allbinary.image.ImageFactory_Package_References;

package org.allbinary.image.ImageCacheBase_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype ImageFactory_Access is org.allbinary.image.ImageFactory_Package_References.ImageFactory_Access;
   use type ImageFactory_Access;
   subtype ImageFactory_Access_Array is org.allbinary.image.ImageFactory_Package_References.ImageFactory_Access_Array;
   use type ImageFactory_Access_Array;
   subtype ImageFactory_Access_Array_Access is org.allbinary.image.ImageFactory_Package_References.ImageFactory_Access_Array_Access;
   use type ImageFactory_Access_Array_Access;
   subtype ImageFactory_Access_Array_Access_Array is org.allbinary.image.ImageFactory_Package_References.ImageFactory_Access_Array_Access_Array;
   use type ImageFactory_Access_Array_Access_Array;
   subtype ImageFactory_Access_Array_Access_Array_Access is org.allbinary.image.ImageFactory_Package_References.ImageFactory_Access_Array_Access_Array_Access;
   use type ImageFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCacheBase_Access is org.allbinary.image.ImageCacheBase_Package_References.ImageCacheBase_Access;
   function "=" (Left, Right : ImageCacheBase_Access) return Boolean renames org.allbinary.image.ImageCacheBase_Package_References."=";
   subtype ImageCacheBase_Access_Array is org.allbinary.image.ImageCacheBase_Package_References.ImageCacheBase_Access_Array;
   function "=" (Left, Right : ImageCacheBase_Access_Array) return Boolean renames org.allbinary.image.ImageCacheBase_Package_References."=";
   subtype ImageCacheBase_Access_Array_Access is org.allbinary.image.ImageCacheBase_Package_References.ImageCacheBase_Access_Array_Access;
   function "=" (Left, Right : ImageCacheBase_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCacheBase_Package_References."=";
   function Java_Box (Value : ImageCacheBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageCacheBase_Package_References.Java_Box;
   function Java_Unbox_ImageCacheBase_Access_Array (Value : access Java_Object'Class) return ImageCacheBase_Access_Array_Access renames org.allbinary.image.ImageCacheBase_Package_References.Java_Unbox_ImageCacheBase_Access_Array;
   subtype ImageCacheBase_Access_Array_Access_Array is org.allbinary.image.ImageCacheBase_Package_References.ImageCacheBase_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCacheBase_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCacheBase_Package_References."=";
   subtype ImageCacheBase_Access_Array_Access_Array_Access is org.allbinary.image.ImageCacheBase_Package_References.ImageCacheBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCacheBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCacheBase_Package_References."=";
   function Java_Box (Value : ImageCacheBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageCacheBase_Package_References.Java_Box;
   function Java_Unbox_ImageCacheBase_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageCacheBase_Access_Array_Access_Array_Access renames org.allbinary.image.ImageCacheBase_Package_References.Java_Unbox_ImageCacheBase_Access_Array_Access_Array;

   type ImageCacheBase is new Java_Object with record
      logUtil : LogUtil_Access;
      imageFactory : ImageFactory_Access;
      hashtable : ABHashtable_Access;
      SIZE : Integer;
      widths : Integer_Array_Access;
      heights : Integer_Array_Access;
      listOfList : BasicArrayList_Access_Array_Access;
      availableListOfList : BasicArrayList_Access_Array_Access;
      volume : Integer;
      nextIndex : Integer;
   end record;

   procedure Initialize (This : in out ImageCacheBase'Class);
   function Create return ImageCacheBase_Access;
   function getImage (This : in out ImageCacheBase; resourceId_Param : access Java_Object'Class) return Image_Access;
   procedure getImage (This : in out ImageCacheBase; resourceId_Param : access Java_Object'Class);
   procedure releaseAll (This : in out ImageCacheBase);
   function getIndexWH (This : in out ImageCacheBase; width : Integer; height : Integer) return Integer;
   procedure getIndexWH (This : in out ImageCacheBase; width : Integer; height : Integer);
   function getFromAvailable (This : in out ImageCacheBase; foundIndex : Integer; width : Integer; height : Integer) return Image_Access;
   procedure getFromAvailable (This : in out ImageCacheBase; foundIndex : Integer; width : Integer; height : Integer);
   function get (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCacheBase; key_Param : access Java_Object'Class) return Image_Access;
   procedure getWithKey (This : in out ImageCacheBase; key_Param : access Java_Object'Class);
   function createImage (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure createImage (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer);
   function createImageFromInputStream (This : in out ImageCacheBase; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out ImageCacheBase; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class);
   function toString (This : in out ImageCacheBase) return Unbounded_String;
   function getHashtableP (This : in out ImageCacheBase) return ABHashtable_Access;
   procedure init (This : in out ImageCacheBase; image_Param : access Image_Package.Image'Class);
   procedure initProgress (This : in out ImageCacheBase);
   function getImage (This : in out ImageCacheBase; Value : Unbounded_String) return Image_Access;
   procedure getImage (This : in out ImageCacheBase; Value : Unbounded_String);
   function getWithKey (This : in out ImageCacheBase; Value : Unbounded_String) return Image_Access;
   procedure getWithKey (This : in out ImageCacheBase; Value : Unbounded_String);

end org.allbinary.image.ImageCacheBase_Package;


