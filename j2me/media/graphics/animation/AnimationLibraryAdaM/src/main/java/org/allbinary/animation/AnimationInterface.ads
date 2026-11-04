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

limited with org.allbinary.animation.AnimationInterface_Package;
package org.allbinary.animation.AnimationInterface_Package_References is
   type AnimationInterface_Access is access all org.allbinary.animation.AnimationInterface_Package.AnimationInterface'Class;
   type AnimationInterface_Access_Array is array (Natural range <>) of AnimationInterface_Access;
   type AnimationInterface_Access_Array_Access is access all AnimationInterface_Access_Array;
   type AnimationInterface_Access_Array_Access_Array is array (Natural range <>) of AnimationInterface_Access_Array_Access;
   type AnimationInterface_Access_Array_Access_Array_Access is access all AnimationInterface_Access_Array_Access_Array;
end org.allbinary.animation.AnimationInterface_Package_References;

with org.allbinary.animation.AnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package; use org.allbinary.graphics.paint.LocationPaintableInterface_Package;

package org.allbinary.animation.AnimationInterface_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package LocationPaintableInterface_Package renames Standard.org.allbinary.graphics.paint.LocationPaintableInterface_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AnimationInterface is interface and LocationPaintableInterface;
   subtype AnimationInterface_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access;
   function "=" (Left, Right : AnimationInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array;
   function "=" (Left, Right : AnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   function Java_Object_Access_From_AnimationInterface (Value : AnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure nextFrame (This : in out AnimationInterface) is abstract;
   procedure paintThreedXYZ (This : in out AnimationInterface; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is abstract;

end org.allbinary.animation.AnimationInterface_Package;


