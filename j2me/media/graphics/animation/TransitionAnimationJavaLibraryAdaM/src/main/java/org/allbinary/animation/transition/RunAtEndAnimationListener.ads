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
with org.allbinary.animation.transition.AnimationListenerInterface_Package; use org.allbinary.animation.transition.AnimationListenerInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.animation.transition.RunAtEndAnimationListener_Package is


   type RunAtEndAnimationListener is tagged;
   type RunAtEndAnimationListener_Access is access all RunAtEndAnimationListener'Class;
   type RunAtEndAnimationListener_Access_Array is array (Natural range <>) of RunAtEndAnimationListener_Access;
   type RunAtEndAnimationListener_Access_Array_Access is access all RunAtEndAnimationListener_Access_Array;
   type RunAtEndAnimationListener_Access_Array_Access_Array is array (Natural range <>) of RunAtEndAnimationListener_Access_Array_Access;
   type RunAtEndAnimationListener_Access_Array_Access_Array_Access is access all RunAtEndAnimationListener_Access_Array_Access_Array;

   type RunAtEndAnimationListener is new Java_Object and AnimationListenerInterface with record
      runnable : Runnable_Access;
   end record;

   procedure Initialize (This : in out RunAtEndAnimationListener'Class; runnable_Param : access Runnable_Package.Runnable'Class);
   function Create (runnable_Param : access Runnable_Package.Runnable'Class) return RunAtEndAnimationListener_Access;
   procedure onPlatformAnimationStart (This : in out RunAtEndAnimationListener);
   procedure onPlatformAnimationEnd (This : in out RunAtEndAnimationListener);
   procedure onPlatformAnimationRepeat (This : in out RunAtEndAnimationListener);

end org.allbinary.animation.transition.RunAtEndAnimationListener_Package;


