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
with org.allbinary.animation.transition.TransistionTypes_Package; use org.allbinary.animation.transition.TransistionTypes_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;

package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   package TransistionTypes_Package renames org.allbinary.animation.transition.TransistionTypes_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Activity_Package renames android.app.Activity_Package;

   type DismissTitleProgressBarRunnable is tagged;
   type DismissTitleProgressBarRunnable_Access is access all DismissTitleProgressBarRunnable'Class;
   type DismissTitleProgressBarRunnable_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array;

   type DismissTitleProgressBarRunnable is new ProgressRunnable with record
      logUtil : LogUtil_Access;
      ZOOM_OUT_AND_IN : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access);
   function Create (midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) return DismissTitleProgressBarRunnable_Access;
   procedure run (This : in out DismissTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


