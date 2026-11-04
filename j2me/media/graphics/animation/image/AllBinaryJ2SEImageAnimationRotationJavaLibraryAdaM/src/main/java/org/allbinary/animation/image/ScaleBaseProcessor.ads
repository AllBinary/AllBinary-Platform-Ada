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

limited with org.allbinary.animation.image.ScaleBaseProcessor_Package;
package org.allbinary.animation.image.ScaleBaseProcessor_Package_References is
   type ScaleBaseProcessor_Access is access all org.allbinary.animation.image.ScaleBaseProcessor_Package.ScaleBaseProcessor'Class;
   type ScaleBaseProcessor_Access_Array is array (Natural range <>) of ScaleBaseProcessor_Access;
   type ScaleBaseProcessor_Access_Array_Access is access all ScaleBaseProcessor_Access_Array;
   type ScaleBaseProcessor_Access_Array_Access_Array is array (Natural range <>) of ScaleBaseProcessor_Access_Array_Access;
   type ScaleBaseProcessor_Access_Array_Access_Array_Access is access all ScaleBaseProcessor_Access_Array_Access_Array;
end org.allbinary.animation.image.ScaleBaseProcessor_Package_References;

with org.allbinary.animation.image.ScaleBaseProcessor_Package_References;
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

package org.allbinary.animation.image.ScaleBaseProcessor_Package is

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


   subtype ScaleBaseProcessor_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";

   type ScaleBaseProcessor is new Java_Object with null record;
   instance : ScaleBaseProcessor_Access;

   procedure Initialize (This : in out ScaleBaseProcessor'Class);
   function Create return ScaleBaseProcessor_Access;
   function getInstance return ScaleBaseProcessor_Access;
   procedure update (This : in out ScaleBaseProcessor; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; imageToShowArray : Image_Access_Array_Access; index : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.animation.image.ScaleBaseProcessor_Package;


