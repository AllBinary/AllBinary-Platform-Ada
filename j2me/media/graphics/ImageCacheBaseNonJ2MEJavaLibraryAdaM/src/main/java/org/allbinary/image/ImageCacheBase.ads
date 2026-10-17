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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.image.ImageFactory_Package; use org.allbinary.image.ImageFactory_Package;

package org.allbinary.image.ImageCacheBase_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type ImageCacheBase is tagged;
   type ImageCacheBase_Access is access all ImageCacheBase'Class;
   type ImageCacheBase_Access_Array is array (Natural range <>) of ImageCacheBase_Access;
   type ImageCacheBase_Access_Array_Access is access all ImageCacheBase_Access_Array;

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

end org.allbinary.image.ImageCacheBase_Package;


