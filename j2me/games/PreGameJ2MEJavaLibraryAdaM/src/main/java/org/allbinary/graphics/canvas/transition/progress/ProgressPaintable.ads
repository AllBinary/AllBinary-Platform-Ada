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
limited with org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;
package org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References is
   type ProgressPaintable_Access is access all org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package.ProgressPaintable'Class;
   type ProgressPaintable_Access_Array is array (Natural range <>) of ProgressPaintable_Access;
   type ProgressPaintable_Access_Array_Access is access all ProgressPaintable_Access_Array;
   type ProgressPaintable_Access_Array_Access_Array is array (Natural range <>) of ProgressPaintable_Access_Array_Access;
   type ProgressPaintable_Access_Array_Access_Array_Access is access all ProgressPaintable_Access_Array_Access_Array;
   type ProgressPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressPaintable_Access_Array_Access is (if Value /= null and then Value.all in ProgressPaintable_Access_Array_Object'Class then ProgressPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type ProgressPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProgressPaintable_Access_Array_Access_Array_Object'Class then ProgressPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References;
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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;

package org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   use type ProgressCanvas_Access;
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   use type ProgressCanvas_Access_Array;
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access;
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   use type ProgressCanvas_Access_Array_Access_Array;
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProgressPaintable_Access is org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.ProgressPaintable_Access;
   function "=" (Left, Right : ProgressPaintable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References."=";
   subtype ProgressPaintable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.ProgressPaintable_Access_Array;
   function "=" (Left, Right : ProgressPaintable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References."=";
   subtype ProgressPaintable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.ProgressPaintable_Access_Array_Access;
   function "=" (Left, Right : ProgressPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References."=";
   function Java_Box (Value : ProgressPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.Java_Box;
   function Java_Unbox_ProgressPaintable_Access_Array (Value : access Java_Object'Class) return ProgressPaintable_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.Java_Unbox_ProgressPaintable_Access_Array;
   subtype ProgressPaintable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.ProgressPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References."=";
   subtype ProgressPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.ProgressPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References."=";
   function Java_Box (Value : ProgressPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.Java_Box;
   function Java_Unbox_ProgressPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return ProgressPaintable_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package_References.Java_Unbox_ProgressPaintable_Access_Array_Access_Array;

   type ProgressPaintable is new Paintable with record
      progressCanvas : ProgressCanvas_Access;
   end record;

   procedure Initialize (This : in out ProgressPaintable'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class);
   function Create (progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressPaintable_Access;
   procedure paint (This : in out ProgressPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;


