--  Generated Code Do Not Modify

limited with org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;
package org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References is
   type ScreenRelationalUtil_Access is access all org.allbinary.graphics.displayable.ScreenRelationalUtil_Package.ScreenRelationalUtil'Class;
   type ScreenRelationalUtil_Access_Array is array (Natural range <>) of ScreenRelationalUtil_Access;
   type ScreenRelationalUtil_Access_Array_Access is access all ScreenRelationalUtil_Access_Array;
   type ScreenRelationalUtil_Access_Array_Access_Array is array (Natural range <>) of ScreenRelationalUtil_Access_Array_Access;
   type ScreenRelationalUtil_Access_Array_Access_Array_Access is access all ScreenRelationalUtil_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References;

with org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References;
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

package org.allbinary.graphics.displayable.ScreenRelationalUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ScreenRelationalUtil_Access is org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References.ScreenRelationalUtil_Access;
   function "=" (Left, Right : ScreenRelationalUtil_Access) return Boolean renames org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References."=";
   subtype ScreenRelationalUtil_Access_Array is org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References.ScreenRelationalUtil_Access_Array;
   function "=" (Left, Right : ScreenRelationalUtil_Access_Array) return Boolean renames org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References."=";
   subtype ScreenRelationalUtil_Access_Array_Access is org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References.ScreenRelationalUtil_Access_Array_Access;
   function "=" (Left, Right : ScreenRelationalUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References."=";
   subtype ScreenRelationalUtil_Access_Array_Access_Array is org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References.ScreenRelationalUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenRelationalUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References."=";
   subtype ScreenRelationalUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References.ScreenRelationalUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenRelationalUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.ScreenRelationalUtil_Package_References."=";

   type ScreenRelationalUtil is new Java_Object with null record;
   instance : ScreenRelationalUtil_Access;

   procedure Initialize (This : in out ScreenRelationalUtil'Class);
   function Create return ScreenRelationalUtil_Access;
   function getInstance return ScreenRelationalUtil_Access;
   function getScaleImage (This : in out ScreenRelationalUtil; image_Param : access Image_Package.Image'Class) return Float;
   procedure getScaleImage (This : in out ScreenRelationalUtil; image_Param : access Image_Package.Image'Class);
   function getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Float;
   procedure getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer);
   function getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Float;
   procedure getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer);
   function getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Integer;
   procedure getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer);
   function getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Integer;
   procedure getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer);

end org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;


