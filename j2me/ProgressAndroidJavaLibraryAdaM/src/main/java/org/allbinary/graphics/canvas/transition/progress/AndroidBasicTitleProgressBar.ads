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
limited with org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package;
package org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References is
   type AndroidBasicTitleProgressBar_Access is access all org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package.AndroidBasicTitleProgressBar'Class;
   type AndroidBasicTitleProgressBar_Access_Array is array (Natural range <>) of AndroidBasicTitleProgressBar_Access;
   type AndroidBasicTitleProgressBar_Access_Array_Access is access all AndroidBasicTitleProgressBar_Access_Array;
   type AndroidBasicTitleProgressBar_Access_Array_Access_Array is array (Natural range <>) of AndroidBasicTitleProgressBar_Access_Array_Access;
   type AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access is access all AndroidBasicTitleProgressBar_Access_Array_Access_Array;
   type AndroidBasicTitleProgressBar_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidBasicTitleProgressBar_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidBasicTitleProgressBar_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidBasicTitleProgressBar_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidBasicTitleProgressBar_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidBasicTitleProgressBar_Access_Array_Access is (if Value /= null and then Value.all in AndroidBasicTitleProgressBar_Access_Array_Object'Class then AndroidBasicTitleProgressBar_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidBasicTitleProgressBar_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidBasicTitleProgressBar_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidBasicTitleProgressBar_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidBasicTitleProgressBar_Access_Array_Access_Array_Object'Class then AndroidBasicTitleProgressBar_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References;

with org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References;
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
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.thread.ARunnable_Package;
with org.allbinary.thread.ARunnable_Package_References;
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
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype ARunnable_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access;
   use type ARunnable_Access;
   subtype ARunnable_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array;
   use type ARunnable_Access_Array;
   subtype ARunnable_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access;
   use type ARunnable_Access_Array_Access;
   subtype ARunnable_Access_Array_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array;
   use type ARunnable_Access_Array_Access_Array;
   subtype ARunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array_Access;
   use type ARunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidBasicTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.AndroidBasicTitleProgressBar_Access;
   function "=" (Left, Right : AndroidBasicTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References."=";
   subtype AndroidBasicTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.AndroidBasicTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidBasicTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References."=";
   subtype AndroidBasicTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.AndroidBasicTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidBasicTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References."=";
   function Java_Box (Value : AndroidBasicTitleProgressBar_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.Java_Box;
   function Java_Unbox_AndroidBasicTitleProgressBar_Access_Array (Value : access Java_Object'Class) return AndroidBasicTitleProgressBar_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.Java_Unbox_AndroidBasicTitleProgressBar_Access_Array;
   subtype AndroidBasicTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.AndroidBasicTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidBasicTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References."=";
   subtype AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References."=";
   function Java_Box (Value : AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.Java_Box;
   function Java_Unbox_AndroidBasicTitleProgressBar_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidBasicTitleProgressBar_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package_References.Java_Unbox_AndroidBasicTitleProgressBar_Access_Array_Access_Array;

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


