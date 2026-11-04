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

limited with javax.microedition.lcdui.NullImage_Package;
package javax.microedition.lcdui.NullImage_Package_References is
   type NullImage_Access is access all javax.microedition.lcdui.NullImage_Package.NullImage'Class;
   type NullImage_Access_Array is array (Natural range <>) of NullImage_Access;
   type NullImage_Access_Array_Access is access all NullImage_Access_Array;
   type NullImage_Access_Array_Access_Array is array (Natural range <>) of NullImage_Access_Array_Access;
   type NullImage_Access_Array_Access_Array_Access is access all NullImage_Access_Array_Access_Array;
end javax.microedition.lcdui.NullImage_Package_References;

with javax.microedition.lcdui.NullImage_Package_References;
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

package javax.microedition.lcdui.NullImage_Package is

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


   subtype NullImage_Access is javax.microedition.lcdui.NullImage_Package_References.NullImage_Access;
   function "=" (Left, Right : NullImage_Access) return Boolean renames javax.microedition.lcdui.NullImage_Package_References."=";
   subtype NullImage_Access_Array is javax.microedition.lcdui.NullImage_Package_References.NullImage_Access_Array;
   function "=" (Left, Right : NullImage_Access_Array) return Boolean renames javax.microedition.lcdui.NullImage_Package_References."=";
   subtype NullImage_Access_Array_Access is javax.microedition.lcdui.NullImage_Package_References.NullImage_Access_Array_Access;
   function "=" (Left, Right : NullImage_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullImage_Package_References."=";
   subtype NullImage_Access_Array_Access_Array is javax.microedition.lcdui.NullImage_Package_References.NullImage_Access_Array_Access_Array;
   function "=" (Left, Right : NullImage_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.NullImage_Package_References."=";
   subtype NullImage_Access_Array_Access_Array_Access is javax.microedition.lcdui.NullImage_Package_References.NullImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullImage_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullImage_Package_References."=";

   type NullImage is new Java_Object with null record;
   NULL_IMAGE_ARRAY : Image_Access_Array_Access;
   NULL_IMAGE : Image_Access;

   procedure Initialize (This : in out NullImage'Class);
   function Create return NullImage_Access;

end javax.microedition.lcdui.NullImage_Package;


