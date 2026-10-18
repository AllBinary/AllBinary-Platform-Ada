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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package javax.microedition.lcdui.PlatformImage_Package is


   type PlatformImage is tagged;
   type PlatformImage_Access is access all PlatformImage'Class;
   type PlatformImage_Access_Array is array (Natural range <>) of PlatformImage_Access;
   type PlatformImage_Access_Array_Access is access all PlatformImage_Access_Array;
   type PlatformImage_Access_Array_Access_Array is array (Natural range <>) of PlatformImage_Access_Array_Access;
   type PlatformImage_Access_Array_Access_Array_Access is access all PlatformImage_Access_Array_Access_Array;

   type PlatformImage is new Java_Object with null record;

   procedure Initialize (This : in out PlatformImage'Class);
   function Create return PlatformImage_Access;
   function getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class) return Java_Object_Access;
   procedure getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class);
   function getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer) return Integer;
   procedure getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer);
   function getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer) return Integer;
   procedure getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer);
   function getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer) return Integer;
   procedure getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer);
   function getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer) return Integer;
   procedure getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer);
   function getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) return Graphics_Access;
   procedure getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   procedure drawImage (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x : Integer; y : Integer; anchor : Integer; g2_Param : access Graphics_Package.Graphics'Class; g_Param : access Java_Object'Class);
   procedure drawRegion (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x_src : Integer; y_src : Integer; width : Integer; height : Integer; transform : Integer; x_dst : Integer; y_dst : Integer; anchor : Integer; g_Param : access Graphics_Package.Graphics'Class);
   procedure getRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   procedure setRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   function getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class) return Integer_Array_Access;
   procedure getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class);
   function getImage (This : in out PlatformImage; Value : Unbounded_String) return Java_Object_Access;
   procedure getImage (This : in out PlatformImage; Value : Unbounded_String);

end javax.microedition.lcdui.PlatformImage_Package;


