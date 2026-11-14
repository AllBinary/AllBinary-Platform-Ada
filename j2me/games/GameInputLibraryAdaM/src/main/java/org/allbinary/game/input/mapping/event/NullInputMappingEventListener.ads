-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;
package org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References is
   type NullInputMappingEventListener_Access is access all org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package.NullInputMappingEventListener'Class;
   type NullInputMappingEventListener_Access_Array is array (Natural range <>) of NullInputMappingEventListener_Access;
   type NullInputMappingEventListener_Access_Array_Access is access all NullInputMappingEventListener_Access_Array;
   type NullInputMappingEventListener_Access_Array_Access_Array is array (Natural range <>) of NullInputMappingEventListener_Access_Array_Access;
   type NullInputMappingEventListener_Access_Array_Access_Array_Access is access all NullInputMappingEventListener_Access_Array_Access_Array;
   type NullInputMappingEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInputMappingEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInputMappingEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInputMappingEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInputMappingEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInputMappingEventListener_Access_Array_Access is (if Value /= null and then Value.all in NullInputMappingEventListener_Access_Array_Object'Class then NullInputMappingEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type NullInputMappingEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInputMappingEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInputMappingEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInputMappingEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInputMappingEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInputMappingEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullInputMappingEventListener_Access_Array_Access_Array_Object'Class then NullInputMappingEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References;

with org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
limited with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References;

package org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype NullInputMappingEventListener_Access is org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.NullInputMappingEventListener_Access;
   function "=" (Left, Right : NullInputMappingEventListener_Access) return Boolean renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References."=";
   subtype NullInputMappingEventListener_Access_Array is org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.NullInputMappingEventListener_Access_Array;
   function "=" (Left, Right : NullInputMappingEventListener_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References."=";
   subtype NullInputMappingEventListener_Access_Array_Access is org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.NullInputMappingEventListener_Access_Array_Access;
   function "=" (Left, Right : NullInputMappingEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References."=";
   function Java_Box (Value : NullInputMappingEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.Java_Box;
   function Java_Unbox_NullInputMappingEventListener_Access_Array (Value : access Java_Object'Class) return NullInputMappingEventListener_Access_Array_Access renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.Java_Unbox_NullInputMappingEventListener_Access_Array;
   subtype NullInputMappingEventListener_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.NullInputMappingEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : NullInputMappingEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References."=";
   subtype NullInputMappingEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.NullInputMappingEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullInputMappingEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References."=";
   function Java_Box (Value : NullInputMappingEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.Java_Box;
   function Java_Unbox_NullInputMappingEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return NullInputMappingEventListener_Access_Array_Access_Array_Access renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package_References.Java_Unbox_NullInputMappingEventListener_Access_Array_Access_Array;

   type NullInputMappingEventListener is new Java_Object and InputMappingEventListenerInterface with null record;
   NULL_INPUT_MAPPING_EVENT_LISTENER : NullInputMappingEventListener_Access;

   procedure Initialize (This : in out NullInputMappingEventListener'Class);
   function Create return NullInputMappingEventListener_Access;
   procedure onInputMappingEvent (This : in out NullInputMappingEventListener; inputMappingEvent_Param : access InputMappingEvent_Package.InputMappingEvent'Class);
   procedure onEvent (This : in out NullInputMappingEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);

end org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;


