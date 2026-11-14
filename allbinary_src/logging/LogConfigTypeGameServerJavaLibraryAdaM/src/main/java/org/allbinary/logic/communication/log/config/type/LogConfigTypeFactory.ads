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
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References is
   type LogConfigTypeFactory_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package.LogConfigTypeFactory'Class;
   type LogConfigTypeFactory_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access;
   type LogConfigTypeFactory_Access_Array_Access is access all LogConfigTypeFactory_Access_Array;
   type LogConfigTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access_Array_Access;
   type LogConfigTypeFactory_Access_Array_Access_Array_Access is access all LogConfigTypeFactory_Access_Array_Access_Array;
   type LogConfigTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypeFactory_Access_Array_Object'Class then LogConfigTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypeFactory_Access_Array_Access_Array_Object'Class then LogConfigTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References;
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package Reference_Types is
   subtype LogConfigTypeFactory_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access;
   use type LogConfigTypeFactory_Access;
   subtype LogConfigTypeFactory_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array;
   use type LogConfigTypeFactory_Access_Array;
   subtype LogConfigTypeFactory_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access;
   use type LogConfigTypeFactory_Access_Array_Access;
   subtype LogConfigTypeFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array;
   use type LogConfigTypeFactory_Access_Array_Access_Array;
   subtype LogConfigTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array_Access;
   use type LogConfigTypeFactory_Access_Array_Access_Array_Access;
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
   function Java_Box (Value : LogConfigTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypeFactory_Access_Array (Value : access Java_Object'Class) return LogConfigTypeFactory_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.Java_Unbox_LogConfigTypeFactory_Access_Array;
   subtype LogConfigTypeFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   function Java_Box (Value : LogConfigTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.Java_Unbox_LogConfigTypeFactory_Access_Array_Access_Array;

   type LogConfigTypeFactory is new Java_Object with record
      NO_DESCRIPTION : Unbounded_String;
      INIT_SERVER : LogConfigType_Access;
      LOBBY_SERVER : LogConfigType_Access;
      GAME_SERVER : LogConfigType_Access;
      GAME_SIMULATOR : LogConfigType_Access;
      CUSTOM_TYPES : LogConfigType_Access;
   end record;
   instance : LogConfigTypeFactory_Access;

   procedure Initialize (This : in out LogConfigTypeFactory'Class);
   function Create return LogConfigTypeFactory_Access;
   function getInstance return LogConfigTypeFactory_Access;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


