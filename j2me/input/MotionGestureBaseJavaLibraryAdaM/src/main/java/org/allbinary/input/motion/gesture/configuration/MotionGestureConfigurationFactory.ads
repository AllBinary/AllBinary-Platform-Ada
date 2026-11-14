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
limited with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
package org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References is
   type MotionGestureConfigurationFactory_Access is access all org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package.MotionGestureConfigurationFactory'Class;
   type MotionGestureConfigurationFactory_Access_Array is array (Natural range <>) of MotionGestureConfigurationFactory_Access;
   type MotionGestureConfigurationFactory_Access_Array_Access is access all MotionGestureConfigurationFactory_Access_Array;
   type MotionGestureConfigurationFactory_Access_Array_Access_Array is array (Natural range <>) of MotionGestureConfigurationFactory_Access_Array_Access;
   type MotionGestureConfigurationFactory_Access_Array_Access_Array_Access is access all MotionGestureConfigurationFactory_Access_Array_Access_Array;
   type MotionGestureConfigurationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureConfigurationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureConfigurationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureConfigurationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureConfigurationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureConfigurationFactory_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureConfigurationFactory_Access_Array_Object'Class then MotionGestureConfigurationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MotionGestureConfigurationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureConfigurationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureConfigurationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureConfigurationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureConfigurationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureConfigurationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureConfigurationFactory_Access_Array_Access_Array_Object'Class then MotionGestureConfigurationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References;

with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References;

package org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package is

   package Reference_Types is
   subtype MotionGestureConfiguration_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access;
   use type MotionGestureConfiguration_Access;
   subtype MotionGestureConfiguration_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array;
   use type MotionGestureConfiguration_Access_Array;
   subtype MotionGestureConfiguration_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access;
   use type MotionGestureConfiguration_Access_Array_Access;
   subtype MotionGestureConfiguration_Access_Array_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access_Array;
   use type MotionGestureConfiguration_Access_Array_Access_Array;
   subtype MotionGestureConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access_Array_Access;
   use type MotionGestureConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionGestureConfigurationFactory_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.MotionGestureConfigurationFactory_Access;
   function "=" (Left, Right : MotionGestureConfigurationFactory_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References."=";
   subtype MotionGestureConfigurationFactory_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.MotionGestureConfigurationFactory_Access_Array;
   function "=" (Left, Right : MotionGestureConfigurationFactory_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References."=";
   subtype MotionGestureConfigurationFactory_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.MotionGestureConfigurationFactory_Access_Array_Access;
   function "=" (Left, Right : MotionGestureConfigurationFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References."=";
   function Java_Box (Value : MotionGestureConfigurationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_MotionGestureConfigurationFactory_Access_Array (Value : access Java_Object'Class) return MotionGestureConfigurationFactory_Access_Array_Access renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.Java_Unbox_MotionGestureConfigurationFactory_Access_Array;
   subtype MotionGestureConfigurationFactory_Access_Array_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.MotionGestureConfigurationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureConfigurationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References."=";
   subtype MotionGestureConfigurationFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.MotionGestureConfigurationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureConfigurationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References."=";
   function Java_Box (Value : MotionGestureConfigurationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_MotionGestureConfigurationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionGestureConfigurationFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package_References.Java_Unbox_MotionGestureConfigurationFactory_Access_Array_Access_Array;

   type MotionGestureConfigurationFactory is new Java_Object with null record;
   config : MotionGestureConfiguration_Access;

   procedure Initialize (This : in out MotionGestureConfigurationFactory'Class);
   function Create return MotionGestureConfigurationFactory_Access;
   function getInstance return MotionGestureConfiguration_Access;

end org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;


