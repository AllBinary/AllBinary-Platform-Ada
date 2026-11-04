-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References is
   type LogConfigTypeFactory_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package.LogConfigTypeFactory'Class;
   type LogConfigTypeFactory_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access;
   type LogConfigTypeFactory_Access_Array_Access is access all LogConfigTypeFactory_Access_Array;
   type LogConfigTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access_Array_Access;
   type LogConfigTypeFactory_Access_Array_Access_Array_Access is access all LogConfigTypeFactory_Access_Array_Access_Array;
end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References;

with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package Reference_Types is
   subtype LogConfigType_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access;
   use type LogConfigType_Access;
   subtype LogConfigType_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array;
   use type LogConfigType_Access_Array;
   subtype LogConfigType_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access;
   use type LogConfigType_Access_Array_Access;
   subtype LogConfigType_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array;
   use type LogConfigType_Access_Array_Access_Array;
   subtype LogConfigType_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array_Access;
   use type LogConfigType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigTypeFactory_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";

   type LogConfigTypeFactory is new Java_Object with record
      NO_DESCRIPTION : Unbounded_String;
      OS : LogConfigType_Access;
      FACTORYERROR : LogConfigType_Access;
      FILE : LogConfigType_Access;
      FILEERROR : LogConfigType_Access;
      IDLOGGING : LogConfigType_Access;
      REPLACE : LogConfigType_Access;
      REPLACE_INFO : LogConfigType_Access;
      REPLACEERROR : LogConfigType_Access;
   end record;
   instance : LogConfigTypeFactory_Access;

   procedure Initialize (This : in out LogConfigTypeFactory'Class);
   function Create return LogConfigTypeFactory_Access;
   function getInstance return LogConfigTypeFactory_Access;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


