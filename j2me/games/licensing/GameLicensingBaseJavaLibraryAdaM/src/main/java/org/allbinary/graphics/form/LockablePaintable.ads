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
limited with org.allbinary.graphics.form.LockablePaintable_Package;
package org.allbinary.graphics.form.LockablePaintable_Package_References is
   type LockablePaintable_Access is access all org.allbinary.graphics.form.LockablePaintable_Package.LockablePaintable'Class;
   type LockablePaintable_Access_Array is array (Natural range <>) of LockablePaintable_Access;
   type LockablePaintable_Access_Array_Access is access all LockablePaintable_Access_Array;
   type LockablePaintable_Access_Array_Access_Array is array (Natural range <>) of LockablePaintable_Access_Array_Access;
   type LockablePaintable_Access_Array_Access_Array_Access is access all LockablePaintable_Access_Array_Access_Array;
   type LockablePaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockablePaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : LockablePaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockablePaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockablePaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockablePaintable_Access_Array_Access is (if Value /= null and then Value.all in LockablePaintable_Access_Array_Object'Class then LockablePaintable_Access_Array_Object'Class (Value.all).Value else null);
   type LockablePaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockablePaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LockablePaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockablePaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockablePaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockablePaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LockablePaintable_Access_Array_Access_Array_Object'Class then LockablePaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.LockablePaintable_Package_References;

with org.allbinary.graphics.form.LockablePaintable_Package_References;
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
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;

package org.allbinary.graphics.form.LockablePaintable_Package is

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


   subtype LockablePaintable_Access is org.allbinary.graphics.form.LockablePaintable_Package_References.LockablePaintable_Access;
   function "=" (Left, Right : LockablePaintable_Access) return Boolean renames org.allbinary.graphics.form.LockablePaintable_Package_References."=";
   subtype LockablePaintable_Access_Array is org.allbinary.graphics.form.LockablePaintable_Package_References.LockablePaintable_Access_Array;
   function "=" (Left, Right : LockablePaintable_Access_Array) return Boolean renames org.allbinary.graphics.form.LockablePaintable_Package_References."=";
   subtype LockablePaintable_Access_Array_Access is org.allbinary.graphics.form.LockablePaintable_Package_References.LockablePaintable_Access_Array_Access;
   function "=" (Left, Right : LockablePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.LockablePaintable_Package_References."=";
   function Java_Box (Value : LockablePaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.LockablePaintable_Package_References.Java_Box;
   function Java_Unbox_LockablePaintable_Access_Array (Value : access Java_Object'Class) return LockablePaintable_Access_Array_Access renames org.allbinary.graphics.form.LockablePaintable_Package_References.Java_Unbox_LockablePaintable_Access_Array;
   subtype LockablePaintable_Access_Array_Access_Array is org.allbinary.graphics.form.LockablePaintable_Package_References.LockablePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : LockablePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.LockablePaintable_Package_References."=";
   subtype LockablePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.form.LockablePaintable_Package_References.LockablePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockablePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.LockablePaintable_Package_References."=";
   function Java_Box (Value : LockablePaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.LockablePaintable_Package_References.Java_Box;
   function Java_Unbox_LockablePaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return LockablePaintable_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.LockablePaintable_Package_References.Java_Unbox_LockablePaintable_Access_Array_Access_Array;

   type LockablePaintable is new ItemPaintable with record
      animation : Animation_Access;
      lockedIndex : Integer;
   end record;

   procedure Initialize (This : in out LockablePaintable'Class; lockedIndex : Integer);
   function Create (lockedIndex : Integer) return LockablePaintable_Access;
   procedure paint (This : in out LockablePaintable; graphics_Param : access Graphics_Package.Graphics'Class; currentIndex : Integer; x : Integer; y : Integer);
   function getLockedIndex (This : in out LockablePaintable) return Integer;
   function getAnimation (This : in out LockablePaintable) return Animation_Access;

end org.allbinary.graphics.form.LockablePaintable_Package;


