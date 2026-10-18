-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package org.allbinary.image.ImageFactory_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;

   type ImageFactory is tagged;
   type ImageFactory_Access is access all ImageFactory'Class;
   type ImageFactory_Access_Array is array (Natural range <>) of ImageFactory_Access;
   type ImageFactory_Access_Array_Access is access all ImageFactory_Access_Array;

   type ImageFactory is new Java_Object with null record;
   instance : ImageFactory_Access;

   procedure Initialize (This : in out ImageFactory'Class);
   function Create return ImageFactory_Access;
   function getInstance return ImageFactory_Access;
   function createImageUrl (This : in out ImageFactory; url : Unbounded_String) return Image_Access;
   procedure createImageUrl (This : in out ImageFactory; url : Unbounded_String);
   function createImage (This : in out ImageFactory; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure createImage (This : in out ImageFactory; caller : Unbounded_String; width : Integer; height : Integer);
   function createImageFromInputStream (This : in out ImageFactory; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out ImageFactory; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class);
   function createImageFromInputStream (This : in out ImageFactory; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out ImageFactory; inputStream_Param : access InputStream_Package.InputStream'Class);

end org.allbinary.image.ImageFactory_Package;


