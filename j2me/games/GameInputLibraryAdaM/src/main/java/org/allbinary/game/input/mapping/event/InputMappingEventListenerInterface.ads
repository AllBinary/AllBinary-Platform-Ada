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
limited with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
package org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References is
   type InputMappingEventListenerInterface_Access is access all org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package.InputMappingEventListenerInterface'Class;
   type InputMappingEventListenerInterface_Access_Array is array (Natural range <>) of InputMappingEventListenerInterface_Access;
   type InputMappingEventListenerInterface_Access_Array_Access is access all InputMappingEventListenerInterface_Access_Array;
   type InputMappingEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of InputMappingEventListenerInterface_Access_Array_Access;
   type InputMappingEventListenerInterface_Access_Array_Access_Array_Access is access all InputMappingEventListenerInterface_Access_Array_Access_Array;
   type InputMappingEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputMappingEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InputMappingEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputMappingEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputMappingEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputMappingEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in InputMappingEventListenerInterface_Access_Array_Object'Class then InputMappingEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InputMappingEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputMappingEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputMappingEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputMappingEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputMappingEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputMappingEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputMappingEventListenerInterface_Access_Array_Access_Array_Object'Class then InputMappingEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References;

with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References;

package org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type InputMappingEventListenerInterface is interface and EventListenerInterface;
   subtype InputMappingEventListenerInterface_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   function Java_Box (Value : InputMappingEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_InputMappingEventListenerInterface_Access_Array (Value : access Java_Object'Class) return InputMappingEventListenerInterface_Access_Array_Access renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.Java_Unbox_InputMappingEventListenerInterface_Access_Array;
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   function Java_Box (Value : InputMappingEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_InputMappingEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InputMappingEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.Java_Unbox_InputMappingEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InputMappingEventListenerInterface (Value : InputMappingEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onInputMappingEvent (This : in out InputMappingEventListenerInterface; inputMappingEvent_Param : access InputMappingEvent_Package.InputMappingEvent'Class) is abstract;

end org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;


