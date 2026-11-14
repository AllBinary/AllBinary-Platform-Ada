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
limited with org.allbinary.animation.transition.RunAtEndAnimationListener_Package;
package org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References is
   type RunAtEndAnimationListener_Access is access all org.allbinary.animation.transition.RunAtEndAnimationListener_Package.RunAtEndAnimationListener'Class;
   type RunAtEndAnimationListener_Access_Array is array (Natural range <>) of RunAtEndAnimationListener_Access;
   type RunAtEndAnimationListener_Access_Array_Access is access all RunAtEndAnimationListener_Access_Array;
   type RunAtEndAnimationListener_Access_Array_Access_Array is array (Natural range <>) of RunAtEndAnimationListener_Access_Array_Access;
   type RunAtEndAnimationListener_Access_Array_Access_Array_Access is access all RunAtEndAnimationListener_Access_Array_Access_Array;
   type RunAtEndAnimationListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunAtEndAnimationListener_Access_Array_Access;
   end record;
   function Java_Box (Value : RunAtEndAnimationListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunAtEndAnimationListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunAtEndAnimationListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunAtEndAnimationListener_Access_Array_Access is (if Value /= null and then Value.all in RunAtEndAnimationListener_Access_Array_Object'Class then RunAtEndAnimationListener_Access_Array_Object'Class (Value.all).Value else null);
   type RunAtEndAnimationListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunAtEndAnimationListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RunAtEndAnimationListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunAtEndAnimationListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunAtEndAnimationListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunAtEndAnimationListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RunAtEndAnimationListener_Access_Array_Access_Array_Object'Class then RunAtEndAnimationListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References;

with org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References;
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

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RunAtEndAnimationListener_Access is org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.RunAtEndAnimationListener_Access;
   function "=" (Left, Right : RunAtEndAnimationListener_Access) return Boolean renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References."=";
   subtype RunAtEndAnimationListener_Access_Array is org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.RunAtEndAnimationListener_Access_Array;
   function "=" (Left, Right : RunAtEndAnimationListener_Access_Array) return Boolean renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References."=";
   subtype RunAtEndAnimationListener_Access_Array_Access is org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.RunAtEndAnimationListener_Access_Array_Access;
   function "=" (Left, Right : RunAtEndAnimationListener_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References."=";
   function Java_Box (Value : RunAtEndAnimationListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.Java_Box;
   function Java_Unbox_RunAtEndAnimationListener_Access_Array (Value : access Java_Object'Class) return RunAtEndAnimationListener_Access_Array_Access renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.Java_Unbox_RunAtEndAnimationListener_Access_Array;
   subtype RunAtEndAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.RunAtEndAnimationListener_Access_Array_Access_Array;
   function "=" (Left, Right : RunAtEndAnimationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References."=";
   subtype RunAtEndAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.RunAtEndAnimationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunAtEndAnimationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References."=";
   function Java_Box (Value : RunAtEndAnimationListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.Java_Box;
   function Java_Unbox_RunAtEndAnimationListener_Access_Array_Access_Array (Value : access Java_Object'Class) return RunAtEndAnimationListener_Access_Array_Access_Array_Access renames org.allbinary.animation.transition.RunAtEndAnimationListener_Package_References.Java_Unbox_RunAtEndAnimationListener_Access_Array_Access_Array;

   type RunAtEndAnimationListener is new Java_Object and AnimationListenerInterface with record
      runnable : Runnable_Access;
   end record;

   procedure Initialize (This : in out RunAtEndAnimationListener'Class; runnable_Param : access Runnable_Package.Runnable'Class);
   function Create (runnable_Param : access Runnable_Package.Runnable'Class) return RunAtEndAnimationListener_Access;
   procedure onPlatformAnimationStart (This : in out RunAtEndAnimationListener);
   procedure onPlatformAnimationEnd (This : in out RunAtEndAnimationListener);
   procedure onPlatformAnimationRepeat (This : in out RunAtEndAnimationListener);

end org.allbinary.animation.transition.RunAtEndAnimationListener_Package;


