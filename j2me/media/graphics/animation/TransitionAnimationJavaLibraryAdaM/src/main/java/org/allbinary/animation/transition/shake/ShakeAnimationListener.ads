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

limited with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
package org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References is
   type ShakeAnimationListener_Access is access all org.allbinary.animation.transition.shake.ShakeAnimationListener_Package.ShakeAnimationListener'Class;
   type ShakeAnimationListener_Access_Array is array (Natural range <>) of ShakeAnimationListener_Access;
   type ShakeAnimationListener_Access_Array_Access is access all ShakeAnimationListener_Access_Array;
   type ShakeAnimationListener_Access_Array_Access_Array is array (Natural range <>) of ShakeAnimationListener_Access_Array_Access;
   type ShakeAnimationListener_Access_Array_Access_Array_Access is access all ShakeAnimationListener_Access_Array_Access_Array;
end org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;

with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package_References;

package org.allbinary.animation.transition.shake.ShakeAnimationListener_Package is

   package Reference_Types is
   subtype ShakeEvent_Access is org.allbinary.animation.transition.shake.ShakeEvent_Package_References.ShakeEvent_Access;
   use type ShakeEvent_Access;
   subtype ShakeEvent_Access_Array is org.allbinary.animation.transition.shake.ShakeEvent_Package_References.ShakeEvent_Access_Array;
   use type ShakeEvent_Access_Array;
   subtype ShakeEvent_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeEvent_Package_References.ShakeEvent_Access_Array_Access;
   use type ShakeEvent_Access_Array_Access;
   subtype ShakeEvent_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeEvent_Package_References.ShakeEvent_Access_Array_Access_Array;
   use type ShakeEvent_Access_Array_Access_Array;
   subtype ShakeEvent_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeEvent_Package_References.ShakeEvent_Access_Array_Access_Array_Access;
   use type ShakeEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References."=";

   type ShakeAnimationListener is new Java_Object with null record;

   procedure Initialize (This : in out ShakeAnimationListener'Class);
   function Create return ShakeAnimationListener_Access;
   procedure onSmallShakeEvent (This : in out ShakeAnimationListener);
   procedure onMediumShakeEvent (This : in out ShakeAnimationListener);
   procedure onLargeShakeEvent (This : in out ShakeAnimationListener);
   procedure onShakeEvent (This : in out ShakeAnimationListener; shakeEvent_Param : access ShakeEvent_Package.ShakeEvent'Class);
   function getType (This : in out ShakeAnimationListener) return Integer;

end org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;


