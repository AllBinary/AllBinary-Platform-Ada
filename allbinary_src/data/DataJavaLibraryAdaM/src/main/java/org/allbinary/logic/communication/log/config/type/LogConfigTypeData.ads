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
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References is
   type LogConfigTypeData_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package.LogConfigTypeData'Class;
   type LogConfigTypeData_Access_Array is array (Natural range <>) of LogConfigTypeData_Access;
   type LogConfigTypeData_Access_Array_Access is access all LogConfigTypeData_Access_Array;
   type LogConfigTypeData_Access_Array_Access_Array is array (Natural range <>) of LogConfigTypeData_Access_Array_Access;
   type LogConfigTypeData_Access_Array_Access_Array_Access is access all LogConfigTypeData_Access_Array_Access_Array;
   type LogConfigTypeData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypeData_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypeData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypeData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypeData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypeData_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypeData_Access_Array_Object'Class then LogConfigTypeData_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigTypeData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypeData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypeData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypeData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypeData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypeData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypeData_Access_Array_Access_Array_Object'Class then LogConfigTypeData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References;

with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigTypeData_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.LogConfigTypeData_Access;
   function "=" (Left, Right : LogConfigTypeData_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References."=";
   subtype LogConfigTypeData_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.LogConfigTypeData_Access_Array;
   function "=" (Left, Right : LogConfigTypeData_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References."=";
   subtype LogConfigTypeData_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.LogConfigTypeData_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References."=";
   function Java_Box (Value : LogConfigTypeData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypeData_Access_Array (Value : access Java_Object'Class) return LogConfigTypeData_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.Java_Unbox_LogConfigTypeData_Access_Array;
   subtype LogConfigTypeData_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.LogConfigTypeData_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypeData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References."=";
   subtype LogConfigTypeData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.LogConfigTypeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References."=";
   function Java_Box (Value : LogConfigTypeData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypeData_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigTypeData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package_References.Java_Unbox_LogConfigTypeData_Access_Array_Access_Array;

   type LogConfigTypeData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
   end record;
   instance : LogConfigTypeData_Access;

   procedure Initialize (This : in out LogConfigTypeData'Class);
   function Create return LogConfigTypeData_Access;
   function getInstance return LogConfigTypeData_Access;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;


