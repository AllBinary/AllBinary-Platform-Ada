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
limited with org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package;
package org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References is
   type PreGameLockableFormPaintableFactory_Access is access all org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package.PreGameLockableFormPaintableFactory'Class;
   type PreGameLockableFormPaintableFactory_Access_Array is array (Natural range <>) of PreGameLockableFormPaintableFactory_Access;
   type PreGameLockableFormPaintableFactory_Access_Array_Access is access all PreGameLockableFormPaintableFactory_Access_Array;
   type PreGameLockableFormPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of PreGameLockableFormPaintableFactory_Access_Array_Access;
   type PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access is access all PreGameLockableFormPaintableFactory_Access_Array_Access_Array;
   type PreGameLockableFormPaintableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameLockableFormPaintableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameLockableFormPaintableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameLockableFormPaintableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameLockableFormPaintableFactory_Access_Array_Access is (if Value /= null and then Value.all in PreGameLockableFormPaintableFactory_Access_Array_Object'Class then PreGameLockableFormPaintableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Object'Class then PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References;

with org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
limited with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.PaintableForm_Package_References;

package org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package is

   package ItemPaintable_Package renames Standard.org.allbinary.graphics.form.ItemPaintable_Package;
   package ItemPaintableFactory_Package renames Standard.org.allbinary.graphics.form.ItemPaintableFactory_Package;
   package PaintableForm_Package renames Standard.org.allbinary.graphics.form.PaintableForm_Package;
   package Reference_Types is
   subtype PaintableForm_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access;
   use type PaintableForm_Access;
   subtype PaintableForm_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array;
   use type PaintableForm_Access_Array;
   subtype PaintableForm_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access;
   use type PaintableForm_Access_Array_Access;
   subtype PaintableForm_Access_Array_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array;
   use type PaintableForm_Access_Array_Access_Array;
   subtype PaintableForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array_Access;
   use type PaintableForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameLockableFormPaintableFactory_Access is org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.PreGameLockableFormPaintableFactory_Access;
   function "=" (Left, Right : PreGameLockableFormPaintableFactory_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References."=";
   subtype PreGameLockableFormPaintableFactory_Access_Array is org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.PreGameLockableFormPaintableFactory_Access_Array;
   function "=" (Left, Right : PreGameLockableFormPaintableFactory_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References."=";
   subtype PreGameLockableFormPaintableFactory_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.PreGameLockableFormPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : PreGameLockableFormPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References."=";
   function Java_Box (Value : PreGameLockableFormPaintableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array (Value : access Java_Object'Class) return PreGameLockableFormPaintableFactory_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array;
   subtype PreGameLockableFormPaintableFactory_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.PreGameLockableFormPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameLockableFormPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References."=";
   subtype PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References."=";
   function Java_Box (Value : PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PreGameLockableFormPaintableFactory_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package_References.Java_Unbox_PreGameLockableFormPaintableFactory_Access_Array_Access_Array;

   type PreGameLockableFormPaintableFactory is new ItemPaintableFactory with record
      lockedIndex : Integer;
   end record;

   procedure Initialize (This : in out PreGameLockableFormPaintableFactory'Class; lockedIndex : Integer);
   function Create (lockedIndex : Integer) return PreGameLockableFormPaintableFactory_Access;
   function getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class);

end org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package;


