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

limited with org.allbinary.image.opengles.OpenGLImageUtilBase_Package;
package org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References is
   type OpenGLImageUtilBase_Access is access all org.allbinary.image.opengles.OpenGLImageUtilBase_Package.OpenGLImageUtilBase'Class;
   type OpenGLImageUtilBase_Access_Array is array (Natural range <>) of OpenGLImageUtilBase_Access;
   type OpenGLImageUtilBase_Access_Array_Access is access all OpenGLImageUtilBase_Access_Array;
   type OpenGLImageUtilBase_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageUtilBase_Access_Array_Access;
   type OpenGLImageUtilBase_Access_Array_Access_Array_Access is access all OpenGLImageUtilBase_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References;

with org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References;
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
limited with org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.OpenGLBitmap_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.image.opengles.OpenGLImageUtilBase_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OpenGLBitmap_Package renames Standard.org.allbinary.graphics.OpenGLBitmap_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype OpenGLBitmap_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access;
   use type OpenGLBitmap_Access;
   subtype OpenGLBitmap_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array;
   use type OpenGLBitmap_Access_Array;
   subtype OpenGLBitmap_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access;
   use type OpenGLBitmap_Access_Array_Access;
   subtype OpenGLBitmap_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array;
   use type OpenGLBitmap_Access_Array_Access_Array;
   subtype OpenGLBitmap_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array_Access;
   use type OpenGLBitmap_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLImageUtilBase_Access is org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References.OpenGLImageUtilBase_Access;
   function "=" (Left, Right : OpenGLImageUtilBase_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References."=";
   subtype OpenGLImageUtilBase_Access_Array is org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References.OpenGLImageUtilBase_Access_Array;
   function "=" (Left, Right : OpenGLImageUtilBase_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References."=";
   subtype OpenGLImageUtilBase_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References.OpenGLImageUtilBase_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageUtilBase_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References."=";
   subtype OpenGLImageUtilBase_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References.OpenGLImageUtilBase_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageUtilBase_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References."=";
   subtype OpenGLImageUtilBase_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References.OpenGLImageUtilBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageUtilBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package_References."=";

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


