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

limited with org.allbinary.logic.communication.log.LogUtil_Package;
package org.allbinary.logic.communication.log.LogUtil_Package_References is
   type LogUtil_Access is access all org.allbinary.logic.communication.log.LogUtil_Package.LogUtil'Class;
   type LogUtil_Access_Array is array (Natural range <>) of LogUtil_Access;
   type LogUtil_Access_Array_Access is access all LogUtil_Access_Array;
   type LogUtil_Access_Array_Access_Array is array (Natural range <>) of LogUtil_Access_Array_Access;
   type LogUtil_Access_Array_Access_Array_Access is access all LogUtil_Access_Array_Access_Array;
end org.allbinary.logic.communication.log.LogUtil_Package_References;

with org.allbinary.logic.communication.log.LogUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package_References;
limited with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;

package org.allbinary.logic.communication.log.LogUtil_Package is

   package Reference_Types is
   subtype LogFormatUtil_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access;
   use type LogFormatUtil_Access;
   subtype LogFormatUtil_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array;
   use type LogFormatUtil_Access_Array;
   subtype LogFormatUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access;
   subtype LogFormatUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array;
   use type LogFormatUtil_Access_Array_Access_Array;
   subtype LogFormatUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access_Array_Access;
   subtype Log_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access;
   use type Log_Access;
   subtype Log_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array;
   use type Log_Access_Array;
   subtype Log_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access;
   use type Log_Access_Array_Access;
   subtype Log_Access_Array_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array;
   use type Log_Access_Array_Access_Array;
   subtype Log_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array_Access;
   use type Log_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";

   type LogUtil is new Java_Object with record
      logFormatUtil : LogFormatUtil_Access;
      LABEL : Unbounded_String;
      LOG_SUCCESS : Unbounded_String;
   end record;
   instance : LogUtil_Access;

   procedure Initialize (This : in out LogUtil'Class);
   function Create return LogUtil_Access;
   function getInstance return LogUtil_Access;
   procedure putL (This : in out LogUtil; log_Param : access Log_Package.Log'Class);
   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);

end org.allbinary.logic.communication.log.LogUtil_Package;


