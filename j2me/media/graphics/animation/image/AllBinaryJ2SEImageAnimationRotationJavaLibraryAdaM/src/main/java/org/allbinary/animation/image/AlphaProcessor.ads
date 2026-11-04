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

limited with org.allbinary.animation.image.AlphaProcessor_Package;
package org.allbinary.animation.image.AlphaProcessor_Package_References is
   type AlphaProcessor_Access is access all org.allbinary.animation.image.AlphaProcessor_Package.AlphaProcessor'Class;
   type AlphaProcessor_Access_Array is array (Natural range <>) of AlphaProcessor_Access;
   type AlphaProcessor_Access_Array_Access is access all AlphaProcessor_Access_Array;
   type AlphaProcessor_Access_Array_Access_Array is array (Natural range <>) of AlphaProcessor_Access_Array_Access;
   type AlphaProcessor_Access_Array_Access_Array_Access is access all AlphaProcessor_Access_Array_Access_Array;
end org.allbinary.animation.image.AlphaProcessor_Package_References;

with org.allbinary.animation.image.AlphaProcessor_Package_References;
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
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
with org.allbinary.animation.image.ModifierBaseProcessor_Package; use org.allbinary.animation.image.ModifierBaseProcessor_Package;

package org.allbinary.animation.image.AlphaProcessor_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
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
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   use type ImageModifierUtil_Access;
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   use type ImageModifierUtil_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access;
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   use type ImageModifierUtil_Access_Array_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AlphaProcessor_Access is org.allbinary.animation.image.AlphaProcessor_Package_References.AlphaProcessor_Access;
   function "=" (Left, Right : AlphaProcessor_Access) return Boolean renames org.allbinary.animation.image.AlphaProcessor_Package_References."=";
   subtype AlphaProcessor_Access_Array is org.allbinary.animation.image.AlphaProcessor_Package_References.AlphaProcessor_Access_Array;
   function "=" (Left, Right : AlphaProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaProcessor_Package_References."=";
   subtype AlphaProcessor_Access_Array_Access is org.allbinary.animation.image.AlphaProcessor_Package_References.AlphaProcessor_Access_Array_Access;
   function "=" (Left, Right : AlphaProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaProcessor_Package_References."=";
   subtype AlphaProcessor_Access_Array_Access_Array is org.allbinary.animation.image.AlphaProcessor_Package_References.AlphaProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AlphaProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaProcessor_Package_References."=";
   subtype AlphaProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AlphaProcessor_Package_References.AlphaProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlphaProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaProcessor_Package_References."=";

   type AlphaProcessor is new ModifierBaseProcessor with null record;
   instanceC : AlphaProcessor_Access;

   procedure Initialize (This : in out AlphaProcessor'Class);
   function Create return AlphaProcessor_Access;
   function getInstance return AlphaProcessor_Access;
   procedure updateAlpha (This : in out AlphaProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; alpha : Integer);

end org.allbinary.animation.image.AlphaProcessor_Package;


