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
limited with org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;
package org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References is
   type AnalogControllerConfigurationFactory_Access is access all org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package.AnalogControllerConfigurationFactory'Class;
   type AnalogControllerConfigurationFactory_Access_Array is array (Natural range <>) of AnalogControllerConfigurationFactory_Access;
   type AnalogControllerConfigurationFactory_Access_Array_Access is access all AnalogControllerConfigurationFactory_Access_Array;
   type AnalogControllerConfigurationFactory_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerConfigurationFactory_Access_Array_Access;
   type AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access is access all AnalogControllerConfigurationFactory_Access_Array_Access_Array;
   type AnalogControllerConfigurationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogControllerConfigurationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogControllerConfigurationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogControllerConfigurationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogControllerConfigurationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogControllerConfigurationFactory_Access_Array_Access is (if Value /= null and then Value.all in AnalogControllerConfigurationFactory_Access_Array_Object'Class then AnalogControllerConfigurationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AnalogControllerConfigurationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogControllerConfigurationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogControllerConfigurationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnalogControllerConfigurationFactory_Access_Array_Access_Array_Object'Class then AnalogControllerConfigurationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References;

with org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package_References;

package org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package is

   package AnalogControllerConfigurationEvent_Package renames Standard.org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;
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


   subtype AnalogControllerConfigurationFactory_Access is org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.AnalogControllerConfigurationFactory_Access;
   function "=" (Left, Right : AnalogControllerConfigurationFactory_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References."=";
   subtype AnalogControllerConfigurationFactory_Access_Array is org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.AnalogControllerConfigurationFactory_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationFactory_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References."=";
   subtype AnalogControllerConfigurationFactory_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.AnalogControllerConfigurationFactory_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationFactory_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References."=";
   function Java_Box (Value : AnalogControllerConfigurationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_AnalogControllerConfigurationFactory_Access_Array (Value : access Java_Object'Class) return AnalogControllerConfigurationFactory_Access_Array_Access renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.Java_Unbox_AnalogControllerConfigurationFactory_Access_Array;
   subtype AnalogControllerConfigurationFactory_Access_Array_Access_Array is org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.AnalogControllerConfigurationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References."=";
   subtype AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References."=";
   function Java_Box (Value : AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_AnalogControllerConfigurationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AnalogControllerConfigurationFactory_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package_References.Java_Unbox_AnalogControllerConfigurationFactory_Access_Array_Access_Array;

   type AnalogControllerConfigurationFactory is new Java_Object with record
      SCALE_FACTOR : Integer;
      SCALE_VALUE : Integer;
      available : Boolean;
      analogControllerConfigurationEvent : AnalogControllerConfigurationEvent_Access;
   end record;
   instance : AnalogControllerConfigurationFactory_Access;

   procedure Initialize (This : in out AnalogControllerConfigurationFactory'Class);
   function Create return AnalogControllerConfigurationFactory_Access;
   function getInstance return AnalogControllerConfigurationFactory_Access;
   function isAvailable (This : in out AnalogControllerConfigurationFactory) return Boolean;
   procedure setAvailable (This : in out AnalogControllerConfigurationFactory; available : Boolean);

end org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;


