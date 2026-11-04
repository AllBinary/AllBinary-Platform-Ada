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

limited with org.allbinary.game.IntermissionInterface_Package;
package org.allbinary.game.IntermissionInterface_Package_References is
   type IntermissionInterface_Access is access all org.allbinary.game.IntermissionInterface_Package.IntermissionInterface'Class;
   type IntermissionInterface_Access_Array is array (Natural range <>) of IntermissionInterface_Access;
   type IntermissionInterface_Access_Array_Access is access all IntermissionInterface_Access_Array;
   type IntermissionInterface_Access_Array_Access_Array is array (Natural range <>) of IntermissionInterface_Access_Array_Access;
   type IntermissionInterface_Access_Array_Access_Array_Access is access all IntermissionInterface_Access_Array_Access_Array;
end org.allbinary.game.IntermissionInterface_Package_References;

with org.allbinary.game.IntermissionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package_References;

package org.allbinary.game.IntermissionInterface_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype IntermissionEnableListenerInterface_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access;
   use type IntermissionEnableListenerInterface_Access;
   subtype IntermissionEnableListenerInterface_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array;
   use type IntermissionEnableListenerInterface_Access_Array;
   subtype IntermissionEnableListenerInterface_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access;
   use type IntermissionEnableListenerInterface_Access_Array_Access;
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array;
   use type IntermissionEnableListenerInterface_Access_Array_Access_Array;
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array_Access;
   use type IntermissionEnableListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type IntermissionInterface is interface;
   subtype IntermissionInterface_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access;
   function "=" (Left, Right : IntermissionInterface_Access) return Boolean renames org.allbinary.game.IntermissionInterface_Package_References."=";
   subtype IntermissionInterface_Access_Array is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array;
   function "=" (Left, Right : IntermissionInterface_Access_Array) return Boolean renames org.allbinary.game.IntermissionInterface_Package_References."=";
   subtype IntermissionInterface_Access_Array_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access;
   function "=" (Left, Right : IntermissionInterface_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionInterface_Package_References."=";
   subtype IntermissionInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IntermissionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.IntermissionInterface_Package_References."=";
   subtype IntermissionInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntermissionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionInterface_Package_References."=";
   function Java_Object_Access_From_IntermissionInterface (Value : IntermissionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTimeDelayHelper (This : in out IntermissionInterface) return TimeDelayHelper_Access is abstract;
   function isEnabled (This : in out IntermissionInterface) return Boolean is abstract;
   procedure setEnabled (This : in out IntermissionInterface; value : Boolean) is abstract;
   procedure setListener (This : in out IntermissionInterface; enableListener_Param : access IntermissionEnableListenerInterface_Package.IntermissionEnableListenerInterface'Class) is abstract;

end org.allbinary.game.IntermissionInterface_Package;


