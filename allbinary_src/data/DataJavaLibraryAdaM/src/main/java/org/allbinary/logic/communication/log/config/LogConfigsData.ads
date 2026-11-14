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
limited with org.allbinary.logic.communication.log.config.LogConfigsData_Package;
package org.allbinary.logic.communication.log.config.LogConfigsData_Package_References is
   type LogConfigsData_Access is access all org.allbinary.logic.communication.log.config.LogConfigsData_Package.LogConfigsData'Class;
   type LogConfigsData_Access_Array is array (Natural range <>) of LogConfigsData_Access;
   type LogConfigsData_Access_Array_Access is access all LogConfigsData_Access_Array;
   type LogConfigsData_Access_Array_Access_Array is array (Natural range <>) of LogConfigsData_Access_Array_Access;
   type LogConfigsData_Access_Array_Access_Array_Access is access all LogConfigsData_Access_Array_Access_Array;
   type LogConfigsData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigsData_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigsData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigsData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigsData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigsData_Access_Array_Access is (if Value /= null and then Value.all in LogConfigsData_Access_Array_Object'Class then LogConfigsData_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigsData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigsData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigsData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigsData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigsData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigsData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigsData_Access_Array_Access_Array_Object'Class then LogConfigsData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.LogConfigsData_Package_References;

with org.allbinary.logic.communication.log.config.LogConfigsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.config.LogConfigsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigsData_Access is org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.LogConfigsData_Access;
   function "=" (Left, Right : LogConfigsData_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References."=";
   subtype LogConfigsData_Access_Array is org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.LogConfigsData_Access_Array;
   function "=" (Left, Right : LogConfigsData_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References."=";
   subtype LogConfigsData_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.LogConfigsData_Access_Array_Access;
   function "=" (Left, Right : LogConfigsData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References."=";
   function Java_Box (Value : LogConfigsData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.Java_Box;
   function Java_Unbox_LogConfigsData_Access_Array (Value : access Java_Object'Class) return LogConfigsData_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.Java_Unbox_LogConfigsData_Access_Array;
   subtype LogConfigsData_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.LogConfigsData_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigsData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References."=";
   subtype LogConfigsData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.LogConfigsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References."=";
   function Java_Box (Value : LogConfigsData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.Java_Box;
   function Java_Unbox_LogConfigsData_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigsData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfigsData_Package_References.Java_Unbox_LogConfigsData_Access_Array_Access_Array;

   type LogConfigsData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : LogConfigsData_Access;

   procedure Initialize (This : in out LogConfigsData'Class);
   function Create return LogConfigsData_Access;
   function getInstance return LogConfigsData_Access;

end org.allbinary.logic.communication.log.config.LogConfigsData_Package;


