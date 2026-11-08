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

limited with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
package org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References is
   type AndroidTitleProgressBar_Access is access all org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class;
   type AndroidTitleProgressBar_Access_Array is array (Natural range <>) of AndroidTitleProgressBar_Access;
   type AndroidTitleProgressBar_Access_Array_Access is access all AndroidTitleProgressBar_Access_Array;
   type AndroidTitleProgressBar_Access_Array_Access_Array is array (Natural range <>) of AndroidTitleProgressBar_Access_Array_Access;
   type AndroidTitleProgressBar_Access_Array_Access_Array_Access is access all AndroidTitleProgressBar_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;

with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
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
limited with org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;

package org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   use type ProgressActivityInterface_Access;
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   use type ProgressActivityInterface_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access;
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   use type ProgressActivityInterface_Access_Array_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access_Array_Access;
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
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   use type ShowTitleProgressBarRunnable_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   use type DismissTitleProgressBarRunnable_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   use type TitleProgressBarSetProgressRunnable_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";

   type AndroidTitleProgressBar is new ProgressCanvas with record
      showTitleProgressBarRunnable_Var : ShowTitleProgressBarRunnable_Access;
      dismissTitleProgressBarRunnable_Var : DismissTitleProgressBarRunnable_Access;
      progressDialogPortionSetProgressRunnable : TitleProgressBarPortionSetProgressRunnable_Access;
      progressDialogSetProgressRunnable : TitleProgressBarSetProgressRunnable_Access;
      progressActivity : ProgressActivityInterface_Access;
      portion : Integer;
   end record;

   procedure Initialize (This : in out AndroidTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return AndroidTitleProgressBar_Access;
   procedure init (This : in out AndroidTitleProgressBar; activity_Param : access ProgressActivityInterface_Package.ProgressActivityInterface'Class);
   function isInitialized (This : in out AndroidTitleProgressBar) return Boolean;
   procedure start (This : in out AndroidTitleProgressBar);
   procedure end_Id (This : in out AndroidTitleProgressBar);
   procedure addPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer);
   procedure addNormalPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String);
   procedure setValue (This : in out AndroidTitleProgressBar; value : Integer);
   procedure waitUntilDisplayed (This : in out AndroidTitleProgressBar);
   procedure paint (This : in out AndroidTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;

limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References is
   type TitleProgressBarSetProgressRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package.TitleProgressBarSetProgressRunnable'Class;
   type TitleProgressBarSetProgressRunnable_Access_Array is array (Natural range <>) of TitleProgressBarSetProgressRunnable_Access;
   type TitleProgressBarSetProgressRunnable_Access_Array_Access is access all TitleProgressBarSetProgressRunnable_Access_Array;
   type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is array (Natural range <>) of TitleProgressBarSetProgressRunnable_Access_Array_Access;
   type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is access all TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;
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
limited with org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
limited with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;

package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   use type ProgressActivityInterface_Access;
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   use type ProgressActivityInterface_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access;
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   use type ProgressActivityInterface_Access_Array_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access_Array_Access;
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   use type AndroidTitleProgressBar_Access;
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   use type AndroidTitleProgressBar_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   use type AndroidTitleProgressBar_Access_Array_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   use type ShowTitleProgressBarRunnable_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   use type DismissTitleProgressBarRunnable_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";

   type TitleProgressBarSetProgressRunnable is new Java_Object and Runnable with record
      androidTitleProgressBar_Var : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out TitleProgressBarSetProgressRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return TitleProgressBarSetProgressRunnable_Access;
   procedure run (This : in out TitleProgressBarSetProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;

limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References is
   type TitleProgressBarPortionSetProgressRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package.TitleProgressBarPortionSetProgressRunnable'Class;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array is array (Natural range <>) of TitleProgressBarPortionSetProgressRunnable_Access;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is access all TitleProgressBarPortionSetProgressRunnable_Access_Array;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is array (Natural range <>) of TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is access all TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
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
limited with org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
limited with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;

package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   use type ProgressActivityInterface_Access;
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   use type ProgressActivityInterface_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access;
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   use type ProgressActivityInterface_Access_Array_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access_Array_Access;
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   use type AndroidTitleProgressBar_Access;
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   use type AndroidTitleProgressBar_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   use type AndroidTitleProgressBar_Access_Array_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   use type ShowTitleProgressBarRunnable_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   use type DismissTitleProgressBarRunnable_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   use type TitleProgressBarSetProgressRunnable_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";

   type TitleProgressBarPortionSetProgressRunnable is new Java_Object and Runnable with record
      androidTitleProgressBar_Var : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out TitleProgressBarPortionSetProgressRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return TitleProgressBarPortionSetProgressRunnable_Access;
   procedure run (This : in out TitleProgressBarPortionSetProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;

limited with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References is
   type ShowTitleProgressBarRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package.ShowTitleProgressBarRunnable'Class;
   type ShowTitleProgressBarRunnable_Access_Array is array (Natural range <>) of ShowTitleProgressBarRunnable_Access;
   type ShowTitleProgressBarRunnable_Access_Array_Access is access all ShowTitleProgressBarRunnable_Access_Array;
   type ShowTitleProgressBarRunnable_Access_Array_Access_Array is array (Natural range <>) of ShowTitleProgressBarRunnable_Access_Array_Access;
   type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is access all ShowTitleProgressBarRunnable_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
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
limited with org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
limited with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;

package org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   use type ProgressActivityInterface_Access;
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   use type ProgressActivityInterface_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access;
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   use type ProgressActivityInterface_Access_Array_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access_Array_Access;
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   use type AndroidTitleProgressBar_Access;
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   use type AndroidTitleProgressBar_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   use type AndroidTitleProgressBar_Access_Array_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   use type DismissTitleProgressBarRunnable_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   use type TitleProgressBarSetProgressRunnable_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";

   type ShowTitleProgressBarRunnable is new Java_Object and Runnable with record
      androidTitleProgressBar_Var : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return ShowTitleProgressBarRunnable_Access;
   procedure run (This : in out ShowTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;

limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References is
   type DismissTitleProgressBarRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package.DismissTitleProgressBarRunnable'Class;
   type DismissTitleProgressBarRunnable_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array;
   type DismissTitleProgressBarRunnable_Access_Array_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access_Array_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
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
limited with org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
limited with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;

package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   use type ProgressActivityInterface_Access;
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   use type ProgressActivityInterface_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access;
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   use type ProgressActivityInterface_Access_Array_Access_Array;
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   use type ProgressActivityInterface_Access_Array_Access_Array_Access;
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   use type AndroidTitleProgressBar_Access;
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   use type AndroidTitleProgressBar_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   use type AndroidTitleProgressBar_Access_Array_Access_Array;
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   use type AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   use type ShowTitleProgressBarRunnable_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   use type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   use type TitleProgressBarSetProgressRunnable_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   use type TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";

   type DismissTitleProgressBarRunnable is new Java_Object and Runnable with record
      androidTitleProgressBar_Var : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return DismissTitleProgressBarRunnable_Access;
   procedure run (This : in out DismissTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


