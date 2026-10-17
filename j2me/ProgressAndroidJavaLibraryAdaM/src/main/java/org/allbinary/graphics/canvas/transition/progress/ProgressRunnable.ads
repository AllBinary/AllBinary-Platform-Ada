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
with org.allbinary.android.activity.MidletActivityBase_Package; use org.allbinary.android.activity.MidletActivityBase_Package;
with org.allbinary.android.activity.SimpleProgressActivityInterface_Package; use org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package MidletActivityBase_Package renames Standard.org.allbinary.android.activity.MidletActivityBase_Package;
   package SimpleProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;

   type ProgressRunnable is tagged;
   type ProgressRunnable_Access is access all ProgressRunnable'Class;
   type ProgressRunnable_Access_Array is array (Natural range <>) of ProgressRunnable_Access;
   type ProgressRunnable_Access_Array_Access is access all ProgressRunnable_Access_Array;

   type ProgressRunnable is new ARunnable with record
      midletActivity : SimpleProgressActivityInterface_Access;
      progressCanvas : ProgressCanvas_Access;
   end record;

   procedure Initialize (This : in out ProgressRunnable'Class; midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access);
   function Create (midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) return ProgressRunnable_Access;
   procedure run (This : in out ProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;


