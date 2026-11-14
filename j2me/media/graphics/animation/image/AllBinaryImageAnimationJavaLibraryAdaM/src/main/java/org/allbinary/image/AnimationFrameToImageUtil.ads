--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.image.AnimationFrameToImageUtil_Package;
package org.allbinary.image.AnimationFrameToImageUtil_Package_References is
   type AnimationFrameToImageUtil_Access is access all org.allbinary.image.AnimationFrameToImageUtil_Package.AnimationFrameToImageUtil'Class;
   type AnimationFrameToImageUtil_Access_Array is array (Natural range <>) of AnimationFrameToImageUtil_Access;
   type AnimationFrameToImageUtil_Access_Array_Access is access all AnimationFrameToImageUtil_Access_Array;
   type AnimationFrameToImageUtil_Access_Array_Access_Array is array (Natural range <>) of AnimationFrameToImageUtil_Access_Array_Access;
   type AnimationFrameToImageUtil_Access_Array_Access_Array_Access is access all AnimationFrameToImageUtil_Access_Array_Access_Array;
   type AnimationFrameToImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationFrameToImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationFrameToImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationFrameToImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationFrameToImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationFrameToImageUtil_Access_Array_Access is (if Value /= null and then Value.all in AnimationFrameToImageUtil_Access_Array_Object'Class then AnimationFrameToImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationFrameToImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationFrameToImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationFrameToImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationFrameToImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationFrameToImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationFrameToImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationFrameToImageUtil_Access_Array_Access_Array_Object'Class then AnimationFrameToImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.AnimationFrameToImageUtil_Package_References;

with org.allbinary.image.AnimationFrameToImageUtil_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.image.AnimationFrameToImageUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnimationFrameToImageUtil_Access is org.allbinary.image.AnimationFrameToImageUtil_Package_References.AnimationFrameToImageUtil_Access;
   function "=" (Left, Right : AnimationFrameToImageUtil_Access) return Boolean renames org.allbinary.image.AnimationFrameToImageUtil_Package_References."=";
   subtype AnimationFrameToImageUtil_Access_Array is org.allbinary.image.AnimationFrameToImageUtil_Package_References.AnimationFrameToImageUtil_Access_Array;
   function "=" (Left, Right : AnimationFrameToImageUtil_Access_Array) return Boolean renames org.allbinary.image.AnimationFrameToImageUtil_Package_References."=";
   subtype AnimationFrameToImageUtil_Access_Array_Access is org.allbinary.image.AnimationFrameToImageUtil_Package_References.AnimationFrameToImageUtil_Access_Array_Access;
   function "=" (Left, Right : AnimationFrameToImageUtil_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFrameToImageUtil_Package_References."=";
   function Java_Box (Value : AnimationFrameToImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.AnimationFrameToImageUtil_Package_References.Java_Box;
   function Java_Unbox_AnimationFrameToImageUtil_Access_Array (Value : access Java_Object'Class) return AnimationFrameToImageUtil_Access_Array_Access renames org.allbinary.image.AnimationFrameToImageUtil_Package_References.Java_Unbox_AnimationFrameToImageUtil_Access_Array;
   subtype AnimationFrameToImageUtil_Access_Array_Access_Array is org.allbinary.image.AnimationFrameToImageUtil_Package_References.AnimationFrameToImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFrameToImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.AnimationFrameToImageUtil_Package_References."=";
   subtype AnimationFrameToImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.AnimationFrameToImageUtil_Package_References.AnimationFrameToImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFrameToImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFrameToImageUtil_Package_References."=";
   function Java_Box (Value : AnimationFrameToImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.AnimationFrameToImageUtil_Package_References.Java_Box;
   function Java_Unbox_AnimationFrameToImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationFrameToImageUtil_Access_Array_Access_Array_Access renames org.allbinary.image.AnimationFrameToImageUtil_Package_References.Java_Unbox_AnimationFrameToImageUtil_Access_Array_Access_Array;

   type AnimationFrameToImageUtil is new Java_Object with null record;
   instance : AnimationFrameToImageUtil_Access;

   procedure Initialize (This : in out AnimationFrameToImageUtil'Class);
   function Create return AnimationFrameToImageUtil_Access;
   function getInstance return AnimationFrameToImageUtil_Access;
   function getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) return Image_Access;
   procedure getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class);
   function getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class) return Image_Access;
   procedure getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface_Param : access Animation_Package.Animation'Class);

end org.allbinary.image.AnimationFrameToImageUtil_Package;


