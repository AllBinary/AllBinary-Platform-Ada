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

limited with org.allbinary.animation.transition.shake.ShakeEventFactory_Package;
package org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References is
   type ShakeEventFactory_Access is access all org.allbinary.animation.transition.shake.ShakeEventFactory_Package.ShakeEventFactory'Class;
   type ShakeEventFactory_Access_Array is array (Natural range <>) of ShakeEventFactory_Access;
   type ShakeEventFactory_Access_Array_Access is access all ShakeEventFactory_Access_Array;
   type ShakeEventFactory_Access_Array_Access_Array is array (Natural range <>) of ShakeEventFactory_Access_Array_Access;
   type ShakeEventFactory_Access_Array_Access_Array_Access is access all ShakeEventFactory_Access_Array_Access_Array;
end org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References;

with org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References;
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

package org.allbinary.animation.transition.shake.ShakeEventFactory_Package is

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


   subtype ShakeEventFactory_Access is org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References.ShakeEventFactory_Access;
   function "=" (Left, Right : ShakeEventFactory_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References."=";
   subtype ShakeEventFactory_Access_Array is org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References.ShakeEventFactory_Access_Array;
   function "=" (Left, Right : ShakeEventFactory_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References."=";
   subtype ShakeEventFactory_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References.ShakeEventFactory_Access_Array_Access;
   function "=" (Left, Right : ShakeEventFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References."=";
   subtype ShakeEventFactory_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References.ShakeEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShakeEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References."=";
   subtype ShakeEventFactory_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References.ShakeEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShakeEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.transition.shake.ShakeEventFactory_Package_References."=";

   type ShakeEventFactory is new Java_Object with record
      MICRO : ShakeEvent_Access;
      SMALL : ShakeEvent_Access;
      MEDIUM : ShakeEvent_Access;
      LARGE : ShakeEvent_Access;
   end record;
   instance : ShakeEventFactory_Access;

   procedure Initialize (This : in out ShakeEventFactory'Class);
   function Create return ShakeEventFactory_Access;
   function getInstance return ShakeEventFactory_Access;
   procedure init (This : in out ShakeEventFactory);

end org.allbinary.animation.transition.shake.ShakeEventFactory_Package;


