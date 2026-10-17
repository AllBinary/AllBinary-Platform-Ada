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
with android.app.Activity_Package; use android.app.Activity_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.os.IBinder_Package; use android.os.IBinder_Package;
with android.view.View_Package; use android.view.View_Package;
with android.view.inputmethod.InputMethodManager_Package; use android.view.inputmethod.InputMethodManager_Package;
with org.allbinary.android.activity.ViewCompositeInterface_Package; use org.allbinary.android.activity.ViewCompositeInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.android.input.api3.Runnable_Package; use org.allbinary.android.input.api3.Runnable_Package;

package org.allbinary.android.input.api3.HideVirtualKeyboardRunnable_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package IBinder_Package renames Standard.android.os.IBinder_Package;
   package View_Package renames Standard.android.view.View_Package;
   package InputMethodManager_Package renames Standard.android.view.inputmethod.InputMethodManager_Package;
   package ViewCompositeInterface_Package renames Standard.org.allbinary.android.activity.ViewCompositeInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type HideVirtualKeyboardRunnable is tagged;
   type HideVirtualKeyboardRunnable_Access is access all HideVirtualKeyboardRunnable'Class;
   type HideVirtualKeyboardRunnable_Access_Array is array (Natural range <>) of HideVirtualKeyboardRunnable_Access;
   type HideVirtualKeyboardRunnable_Access_Array_Access is access all HideVirtualKeyboardRunnable_Access_Array;

   type HideVirtualKeyboardRunnable is new Runnable with record
      logUtil : LogUtil_Access;
      activity : Activity_Access;
   end record;

   procedure Initialize (This : in out HideVirtualKeyboardRunnable'Class; activity : Activity_Access);
   function Create (activity : Activity_Access) return HideVirtualKeyboardRunnable_Access;
   procedure run (This : in out HideVirtualKeyboardRunnable);

end org.allbinary.android.input.api3.HideVirtualKeyboardRunnable_Package;


