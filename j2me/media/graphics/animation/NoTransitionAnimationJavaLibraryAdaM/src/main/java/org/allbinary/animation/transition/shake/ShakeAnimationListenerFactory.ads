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

limited with org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
package org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References is
   type ShakeAnimationListenerFactory_Access is access all org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package.ShakeAnimationListenerFactory'Class;
   type ShakeAnimationListenerFactory_Access_Array is array (Natural range <>) of ShakeAnimationListenerFactory_Access;
   type ShakeAnimationListenerFactory_Access_Array_Access is access all ShakeAnimationListenerFactory_Access_Array;
   type ShakeAnimationListenerFactory_Access_Array_Access_Array is array (Natural range <>) of ShakeAnimationListenerFactory_Access_Array_Access;
   type ShakeAnimationListenerFactory_Access_Array_Access_Array_Access is access all ShakeAnimationListenerFactory_Access_Array_Access_Array;
end org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References;

with org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;

package org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package is

   package Reference_Types is
   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   use type ShakeAnimationListener_Access;
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   use type ShakeAnimationListener_Access_Array;
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   use type ShakeAnimationListener_Access_Array_Access;
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   use type ShakeAnimationListener_Access_Array_Access_Array;
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   use type ShakeAnimationListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShakeAnimationListenerFactory_Access is org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References.ShakeAnimationListenerFactory_Access;
   function "=" (Left, Right : ShakeAnimationListenerFactory_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References."=";
   subtype ShakeAnimationListenerFactory_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References.ShakeAnimationListenerFactory_Access_Array;
   function "=" (Left, Right : ShakeAnimationListenerFactory_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References."=";
   subtype ShakeAnimationListenerFactory_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References.ShakeAnimationListenerFactory_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListenerFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References."=";
   subtype ShakeAnimationListenerFactory_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References.ShakeAnimationListenerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeAnimationListenerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References."=";
   subtype ShakeAnimationListenerFactory_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References.ShakeAnimationListenerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeAnimationListenerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package_References."=";

   type ShakeAnimationListenerFactory is new Java_Object with null record;

   procedure Initialize (This : in out ShakeAnimationListenerFactory'Class);
   function Create return ShakeAnimationListenerFactory_Access;
   function getInstance return ShakeAnimationListener_Access;

end org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;


