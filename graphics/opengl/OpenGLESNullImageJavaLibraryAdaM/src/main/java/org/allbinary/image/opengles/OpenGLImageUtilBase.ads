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
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.graphics.OpenGLBitmap_Package; use org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.image.opengles.OpenGLImageUtilBase_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OpenGLBitmap_Package renames Standard.org.allbinary.graphics.OpenGLBitmap_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type OpenGLImageUtilBase is tagged;
   type OpenGLImageUtilBase_Access is access all OpenGLImageUtilBase'Class;
   type OpenGLImageUtilBase_Access_Array is array (Natural range <>) of OpenGLImageUtilBase_Access;
   type OpenGLImageUtilBase_Access_Array_Access is access all OpenGLImageUtilBase_Access_Array;
   type OpenGLImageUtilBase_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageUtilBase_Access_Array_Access;
   type OpenGLImageUtilBase_Access_Array_Access_Array_Access is access all OpenGLImageUtilBase_Access_Array_Access_Array;

   type OpenGLImageUtilBase is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLImageUtilBase'Class);
   function Create return OpenGLImageUtilBase_Access;
   function paint (This : in out OpenGLImageUtilBase; alphaBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; index : Integer) return OpenGLBitmap_Access;
   procedure paint (This : in out OpenGLImageUtilBase; alphaBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; index : Integer);
   function paint (This : in out OpenGLImageUtilBase; colorBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; alpha : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return OpenGLBitmap_Access;
   procedure paint (This : in out OpenGLImageUtilBase; colorBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; originalBitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; alpha : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function createImage (This : in out OpenGLImageUtilBase; name : Unbounded_String) return OpenGLBitmap_Access;
   procedure createImage (This : in out OpenGLImageUtilBase; name : Unbounded_String);
   function createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream_Param : access InputStream_Package.InputStream'Class) return OpenGLBitmap_Access;
   procedure createImageFromInputStream (This : in out OpenGLImageUtilBase; inputStream_Param : access InputStream_Package.InputStream'Class);

end org.allbinary.image.opengles.OpenGLImageUtilBase_Package;


