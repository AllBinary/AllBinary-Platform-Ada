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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PopupCommandFormInputProcessor is tagged;
   type PopupCommandFormInputProcessor_Access is access all PopupCommandFormInputProcessor'Class;
   type PopupCommandFormInputProcessor_Access_Array is array (Natural range <>) of PopupCommandFormInputProcessor_Access;
   type PopupCommandFormInputProcessor_Access_Array_Access is access all PopupCommandFormInputProcessor_Access_Array;
   type PopupCommandFormInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PopupCommandFormInputProcessor_Access_Array_Access;
   type PopupCommandFormInputProcessor_Access_Array_Access_Array_Access is access all PopupCommandFormInputProcessor_Access_Array_Access_Array;

   type PopupCommandFormInputProcessor is new CommandFormInputProcessor with null record;

   procedure Initialize (This : in out PopupCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class) return PopupCommandFormInputProcessor_Access;
   function processInput (This : in out PopupCommandFormInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out PopupCommandFormInputProcessor; key : Integer);
   procedure processMotionInput (This : in out PopupCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package;


