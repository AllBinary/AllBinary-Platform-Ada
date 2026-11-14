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
limited with org.allbinary.game.GameAdState_Package;
package org.allbinary.game.GameAdState_Package_References is
   type GameAdState_Access is access all org.allbinary.game.GameAdState_Package.GameAdState'Class;
   type GameAdState_Access_Array is array (Natural range <>) of GameAdState_Access;
   type GameAdState_Access_Array_Access is access all GameAdState_Access_Array;
   type GameAdState_Access_Array_Access_Array is array (Natural range <>) of GameAdState_Access_Array_Access;
   type GameAdState_Access_Array_Access_Array_Access is access all GameAdState_Access_Array_Access_Array;
   type GameAdState_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameAdState_Access_Array_Access;
   end record;
   function Java_Box (Value : GameAdState_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameAdState_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameAdState_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameAdState_Access_Array_Access is (if Value /= null and then Value.all in GameAdState_Access_Array_Object'Class then GameAdState_Access_Array_Object'Class (Value.all).Value else null);
   type GameAdState_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameAdState_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameAdState_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameAdState_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameAdState_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameAdState_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameAdState_Access_Array_Access_Array_Object'Class then GameAdState_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.GameAdState_Package_References;

with org.allbinary.game.GameAdState_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.advertisement.GameAdStateBase_Package; use org.allbinary.business.advertisement.GameAdStateBase_Package;
limited with org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package_References;
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.GameAdState_Package is

   package GameAdStateBase_Package renames Standard.org.allbinary.business.advertisement.GameAdStateBase_Package;
   package AdConfiguration_Package renames Standard.org.allbinary.business.advertisement.AdConfiguration_Package;
   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package VirtualKeyboardEventListenerInterface_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype AdConfiguration_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access;
   use type AdConfiguration_Access;
   subtype AdConfiguration_Access_Array is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array;
   use type AdConfiguration_Access_Array;
   subtype AdConfiguration_Access_Array_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access;
   use type AdConfiguration_Access_Array_Access;
   subtype AdConfiguration_Access_Array_Access_Array is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access_Array;
   use type AdConfiguration_Access_Array_Access_Array;
   subtype AdConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access_Array_Access;
   use type AdConfiguration_Access_Array_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access;
   use type VirtualKeyboardEvent_Access;
   subtype VirtualKeyboardEvent_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array;
   use type VirtualKeyboardEvent_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array;
   use type VirtualKeyboardEvent_Access_Array_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameAdState_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access;
   function "=" (Left, Right : GameAdState_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array;
   function "=" (Left, Right : GameAdState_Access_Array) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access;
   function "=" (Left, Right : GameAdState_Access_Array_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   function Java_Box (Value : GameAdState_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameAdState_Package_References.Java_Box;
   function Java_Unbox_GameAdState_Access_Array (Value : access Java_Object'Class) return GameAdState_Access_Array_Access renames org.allbinary.game.GameAdState_Package_References.Java_Unbox_GameAdState_Access_Array;
   subtype GameAdState_Access_Array_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   subtype GameAdState_Access_Array_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameAdState_Package_References."=";
   function Java_Box (Value : GameAdState_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameAdState_Package_References.Java_Box;
   function Java_Unbox_GameAdState_Access_Array_Access_Array (Value : access Java_Object'Class) return GameAdState_Access_Array_Access_Array_Access renames org.allbinary.game.GameAdState_Package_References.Java_Unbox_GameAdState_Access_Array_Access_Array;

   type GameAdState is new GameAdStateBase and VirtualKeyboardEventListenerInterface with null record;

   procedure Initialize (This : in out GameAdState'Class; adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class);
   function Create (adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class) return GameAdState_Access;
   procedure onVirtualKeyboardEvent (This : in out GameAdState; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class);
   procedure onEvent (This : in out GameAdState; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);

end org.allbinary.game.GameAdState_Package;


