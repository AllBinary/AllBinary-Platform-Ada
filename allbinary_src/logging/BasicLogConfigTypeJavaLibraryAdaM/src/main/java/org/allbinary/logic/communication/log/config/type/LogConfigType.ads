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
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References is
   type LogConfigType_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package.LogConfigType'Class;
   type LogConfigType_Access_Array is array (Natural range <>) of LogConfigType_Access;
   type LogConfigType_Access_Array_Access is access all LogConfigType_Access_Array;
   type LogConfigType_Access_Array_Access_Array is array (Natural range <>) of LogConfigType_Access_Array_Access;
   type LogConfigType_Access_Array_Access_Array_Access is access all LogConfigType_Access_Array_Access_Array;
   type LogConfigType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigType_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigType_Access_Array_Access is (if Value /= null and then Value.all in LogConfigType_Access_Array_Object'Class then LogConfigType_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigType_Access_Array_Access_Array_Object'Class then LogConfigType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;

with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigType_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access;
   function "=" (Left, Right : LogConfigType_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array;
   function "=" (Left, Right : LogConfigType_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access;
   function "=" (Left, Right : LogConfigType_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   function Java_Box (Value : LogConfigType_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.Java_Box;
   function Java_Unbox_LogConfigType_Access_Array (Value : access Java_Object'Class) return LogConfigType_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.Java_Unbox_LogConfigType_Access_Array;
   subtype LogConfigType_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   function Java_Box (Value : LogConfigType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.Java_Box;
   function Java_Unbox_LogConfigType_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigType_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.Java_Unbox_LogConfigType_Access_Array_Access_Array;

   type LogConfigType is new Java_Object with record
      name : Unbounded_String;
      description : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogConfigType'Class; name : Unbounded_String; description : Unbounded_String);
   function Create (name : Unbounded_String; description : Unbounded_String) return LogConfigType_Access;
   function getName (This : in out LogConfigType) return Unbounded_String;
   function getDescription (This : in out LogConfigType) return Unbounded_String;
   procedure setName (This : in out LogConfigType; value : Unbounded_String);
   procedure setDescription (This : in out LogConfigType; value : Unbounded_String);

end org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;


