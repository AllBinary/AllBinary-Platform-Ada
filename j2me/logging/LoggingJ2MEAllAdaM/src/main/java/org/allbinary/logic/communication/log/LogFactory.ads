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

limited with org.allbinary.logic.communication.log.LogFactory_Package;
package org.allbinary.logic.communication.log.LogFactory_Package_References is
   type LogFactory_Access is access all org.allbinary.logic.communication.log.LogFactory_Package.LogFactory'Class;
   type LogFactory_Access_Array is array (Natural range <>) of LogFactory_Access;
   type LogFactory_Access_Array_Access is access all LogFactory_Access_Array;
   type LogFactory_Access_Array_Access_Array is array (Natural range <>) of LogFactory_Access_Array_Access;
   type LogFactory_Access_Array_Access_Array_Access is access all LogFactory_Access_Array_Access_Array;
end org.allbinary.logic.communication.log.LogFactory_Package_References;

with org.allbinary.logic.communication.log.LogFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;

package org.allbinary.logic.communication.log.LogFactory_Package is

   package Reference_Types is
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


   subtype LogFactory_Access is org.allbinary.logic.communication.log.LogFactory_Package_References.LogFactory_Access;
   function "=" (Left, Right : LogFactory_Access) return Boolean renames org.allbinary.logic.communication.log.LogFactory_Package_References."=";
   subtype LogFactory_Access_Array is org.allbinary.logic.communication.log.LogFactory_Package_References.LogFactory_Access_Array;
   function "=" (Left, Right : LogFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogFactory_Package_References."=";
   subtype LogFactory_Access_Array_Access is org.allbinary.logic.communication.log.LogFactory_Package_References.LogFactory_Access_Array_Access;
   function "=" (Left, Right : LogFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogFactory_Package_References."=";
   subtype LogFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogFactory_Package_References.LogFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogFactory_Package_References."=";
   subtype LogFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogFactory_Package_References.LogFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogFactory_Package_References."=";

   type LogFactory is new Java_Object with null record;

   procedure Initialize (This : in out LogFactory'Class);
   function Create return LogFactory_Access;
   function getInstanceD return Log_Access;
   function getInstanceNoF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; exception_Id_Param : access Java_Object'Class) return Log_Access;
   procedure getInstanceNoF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; exception_Id_Param : access Java_Object'Class);
   function getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access;
   procedure getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   function getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Log_Access;
   procedure getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);

end org.allbinary.logic.communication.log.LogFactory_Package;


