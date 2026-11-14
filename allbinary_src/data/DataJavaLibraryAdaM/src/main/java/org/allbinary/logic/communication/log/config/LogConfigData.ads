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
limited with org.allbinary.logic.communication.log.config.LogConfigData_Package;
package org.allbinary.logic.communication.log.config.LogConfigData_Package_References is
   type LogConfigData_Access is access all org.allbinary.logic.communication.log.config.LogConfigData_Package.LogConfigData'Class;
   type LogConfigData_Access_Array is array (Natural range <>) of LogConfigData_Access;
   type LogConfigData_Access_Array_Access is access all LogConfigData_Access_Array;
   type LogConfigData_Access_Array_Access_Array is array (Natural range <>) of LogConfigData_Access_Array_Access;
   type LogConfigData_Access_Array_Access_Array_Access is access all LogConfigData_Access_Array_Access_Array;
   type LogConfigData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigData_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigData_Access_Array_Access is (if Value /= null and then Value.all in LogConfigData_Access_Array_Object'Class then LogConfigData_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigData_Access_Array_Access_Array_Object'Class then LogConfigData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.LogConfigData_Package_References;

with org.allbinary.logic.communication.log.config.LogConfigData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.config.LogConfigData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigData_Access is org.allbinary.logic.communication.log.config.LogConfigData_Package_References.LogConfigData_Access;
   function "=" (Left, Right : LogConfigData_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References."=";
   subtype LogConfigData_Access_Array is org.allbinary.logic.communication.log.config.LogConfigData_Package_References.LogConfigData_Access_Array;
   function "=" (Left, Right : LogConfigData_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References."=";
   subtype LogConfigData_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfigData_Package_References.LogConfigData_Access_Array_Access;
   function "=" (Left, Right : LogConfigData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References."=";
   function Java_Box (Value : LogConfigData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References.Java_Box;
   function Java_Unbox_LogConfigData_Access_Array (Value : access Java_Object'Class) return LogConfigData_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References.Java_Unbox_LogConfigData_Access_Array;
   subtype LogConfigData_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.LogConfigData_Package_References.LogConfigData_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References."=";
   subtype LogConfigData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfigData_Package_References.LogConfigData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References."=";
   function Java_Box (Value : LogConfigData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References.Java_Box;
   function Java_Unbox_LogConfigData_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfigData_Package_References.Java_Unbox_LogConfigData_Access_Array_Access_Array;

   type LogConfigData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      FILE : Unbounded_String;
   end record;
   instance : LogConfigData_Access;

   procedure Initialize (This : in out LogConfigData'Class);
   function Create return LogConfigData_Access;
   function getInstance return LogConfigData_Access;

end org.allbinary.logic.communication.log.config.LogConfigData_Package;


