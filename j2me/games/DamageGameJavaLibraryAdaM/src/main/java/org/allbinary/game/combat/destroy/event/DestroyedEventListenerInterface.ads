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

limited with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
package org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References is
   type DestroyedEventListenerInterface_Access is access all org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package.DestroyedEventListenerInterface'Class;
   type DestroyedEventListenerInterface_Access_Array is array (Natural range <>) of DestroyedEventListenerInterface_Access;
   type DestroyedEventListenerInterface_Access_Array_Access is access all DestroyedEventListenerInterface_Access_Array;
   type DestroyedEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of DestroyedEventListenerInterface_Access_Array_Access;
   type DestroyedEventListenerInterface_Access_Array_Access_Array_Access is access all DestroyedEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References;

with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;

package org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   use type DestroyedEvent_Access;
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   use type DestroyedEvent_Access_Array;
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access;
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   use type DestroyedEvent_Access_Array_Access_Array;
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DestroyedEventListenerInterface is interface and EventListenerInterface;
   subtype DestroyedEventListenerInterface_Access is org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References.DestroyedEventListenerInterface_Access;
   function "=" (Left, Right : DestroyedEventListenerInterface_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References."=";
   subtype DestroyedEventListenerInterface_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References.DestroyedEventListenerInterface_Access_Array;
   function "=" (Left, Right : DestroyedEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References."=";
   subtype DestroyedEventListenerInterface_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References.DestroyedEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : DestroyedEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References."=";
   subtype DestroyedEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References.DestroyedEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyedEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References."=";
   subtype DestroyedEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References.DestroyedEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyedEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_DestroyedEventListenerInterface (Value : DestroyedEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onDestroyed (This : in out DestroyedEventListenerInterface; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is abstract;

end org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;


