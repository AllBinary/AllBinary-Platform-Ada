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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ShowVirtualKeyboardRunnable is tagged;
   type ShowVirtualKeyboardRunnable_Access is access all ShowVirtualKeyboardRunnable'Class;
   type ShowVirtualKeyboardRunnable_Access_Array is array (Natural range <>) of ShowVirtualKeyboardRunnable_Access;
   type ShowVirtualKeyboardRunnable_Access_Array_Access is access all ShowVirtualKeyboardRunnable_Access_Array;
   type ShowVirtualKeyboardRunnable_Access_Array_Access_Array is array (Natural range <>) of ShowVirtualKeyboardRunnable_Access_Array_Access;
   type ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access is access all ShowVirtualKeyboardRunnable_Access_Array_Access_Array;

   type ShowVirtualKeyboardRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      activity : Activity_Access;
   end record;

   procedure Initialize (This : in out ShowVirtualKeyboardRunnable'Class; activity_Param : access Activity_Package.Activity'Class);
   function Create (activity_Param : access Activity_Package.Activity'Class) return ShowVirtualKeyboardRunnable_Access;
   procedure run (This : in out ShowVirtualKeyboardRunnable);

end org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package;


