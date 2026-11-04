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

limited with org.allbinary.graphics.paint.AnimationCompositePaintable_Package;
package org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References is
   type AnimationCompositePaintable_Access is access all org.allbinary.graphics.paint.AnimationCompositePaintable_Package.AnimationCompositePaintable'Class;
   type AnimationCompositePaintable_Access_Array is array (Natural range <>) of AnimationCompositePaintable_Access;
   type AnimationCompositePaintable_Access_Array_Access is access all AnimationCompositePaintable_Access_Array;
   type AnimationCompositePaintable_Access_Array_Access_Array is array (Natural range <>) of AnimationCompositePaintable_Access_Array_Access;
   type AnimationCompositePaintable_Access_Array_Access_Array_Access is access all AnimationCompositePaintable_Access_Array_Access_Array;
end org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References;

with org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.graphics.paint.AnimationCompositePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
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


   subtype AnimationCompositePaintable_Access is org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References.AnimationCompositePaintable_Access;
   function "=" (Left, Right : AnimationCompositePaintable_Access) return Boolean renames org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References."=";
   subtype AnimationCompositePaintable_Access_Array is org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References.AnimationCompositePaintable_Access_Array;
   function "=" (Left, Right : AnimationCompositePaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References."=";
   subtype AnimationCompositePaintable_Access_Array_Access is org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References.AnimationCompositePaintable_Access_Array_Access;
   function "=" (Left, Right : AnimationCompositePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References."=";
   subtype AnimationCompositePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References.AnimationCompositePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationCompositePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References."=";
   subtype AnimationCompositePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References.AnimationCompositePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationCompositePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.AnimationCompositePaintable_Package_References."=";

   type AnimationCompositePaintable is new InitUpdatePaintable with record
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out AnimationCompositePaintable'Class; animationInterface_Param : access Animation_Package.Animation'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class) return AnimationCompositePaintable_Access;
   procedure paint (This : in out AnimationCompositePaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out AnimationCompositePaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.paint.AnimationCompositePaintable_Package;


