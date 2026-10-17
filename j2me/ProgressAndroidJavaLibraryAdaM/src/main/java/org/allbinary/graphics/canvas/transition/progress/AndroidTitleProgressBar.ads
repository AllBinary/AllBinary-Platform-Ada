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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AndroidTitleProgressBar is tagged;
   type AndroidTitleProgressBar_Access is access all AndroidTitleProgressBar'Class;
   type AndroidTitleProgressBar_Access_Array is array (Natural range <>) of AndroidTitleProgressBar_Access;
   type AndroidTitleProgressBar_Access_Array_Access is access all AndroidTitleProgressBar_Access_Array;

   type AndroidTitleProgressBar is new ProgressCanvas with record
      showTitleProgressBarRunnable : ShowTitleProgressBarRunnable_Access;
      dismissTitleProgressBarRunnable : DismissTitleProgressBarRunnable_Access;
      progressDialogPortionSetProgressRunnable : TitleProgressBarPortionSetProgressRunnable_Access;
      progressDialogSetProgressRunnable : TitleProgressBarSetProgressRunnable_Access;
      progressActivity : ProgressActivityInterface_Access;
      portion : Integer;
   end record;

   procedure Initialize (This : in out AndroidTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return AndroidTitleProgressBar_Access;
   procedure init (This : in out AndroidTitleProgressBar; activity_Param : access ProgressActivityInterface'Class);
   function isInitialized (This : in out AndroidTitleProgressBar) return Boolean;
   procedure start (This : in out AndroidTitleProgressBar);
   procedure end_Id (This : in out AndroidTitleProgressBar);
   procedure addPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer);
   procedure addNormalPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String);
   procedure setValue (This : in out AndroidTitleProgressBar; value : Integer);
   procedure waitUntilDisplayed (This : in out AndroidTitleProgressBar);
   procedure paint (This : in out AndroidTitleProgressBar; graphics_Param : access Graphics'Class);

end org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TitleProgressBarSetProgressRunnable is tagged;
   type TitleProgressBarSetProgressRunnable_Access is access all TitleProgressBarSetProgressRunnable'Class;
   type TitleProgressBarSetProgressRunnable_Access_Array is array (Natural range <>) of TitleProgressBarSetProgressRunnable_Access;
   type TitleProgressBarSetProgressRunnable_Access_Array_Access is access all TitleProgressBarSetProgressRunnable_Access_Array;

   type TitleProgressBarSetProgressRunnable is new Runnable with record
      androidTitleProgressBar : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out TitleProgressBarSetProgressRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return TitleProgressBarSetProgressRunnable_Access;
   procedure run (This : in out TitleProgressBarSetProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TitleProgressBarPortionSetProgressRunnable is tagged;
   type TitleProgressBarPortionSetProgressRunnable_Access is access all TitleProgressBarPortionSetProgressRunnable'Class;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array is array (Natural range <>) of TitleProgressBarPortionSetProgressRunnable_Access;
   type TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is access all TitleProgressBarPortionSetProgressRunnable_Access_Array;

   type TitleProgressBarPortionSetProgressRunnable is new Runnable with record
      androidTitleProgressBar : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out TitleProgressBarPortionSetProgressRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return TitleProgressBarPortionSetProgressRunnable_Access;
   procedure run (This : in out TitleProgressBarPortionSetProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ShowTitleProgressBarRunnable is tagged;
   type ShowTitleProgressBarRunnable_Access is access all ShowTitleProgressBarRunnable'Class;
   type ShowTitleProgressBarRunnable_Access_Array is array (Natural range <>) of ShowTitleProgressBarRunnable_Access;
   type ShowTitleProgressBarRunnable_Access_Array_Access is access all ShowTitleProgressBarRunnable_Access_Array;

   type ShowTitleProgressBarRunnable is new Runnable with record
      androidTitleProgressBar : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return ShowTitleProgressBarRunnable_Access;
   procedure run (This : in out ShowTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package ProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.ProgressActivityInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DismissTitleProgressBarRunnable is tagged;
   type DismissTitleProgressBarRunnable_Access is access all DismissTitleProgressBarRunnable'Class;
   type DismissTitleProgressBarRunnable_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array;

   type DismissTitleProgressBarRunnable is new Runnable with record
      androidTitleProgressBar : AndroidTitleProgressBar_Access;
   end record;

   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class);
   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return DismissTitleProgressBarRunnable_Access;
   procedure run (This : in out DismissTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


