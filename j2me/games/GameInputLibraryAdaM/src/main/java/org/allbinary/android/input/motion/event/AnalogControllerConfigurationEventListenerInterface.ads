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

limited with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;
package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References is
   type AnalogControllerConfigurationEventListenerInterface_Access is access all org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package.AnalogControllerConfigurationEventListenerInterface'Class;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventListenerInterface_Access;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access is access all AnalogControllerConfigurationEventListenerInterface_Access_Array;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventListenerInterface_Access_Array_Access;
   type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access is access all AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References;

with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References;

package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype AnalogControllerConfigurationEvent_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References.AnalogControllerConfigurationEvent_Access;
   use type AnalogControllerConfigurationEvent_Access;
   subtype AnalogControllerConfigurationEvent_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References.AnalogControllerConfigurationEvent_Access_Array;
   use type AnalogControllerConfigurationEvent_Access_Array;
   subtype AnalogControllerConfigurationEvent_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References.AnalogControllerConfigurationEvent_Access_Array_Access;
   use type AnalogControllerConfigurationEvent_Access_Array_Access;
   subtype AnalogControllerConfigurationEvent_Access_Array_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References.AnalogControllerConfigurationEvent_Access_Array_Access_Array;
   use type AnalogControllerConfigurationEvent_Access_Array_Access_Array;
   subtype AnalogControllerConfigurationEvent_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References.AnalogControllerConfigurationEvent_Access_Array_Access_Array_Access;
   use type AnalogControllerConfigurationEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AnalogControllerConfigurationEventListenerInterface is interface and EventListenerInterface;
   subtype AnalogControllerConfigurationEventListenerInterface_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_AnalogControllerConfigurationEventListenerInterface (Value : AnalogControllerConfigurationEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onAnalogControllerConfigurationEvent (This : in out AnalogControllerConfigurationEventListenerInterface; analogControllerConfigurationEvent_Param : access AnalogControllerConfigurationEvent_Package.AnalogControllerConfigurationEvent'Class) is abstract;

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;


