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
limited with org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;
package org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References is
   type PreGameLockablePaintable_Access is access all org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package.PreGameLockablePaintable'Class;
   type PreGameLockablePaintable_Access_Array is array (Natural range <>) of PreGameLockablePaintable_Access;
   type PreGameLockablePaintable_Access_Array_Access is access all PreGameLockablePaintable_Access_Array;
   type PreGameLockablePaintable_Access_Array_Access_Array is array (Natural range <>) of PreGameLockablePaintable_Access_Array_Access;
   type PreGameLockablePaintable_Access_Array_Access_Array_Access is access all PreGameLockablePaintable_Access_Array_Access_Array;
   type PreGameLockablePaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameLockablePaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameLockablePaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameLockablePaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameLockablePaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameLockablePaintable_Access_Array_Access is (if Value /= null and then Value.all in PreGameLockablePaintable_Access_Array_Object'Class then PreGameLockablePaintable_Access_Array_Object'Class (Value.all).Value else null);
   type PreGameLockablePaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameLockablePaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameLockablePaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameLockablePaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameLockablePaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameLockablePaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreGameLockablePaintable_Access_Array_Access_Array_Object'Class then PreGameLockablePaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References;

with org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References;
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
with org.allbinary.graphics.form.LockablePaintable_Package; use org.allbinary.graphics.form.LockablePaintable_Package;
limited with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References;

package org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package LockablePaintable_Package renames Standard.org.allbinary.graphics.form.LockablePaintable_Package;
   package ScrollCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;
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
   subtype ScrollCurrentSelectionForm_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access;
   use type ScrollCurrentSelectionForm_Access;
   subtype ScrollCurrentSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array;
   use type ScrollCurrentSelectionForm_Access_Array;
   subtype ScrollCurrentSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access;
   use type ScrollCurrentSelectionForm_Access_Array_Access;
   subtype ScrollCurrentSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access_Array;
   use type ScrollCurrentSelectionForm_Access_Array_Access_Array;
   subtype ScrollCurrentSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollCurrentSelectionForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameLockablePaintable_Access is org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.PreGameLockablePaintable_Access;
   function "=" (Left, Right : PreGameLockablePaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References."=";
   subtype PreGameLockablePaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.PreGameLockablePaintable_Access_Array;
   function "=" (Left, Right : PreGameLockablePaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References."=";
   subtype PreGameLockablePaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.PreGameLockablePaintable_Access_Array_Access;
   function "=" (Left, Right : PreGameLockablePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References."=";
   function Java_Box (Value : PreGameLockablePaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.Java_Box;
   function Java_Unbox_PreGameLockablePaintable_Access_Array (Value : access Java_Object'Class) return PreGameLockablePaintable_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.Java_Unbox_PreGameLockablePaintable_Access_Array;
   subtype PreGameLockablePaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.PreGameLockablePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameLockablePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References."=";
   subtype PreGameLockablePaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.PreGameLockablePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameLockablePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References."=";
   function Java_Box (Value : PreGameLockablePaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.Java_Box;
   function Java_Unbox_PreGameLockablePaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return PreGameLockablePaintable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package_References.Java_Unbox_PreGameLockablePaintable_Access_Array_Access_Array;

   type PreGameLockablePaintable is new LockablePaintable with record
      halfWidth : Integer;
      paintableForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out PreGameLockablePaintable'Class; paintableForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class; lockedIndex : Integer);
   function Create (paintableForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class; lockedIndex : Integer) return PreGameLockablePaintable_Access;
   procedure paint (This : in out PreGameLockablePaintable; graphics_Param : access Graphics_Package.Graphics'Class; currentIndex : Integer; x : Integer; y : Integer);
   function getPaintableForm (This : in out PreGameLockablePaintable) return ScrollCurrentSelectionForm_Access;

end org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;


