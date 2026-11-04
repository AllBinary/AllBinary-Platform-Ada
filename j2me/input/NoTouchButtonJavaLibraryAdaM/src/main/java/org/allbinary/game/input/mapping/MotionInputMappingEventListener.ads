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

limited with org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package;
package org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References is
   type MotionInputMappingEventListener_Access is access all org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package.MotionInputMappingEventListener'Class;
   type MotionInputMappingEventListener_Access_Array is array (Natural range <>) of MotionInputMappingEventListener_Access;
   type MotionInputMappingEventListener_Access_Array_Access is access all MotionInputMappingEventListener_Access_Array;
   type MotionInputMappingEventListener_Access_Array_Access_Array is array (Natural range <>) of MotionInputMappingEventListener_Access_Array_Access;
   type MotionInputMappingEventListener_Access_Array_Access_Array_Access is access all MotionInputMappingEventListener_Access_Array_Access_Array;
end org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References;

with org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package is

   package InputMappingEvent_Package renames Standard.org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
   package InputMappingEventListenerInterface_Package renames Standard.org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype InputMappingEvent_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access;
   use type InputMappingEvent_Access;
   subtype InputMappingEvent_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array;
   use type InputMappingEvent_Access_Array;
   subtype InputMappingEvent_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access;
   use type InputMappingEvent_Access_Array_Access;
   subtype InputMappingEvent_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array;
   use type InputMappingEvent_Access_Array_Access_Array;
   subtype InputMappingEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array_Access;
   use type InputMappingEvent_Access_Array_Access_Array_Access;
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


   subtype MotionInputMappingEventListener_Access is org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References.MotionInputMappingEventListener_Access;
   function "=" (Left, Right : MotionInputMappingEventListener_Access) return Boolean renames org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References."=";
   subtype MotionInputMappingEventListener_Access_Array is org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References.MotionInputMappingEventListener_Access_Array;
   function "=" (Left, Right : MotionInputMappingEventListener_Access_Array) return Boolean renames org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References."=";
   subtype MotionInputMappingEventListener_Access_Array_Access is org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References.MotionInputMappingEventListener_Access_Array_Access;
   function "=" (Left, Right : MotionInputMappingEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References."=";
   subtype MotionInputMappingEventListener_Access_Array_Access_Array is org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References.MotionInputMappingEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : MotionInputMappingEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References."=";
   subtype MotionInputMappingEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References.MotionInputMappingEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionInputMappingEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package_References."=";

   type MotionInputMappingEventListener is new Java_Object and InputMappingEventListenerInterface with null record;

   procedure Initialize (This : in out MotionInputMappingEventListener'Class);
   function Create return MotionInputMappingEventListener_Access;
   procedure onEvent (This : in out MotionInputMappingEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onInputMappingEvent (This : in out MotionInputMappingEventListener; inputMappingEvent_Param : access InputMappingEvent_Package.InputMappingEvent'Class);

end org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package;


