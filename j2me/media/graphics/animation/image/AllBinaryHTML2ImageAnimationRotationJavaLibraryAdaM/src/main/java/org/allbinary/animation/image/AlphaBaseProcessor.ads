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

with AllBinary_Java;
limited with org.allbinary.animation.image.AlphaBaseProcessor_Package;
package org.allbinary.animation.image.AlphaBaseProcessor_Package_References is
   type AlphaBaseProcessor_Access is access all org.allbinary.animation.image.AlphaBaseProcessor_Package.AlphaBaseProcessor'Class;
   type AlphaBaseProcessor_Access_Array is array (Natural range <>) of AlphaBaseProcessor_Access;
   type AlphaBaseProcessor_Access_Array_Access is access all AlphaBaseProcessor_Access_Array;
   type AlphaBaseProcessor_Access_Array_Access_Array is array (Natural range <>) of AlphaBaseProcessor_Access_Array_Access;
   type AlphaBaseProcessor_Access_Array_Access_Array_Access is access all AlphaBaseProcessor_Access_Array_Access_Array;
   type AlphaBaseProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlphaBaseProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : AlphaBaseProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlphaBaseProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlphaBaseProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlphaBaseProcessor_Access_Array_Access is (if Value /= null and then Value.all in AlphaBaseProcessor_Access_Array_Object'Class then AlphaBaseProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type AlphaBaseProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlphaBaseProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AlphaBaseProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlphaBaseProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlphaBaseProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlphaBaseProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AlphaBaseProcessor_Access_Array_Access_Array_Object'Class then AlphaBaseProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AlphaBaseProcessor_Package_References;

with org.allbinary.animation.image.AlphaBaseProcessor_Package_References;
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

package org.allbinary.animation.image.AlphaBaseProcessor_Package is

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


   subtype AlphaBaseProcessor_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   function Java_Box (Value : AlphaBaseProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References.Java_Box;
   function Java_Unbox_AlphaBaseProcessor_Access_Array (Value : access Java_Object'Class) return AlphaBaseProcessor_Access_Array_Access renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References.Java_Unbox_AlphaBaseProcessor_Access_Array;
   subtype AlphaBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   function Java_Box (Value : AlphaBaseProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References.Java_Box;
   function Java_Unbox_AlphaBaseProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return AlphaBaseProcessor_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References.Java_Unbox_AlphaBaseProcessor_Access_Array_Access_Array;

   type AlphaBaseProcessor is new Java_Object with null record;
   instance : AlphaBaseProcessor_Access;

   procedure Initialize (This : in out AlphaBaseProcessor'Class);
   function Create return AlphaBaseProcessor_Access;
   function getInstance return AlphaBaseProcessor_Access;
   procedure setAlpha (This : in out AlphaBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; alpha : Integer);

end org.allbinary.animation.image.AlphaBaseProcessor_Package;


