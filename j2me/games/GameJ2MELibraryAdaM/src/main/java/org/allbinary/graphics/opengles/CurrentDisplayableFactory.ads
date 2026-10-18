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
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package GameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.GameRunnable_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CurrentDisplayableFactory is tagged;
   type CurrentDisplayableFactory_Access is access all CurrentDisplayableFactory'Class;
   type CurrentDisplayableFactory_Access_Array is array (Natural range <>) of CurrentDisplayableFactory_Access;
   type CurrentDisplayableFactory_Access_Array_Access is access all CurrentDisplayableFactory_Access_Array;
   type CurrentDisplayableFactory_Access_Array_Access_Array is array (Natural range <>) of CurrentDisplayableFactory_Access_Array_Access;
   type CurrentDisplayableFactory_Access_Array_Access_Array_Access is access all CurrentDisplayableFactory_Access_Array_Access_Array;

   type CurrentDisplayableFactory is new Java_Object with record
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      stringUtil : StringUtil_Access;
      SET_DISPLAYABLE : Unbounded_String;
      SET_RUNNABLE : Unbounded_String;
      CLEAR_RUNNABLE : Unbounded_String;
      SET_USED_RUNNABLE : Unbounded_String;
      RUNNABLE : Unbounded_String;
      RUNNABLE_WAS_ALREADY_IN_USE : Unbounded_String;
      DEFAULT_CHILD_NAME_LIST : BasicArrayList_Access;
      displayable : Displayable_Access;
      openGlReadydisplayable : Displayable_Access;
      runnable_Case : GameRunnable_Access;
      usedRunnable : GameRunnable_Access;
   end record;
   instance : CurrentDisplayableFactory_Access;

   procedure Initialize (This : in out CurrentDisplayableFactory'Class);
   function Create return CurrentDisplayableFactory_Access;
   function getInstance return CurrentDisplayableFactory_Access;
   procedure setMyCanvas (This : in out CurrentDisplayableFactory; displayable_Param : access MyCanvas_Package.MyCanvas'Class);
   procedure setDisplayable (This : in out CurrentDisplayableFactory; displayable_Param : access Displayable_Package.Displayable'Class);
   procedure setOpenGlReadydisplayable (This : in out CurrentDisplayableFactory; openGlReadydisplayable_Param : access Displayable_Package.Displayable'Class);
   function getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   procedure setRunnable (This : in out CurrentDisplayableFactory; runnable_Param : access GameRunnable_Package.GameRunnable'Class);
   procedure clearRunnable (This : in out CurrentDisplayableFactory);
   procedure update (This : in out CurrentDisplayableFactory);
   function getDisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   function getUsedRunnable (This : in out CurrentDisplayableFactory) return GameRunnable_Access;
   procedure setUsedRunnable (This : in out CurrentDisplayableFactory; usedRunnable_Param : access GameRunnable_Package.GameRunnable'Class);

end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;


