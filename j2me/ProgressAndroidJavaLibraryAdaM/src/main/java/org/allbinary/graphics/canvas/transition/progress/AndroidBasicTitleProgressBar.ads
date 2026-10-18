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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package DisplayChangeEventListener_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;

   type AndroidBasicTitleProgressBar is tagged;
   type AndroidBasicTitleProgressBar_Access is access all AndroidBasicTitleProgressBar'Class;
   type AndroidBasicTitleProgressBar_Access_Array is array (Natural range <>) of AndroidBasicTitleProgressBar_Access;
   type AndroidBasicTitleProgressBar_Access_Array_Access is access all AndroidBasicTitleProgressBar_Access_Array;
   type AndroidBasicTitleProgressBar_Access_Array_Access_Array is array (Natural range <>) of AndroidBasicTitleProgressBar_Access_Array_Access;
   type AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access is access all AndroidBasicTitleProgressBar_Access_Array_Access_Array;

   type AndroidBasicTitleProgressBar is new ProgressCanvas and DisplayChangeEventListener with record
      showTitleProgressBarRunnable : ARunnable_Access;
      dismissTitleProgressBarRunnable : ARunnable_Access;
      titleProgressDialogPortionSetProgressRunnable : ARunnable_Access;
      titleProgressDialogSetProgressRunnable : ARunnable_Access;
      midletActivity : Activity_Access;
      portion : Integer;
      IMAGE : Image_Access_Array_Access;
      image_Case : Image_Access;
      animation : Animation_Access;
   end record;
   RESOURCE : Unbounded_String;
   background : Integer;

   procedure Initialize (This : in out AndroidBasicTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return AndroidBasicTitleProgressBar_Access;
   procedure init (This : in out AndroidBasicTitleProgressBar);
   procedure initActivity (This : in out AndroidBasicTitleProgressBar; activity_Param : access Activity_Package.Activity'Class);
   procedure updateCurrent (This : in out AndroidBasicTitleProgressBar);
   procedure onEvent (This : in out AndroidBasicTitleProgressBar; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onDisplayChangeEvent (This : in out AndroidBasicTitleProgressBar; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure loadProgressImages (This : in out AndroidBasicTitleProgressBar);
   function isInitialized (This : in out AndroidBasicTitleProgressBar) return Boolean;
   procedure start (This : in out AndroidBasicTitleProgressBar);
   procedure end_Id (This : in out AndroidBasicTitleProgressBar);
   procedure addEarlyPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer);
   procedure addPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer);
   procedure addNormalPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String);
   procedure setValue (This : in out AndroidBasicTitleProgressBar; value : Integer);
   procedure waitUntilDisplayed (This : in out AndroidBasicTitleProgressBar);
   procedure setImages (This : in out AndroidBasicTitleProgressBar; index : Integer; lastWidth : Integer; lastHeight : Integer);
   procedure initOpenGL (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class);
   function getImage (This : in out AndroidBasicTitleProgressBar; index : Integer) return Image_Access;
   procedure getImage (This : in out AndroidBasicTitleProgressBar; index : Integer);
   procedure paint2 (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setBackgroundResource (background : Integer);
   procedure setBackground (This : in out AndroidBasicTitleProgressBar; background : Boolean);
   procedure setPortion (This : in out AndroidBasicTitleProgressBar; portion : Integer);
   function getPortion (This : in out AndroidBasicTitleProgressBar) return Integer;

end org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package;


