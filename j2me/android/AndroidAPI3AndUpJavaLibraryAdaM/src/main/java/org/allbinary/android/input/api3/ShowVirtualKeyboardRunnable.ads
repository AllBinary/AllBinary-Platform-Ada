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
with android.view.View_Package; use android.view.View_Package;
with android.view.inputmethod.InputMethodManager_Package; use android.view.inputmethod.InputMethodManager_Package;
with org.allbinary.android.activity.ViewCompositeInterface_Package; use org.allbinary.android.activity.ViewCompositeInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.android.input.api3.Runnable_Package; use org.allbinary.android.input.api3.Runnable_Package;

package org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package is

   package Activity_Package renames android.app.Activity_Package;
   package Context_Package renames android.content.Context_Package;
   package View_Package renames android.view.View_Package;
   package InputMethodManager_Package renames android.view.inputmethod.InputMethodManager_Package;
   package ViewCompositeInterface_Package renames org.allbinary.android.activity.ViewCompositeInterface_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ShowVirtualKeyboardRunnable is tagged;
   type ShowVirtualKeyboardRunnable_Access is access all ShowVirtualKeyboardRunnable'Class;
   type ShowVirtualKeyboardRunnable_Access_Array is array (Natural range <>) of ShowVirtualKeyboardRunnable_Access;
   type ShowVirtualKeyboardRunnable_Access_Array_Access is access all ShowVirtualKeyboardRunnable_Access_Array;

   type ShowVirtualKeyboardRunnable is new Runnable with record
      logUtil : LogUtil_Access;
      activity : Activity_Access;
   end record;

   procedure Initialize (This : in out ShowVirtualKeyboardRunnable'Class; activity : Activity_Access);
   function Create (activity : Activity_Access) return ShowVirtualKeyboardRunnable_Access;
   procedure run (This : in out ShowVirtualKeyboardRunnable);

end org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package;


