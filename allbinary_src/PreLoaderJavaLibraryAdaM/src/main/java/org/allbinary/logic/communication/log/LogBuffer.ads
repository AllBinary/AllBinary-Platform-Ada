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

limited with org.allbinary.logic.communication.log.LogBuffer_Package;
package org.allbinary.logic.communication.log.LogBuffer_Package_References is
   type LogBuffer_Access is access all org.allbinary.logic.communication.log.LogBuffer_Package.LogBuffer'Class;
   type LogBuffer_Access_Array is array (Natural range <>) of LogBuffer_Access;
   type LogBuffer_Access_Array_Access is access all LogBuffer_Access_Array;
   type LogBuffer_Access_Array_Access_Array is array (Natural range <>) of LogBuffer_Access_Array_Access;
   type LogBuffer_Access_Array_Access_Array_Access is access all LogBuffer_Access_Array_Access_Array;
end org.allbinary.logic.communication.log.LogBuffer_Package_References;

with org.allbinary.logic.communication.log.LogBuffer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;

package org.allbinary.logic.communication.log.LogBuffer_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype LogBuffer_Access is org.allbinary.logic.communication.log.LogBuffer_Package_References.LogBuffer_Access;
   function "=" (Left, Right : LogBuffer_Access) return Boolean renames org.allbinary.logic.communication.log.LogBuffer_Package_References."=";
   subtype LogBuffer_Access_Array is org.allbinary.logic.communication.log.LogBuffer_Package_References.LogBuffer_Access_Array;
   function "=" (Left, Right : LogBuffer_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogBuffer_Package_References."=";
   subtype LogBuffer_Access_Array_Access is org.allbinary.logic.communication.log.LogBuffer_Package_References.LogBuffer_Access_Array_Access;
   function "=" (Left, Right : LogBuffer_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogBuffer_Package_References."=";
   subtype LogBuffer_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogBuffer_Package_References.LogBuffer_Access_Array_Access_Array;
   function "=" (Left, Right : LogBuffer_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogBuffer_Package_References."=";
   subtype LogBuffer_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogBuffer_Package_References.LogBuffer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogBuffer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogBuffer_Package_References."=";

   type LogBuffer is new Java_Object with record
      logUtil : LogUtil_Access;
      logEntryVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LogBuffer'Class);
   function Create return LogBuffer_Access;
   procedure add (This : in out LogBuffer; log_Param : access Log_Package.Log'Class);
   procedure logAll (This : in out LogBuffer);

end org.allbinary.logic.communication.log.LogBuffer_Package;


