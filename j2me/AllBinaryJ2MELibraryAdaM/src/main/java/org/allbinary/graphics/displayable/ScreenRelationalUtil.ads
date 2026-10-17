--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package org.allbinary.graphics.displayable.ScreenRelationalUtil_Package is


   type ScreenRelationalUtil is tagged;
   type ScreenRelationalUtil_Access is access all ScreenRelationalUtil'Class;
   type ScreenRelationalUtil_Access_Array is array (Natural range <>) of ScreenRelationalUtil_Access;
   type ScreenRelationalUtil_Access_Array_Access is access all ScreenRelationalUtil_Access_Array;

   type ScreenRelationalUtil is new Java_Object with null record;
   instance : ScreenRelationalUtil_Access;

   procedure Initialize (This : in out ScreenRelationalUtil'Class);
   function Create return ScreenRelationalUtil_Access;
   function getInstance return ScreenRelationalUtil_Access;
   function getScaleImage (This : in out ScreenRelationalUtil; image : Image_Access) return Float;
   procedure getScaleImage (This : in out ScreenRelationalUtil; image : Image_Access);
   function getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Float;
   procedure getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer);
   function getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Float;
   procedure getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer);
   function getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Integer;
   procedure getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer);
   function getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Integer;
   procedure getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer);

end org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;


