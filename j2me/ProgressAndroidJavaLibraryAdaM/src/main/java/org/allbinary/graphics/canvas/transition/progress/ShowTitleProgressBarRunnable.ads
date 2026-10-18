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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;

   type ShowTitleProgressBarRunnable is tagged;
   type ShowTitleProgressBarRunnable_Access is access all ShowTitleProgressBarRunnable'Class;
   type ShowTitleProgressBarRunnable_Access_Array is array (Natural range <>) of ShowTitleProgressBarRunnable_Access;
   type ShowTitleProgressBarRunnable_Access_Array_Access is access all ShowTitleProgressBarRunnable_Access_Array;
   type ShowTitleProgressBarRunnable_Access_Array_Access_Array is array (Natural range <>) of ShowTitleProgressBarRunnable_Access_Array_Access;
   type ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is access all ShowTitleProgressBarRunnable_Access_Array_Access_Array;

   type ShowTitleProgressBarRunnable is new ProgressRunnable with record
      logUtil : LogUtil_Access;
      FADE_IN_HALF : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class);
   function Create (midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ShowTitleProgressBarRunnable_Access;
   procedure run (This : in out ShowTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;


