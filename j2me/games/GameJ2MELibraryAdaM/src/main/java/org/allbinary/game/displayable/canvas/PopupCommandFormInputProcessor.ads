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
limited with org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package;
package org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References is
   type PopupCommandFormInputProcessor_Access is access all org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package.PopupCommandFormInputProcessor'Class;
   type PopupCommandFormInputProcessor_Access_Array is array (Natural range <>) of PopupCommandFormInputProcessor_Access;
   type PopupCommandFormInputProcessor_Access_Array_Access is access all PopupCommandFormInputProcessor_Access_Array;
   type PopupCommandFormInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PopupCommandFormInputProcessor_Access_Array_Access;
   type PopupCommandFormInputProcessor_Access_Array_Access_Array_Access is access all PopupCommandFormInputProcessor_Access_Array_Access_Array;
   type PopupCommandFormInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PopupCommandFormInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : PopupCommandFormInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PopupCommandFormInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PopupCommandFormInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PopupCommandFormInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in PopupCommandFormInputProcessor_Access_Array_Object'Class then PopupCommandFormInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type PopupCommandFormInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PopupCommandFormInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PopupCommandFormInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PopupCommandFormInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PopupCommandFormInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PopupCommandFormInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PopupCommandFormInputProcessor_Access_Array_Access_Array_Object'Class then PopupCommandFormInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
limited with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References;

package org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   use type MotionGestureEvent_Access;
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   use type MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   use type MotionGestureEvent_Access_Array_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype PopupMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access;
   use type PopupMenuInputProcessor_Access;
   subtype PopupMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array;
   use type PopupMenuInputProcessor_Access_Array;
   subtype PopupMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access;
   use type PopupMenuInputProcessor_Access_Array_Access;
   subtype PopupMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array;
   use type PopupMenuInputProcessor_Access_Array_Access_Array;
   subtype PopupMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array_Access;
   use type PopupMenuInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PopupCommandFormInputProcessor_Access is org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.PopupCommandFormInputProcessor_Access;
   function "=" (Left, Right : PopupCommandFormInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References."=";
   subtype PopupCommandFormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.PopupCommandFormInputProcessor_Access_Array;
   function "=" (Left, Right : PopupCommandFormInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References."=";
   subtype PopupCommandFormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.PopupCommandFormInputProcessor_Access_Array_Access;
   function "=" (Left, Right : PopupCommandFormInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References."=";
   function Java_Box (Value : PopupCommandFormInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.Java_Box;
   function Java_Unbox_PopupCommandFormInputProcessor_Access_Array (Value : access Java_Object'Class) return PopupCommandFormInputProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.Java_Unbox_PopupCommandFormInputProcessor_Access_Array;
   subtype PopupCommandFormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.PopupCommandFormInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : PopupCommandFormInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References."=";
   subtype PopupCommandFormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.PopupCommandFormInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PopupCommandFormInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References."=";
   function Java_Box (Value : PopupCommandFormInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.Java_Box;
   function Java_Unbox_PopupCommandFormInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return PopupCommandFormInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package_References.Java_Unbox_PopupCommandFormInputProcessor_Access_Array_Access_Array;

   type PopupCommandFormInputProcessor is new CommandFormInputProcessor with null record;

   procedure Initialize (This : in out PopupCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class) return PopupCommandFormInputProcessor_Access;
   function processInput (This : in out PopupCommandFormInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out PopupCommandFormInputProcessor; key : Integer);
   procedure processMotionInput (This : in out PopupCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package;


