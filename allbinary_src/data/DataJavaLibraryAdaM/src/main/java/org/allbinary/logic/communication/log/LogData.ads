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
limited with org.allbinary.logic.communication.log.LogData_Package;
package org.allbinary.logic.communication.log.LogData_Package_References is
   type LogData_Access is access all org.allbinary.logic.communication.log.LogData_Package.LogData'Class;
   type LogData_Access_Array is array (Natural range <>) of LogData_Access;
   type LogData_Access_Array_Access is access all LogData_Access_Array;
   type LogData_Access_Array_Access_Array is array (Natural range <>) of LogData_Access_Array_Access;
   type LogData_Access_Array_Access_Array_Access is access all LogData_Access_Array_Access_Array;
   type LogData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogData_Access_Array_Access;
   end record;
   function Java_Box (Value : LogData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogData_Access_Array_Access is (if Value /= null and then Value.all in LogData_Access_Array_Object'Class then LogData_Access_Array_Object'Class (Value.all).Value else null);
   type LogData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogData_Access_Array_Access_Array_Object'Class then LogData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.LogData_Package_References;

with org.allbinary.logic.communication.log.LogData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.LogData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogData_Access is org.allbinary.logic.communication.log.LogData_Package_References.LogData_Access;
   function "=" (Left, Right : LogData_Access) return Boolean renames org.allbinary.logic.communication.log.LogData_Package_References."=";
   subtype LogData_Access_Array is org.allbinary.logic.communication.log.LogData_Package_References.LogData_Access_Array;
   function "=" (Left, Right : LogData_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogData_Package_References."=";
   subtype LogData_Access_Array_Access is org.allbinary.logic.communication.log.LogData_Package_References.LogData_Access_Array_Access;
   function "=" (Left, Right : LogData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogData_Package_References."=";
   function Java_Box (Value : LogData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.LogData_Package_References.Java_Box;
   function Java_Unbox_LogData_Access_Array (Value : access Java_Object'Class) return LogData_Access_Array_Access renames org.allbinary.logic.communication.log.LogData_Package_References.Java_Unbox_LogData_Access_Array;
   subtype LogData_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogData_Package_References.LogData_Access_Array_Access_Array;
   function "=" (Left, Right : LogData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogData_Package_References."=";
   subtype LogData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogData_Package_References.LogData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogData_Package_References."=";
   function Java_Box (Value : LogData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.LogData_Package_References.Java_Box;
   function Java_Unbox_LogData_Access_Array_Access_Array (Value : access Java_Object'Class) return LogData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.LogData_Package_References.Java_Unbox_LogData_Access_Array_Access_Array;

   type LogData is new Java_Object with record
      MAX : Long_Long_Integer;
      extension : Unbounded_String;
      backupFileExt : Unbounded_String;
      ALLBINARY : Unbounded_String;
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogData'Class);
   function Create return LogData_Access;

end org.allbinary.logic.communication.log.LogData_Package;


