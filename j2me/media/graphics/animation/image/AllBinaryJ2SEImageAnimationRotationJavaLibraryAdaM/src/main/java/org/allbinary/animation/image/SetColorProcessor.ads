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
limited with org.allbinary.animation.image.SetColorProcessor_Package;
package org.allbinary.animation.image.SetColorProcessor_Package_References is
   type SetColorProcessor_Access is access all org.allbinary.animation.image.SetColorProcessor_Package.SetColorProcessor'Class;
   type SetColorProcessor_Access_Array is array (Natural range <>) of SetColorProcessor_Access;
   type SetColorProcessor_Access_Array_Access is access all SetColorProcessor_Access_Array;
   type SetColorProcessor_Access_Array_Access_Array is array (Natural range <>) of SetColorProcessor_Access_Array_Access;
   type SetColorProcessor_Access_Array_Access_Array_Access is access all SetColorProcessor_Access_Array_Access_Array;
   type SetColorProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SetColorProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SetColorProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SetColorProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SetColorProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SetColorProcessor_Access_Array_Access is (if Value /= null and then Value.all in SetColorProcessor_Access_Array_Object'Class then SetColorProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SetColorProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SetColorProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SetColorProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SetColorProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SetColorProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SetColorProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SetColorProcessor_Access_Array_Access_Array_Object'Class then SetColorProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.SetColorProcessor_Package_References;

with org.allbinary.animation.image.SetColorProcessor_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
with org.allbinary.animation.image.ModifierBaseProcessor_Package; use org.allbinary.animation.image.ModifierBaseProcessor_Package;

package org.allbinary.animation.image.SetColorProcessor_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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


   subtype SetColorProcessor_Access is org.allbinary.animation.image.SetColorProcessor_Package_References.SetColorProcessor_Access;
   function "=" (Left, Right : SetColorProcessor_Access) return Boolean renames org.allbinary.animation.image.SetColorProcessor_Package_References."=";
   subtype SetColorProcessor_Access_Array is org.allbinary.animation.image.SetColorProcessor_Package_References.SetColorProcessor_Access_Array;
   function "=" (Left, Right : SetColorProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.SetColorProcessor_Package_References."=";
   subtype SetColorProcessor_Access_Array_Access is org.allbinary.animation.image.SetColorProcessor_Package_References.SetColorProcessor_Access_Array_Access;
   function "=" (Left, Right : SetColorProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.SetColorProcessor_Package_References."=";
   function Java_Box (Value : SetColorProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.SetColorProcessor_Package_References.Java_Box;
   function Java_Unbox_SetColorProcessor_Access_Array (Value : access Java_Object'Class) return SetColorProcessor_Access_Array_Access renames org.allbinary.animation.image.SetColorProcessor_Package_References.Java_Unbox_SetColorProcessor_Access_Array;
   subtype SetColorProcessor_Access_Array_Access_Array is org.allbinary.animation.image.SetColorProcessor_Package_References.SetColorProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SetColorProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.SetColorProcessor_Package_References."=";
   subtype SetColorProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.SetColorProcessor_Package_References.SetColorProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SetColorProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.SetColorProcessor_Package_References."=";
   function Java_Box (Value : SetColorProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.SetColorProcessor_Package_References.Java_Box;
   function Java_Unbox_SetColorProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SetColorProcessor_Access_Array_Access_Array_Access renames org.allbinary.animation.image.SetColorProcessor_Package_References.Java_Unbox_SetColorProcessor_Access_Array_Access_Array;

   type SetColorProcessor is new ModifierBaseProcessor with null record;
   instanceC : SetColorProcessor_Access;

   procedure Initialize (This : in out SetColorProcessor'Class);
   function Create return SetColorProcessor_Access;
   function getInstance return SetColorProcessor_Access;
   procedure updateColor (This : in out SetColorProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.image.SetColorProcessor_Package;


