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

limited with org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;
package org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References is
   type IndexedAnimationToImageArrayUtil_Access is access all org.allbinary.image.IndexedAnimationToImageArrayUtil_Package.IndexedAnimationToImageArrayUtil'Class;
   type IndexedAnimationToImageArrayUtil_Access_Array is array (Natural range <>) of IndexedAnimationToImageArrayUtil_Access;
   type IndexedAnimationToImageArrayUtil_Access_Array_Access is access all IndexedAnimationToImageArrayUtil_Access_Array;
   type IndexedAnimationToImageArrayUtil_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimationToImageArrayUtil_Access_Array_Access;
   type IndexedAnimationToImageArrayUtil_Access_Array_Access_Array_Access is access all IndexedAnimationToImageArrayUtil_Access_Array_Access_Array;
end org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References;

with org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References;
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
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;

package org.allbinary.image.IndexedAnimationToImageArrayUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IndexedAnimationToImageArrayUtil_Access is org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References.IndexedAnimationToImageArrayUtil_Access;
   function "=" (Left, Right : IndexedAnimationToImageArrayUtil_Access) return Boolean renames org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References."=";
   subtype IndexedAnimationToImageArrayUtil_Access_Array is org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References.IndexedAnimationToImageArrayUtil_Access_Array;
   function "=" (Left, Right : IndexedAnimationToImageArrayUtil_Access_Array) return Boolean renames org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References."=";
   subtype IndexedAnimationToImageArrayUtil_Access_Array_Access is org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References.IndexedAnimationToImageArrayUtil_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationToImageArrayUtil_Access_Array_Access) return Boolean renames org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References."=";
   subtype IndexedAnimationToImageArrayUtil_Access_Array_Access_Array is org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References.IndexedAnimationToImageArrayUtil_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimationToImageArrayUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References."=";
   subtype IndexedAnimationToImageArrayUtil_Access_Array_Access_Array_Access is org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References.IndexedAnimationToImageArrayUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationToImageArrayUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.IndexedAnimationToImageArrayUtil_Package_References."=";

   type IndexedAnimationToImageArrayUtil is new Java_Object with null record;

   procedure Initialize (This : in out IndexedAnimationToImageArrayUtil'Class);
   function Create return IndexedAnimationToImageArrayUtil_Access;
   function getInstance (width : Integer; height : Integer; sequentialAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class) return Image_Access_Array_Access;
   procedure getInstance (width : Integer; height : Integer; sequentialAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class);

end org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;


