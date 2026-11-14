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
limited with org.allbinary.data.generator.UniqueIdGenerator_Package;
package org.allbinary.data.generator.UniqueIdGenerator_Package_References is
   type UniqueIdGenerator_Access is access all org.allbinary.data.generator.UniqueIdGenerator_Package.UniqueIdGenerator'Class;
   type UniqueIdGenerator_Access_Array is array (Natural range <>) of UniqueIdGenerator_Access;
   type UniqueIdGenerator_Access_Array_Access is access all UniqueIdGenerator_Access_Array;
   type UniqueIdGenerator_Access_Array_Access_Array is array (Natural range <>) of UniqueIdGenerator_Access_Array_Access;
   type UniqueIdGenerator_Access_Array_Access_Array_Access is access all UniqueIdGenerator_Access_Array_Access_Array;
   type UniqueIdGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UniqueIdGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : UniqueIdGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UniqueIdGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UniqueIdGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UniqueIdGenerator_Access_Array_Access is (if Value /= null and then Value.all in UniqueIdGenerator_Access_Array_Object'Class then UniqueIdGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type UniqueIdGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UniqueIdGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UniqueIdGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UniqueIdGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UniqueIdGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UniqueIdGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UniqueIdGenerator_Access_Array_Access_Array_Object'Class then UniqueIdGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.generator.UniqueIdGenerator_Package_References;

with org.allbinary.data.generator.UniqueIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
limited with org.allbinary.data.tables.generator.IdGeneratorEntity_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.data.generator.IdGeneratorInterface_Package; use org.allbinary.data.generator.IdGeneratorInterface_Package;

package org.allbinary.data.generator.UniqueIdGenerator_Package is

   package IdGeneratorEntity_Package renames Standard.org.allbinary.data.tables.generator.IdGeneratorEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype IdGeneratorEntity_Access is org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References.IdGeneratorEntity_Access;
   use type IdGeneratorEntity_Access;
   subtype IdGeneratorEntity_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References.IdGeneratorEntity_Access_Array;
   use type IdGeneratorEntity_Access_Array;
   subtype IdGeneratorEntity_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References.IdGeneratorEntity_Access_Array_Access;
   use type IdGeneratorEntity_Access_Array_Access;
   subtype IdGeneratorEntity_Access_Array_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References.IdGeneratorEntity_Access_Array_Access_Array;
   use type IdGeneratorEntity_Access_Array_Access_Array;
   subtype IdGeneratorEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntity_Package_References.IdGeneratorEntity_Access_Array_Access_Array_Access;
   use type IdGeneratorEntity_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype UniqueIdGenerator_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   function Java_Box (Value : UniqueIdGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.UniqueIdGenerator_Package_References.Java_Box;
   function Java_Unbox_UniqueIdGenerator_Access_Array (Value : access Java_Object'Class) return UniqueIdGenerator_Access_Array_Access renames org.allbinary.data.generator.UniqueIdGenerator_Package_References.Java_Unbox_UniqueIdGenerator_Access_Array;
   subtype UniqueIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   function Java_Box (Value : UniqueIdGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.UniqueIdGenerator_Package_References.Java_Box;
   function Java_Unbox_UniqueIdGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return UniqueIdGenerator_Access_Array_Access_Array_Access renames org.allbinary.data.generator.UniqueIdGenerator_Package_References.Java_Unbox_UniqueIdGenerator_Access_Array_Access_Array;

   type UniqueIdGenerator is new Java_Object and IdGeneratorInterface with record
      logUtil : LogUtil_Access;
      idGeneratorEntity : IdGeneratorEntity_Access;
      name : Unbounded_String;
   end record;
   EXT : Unbounded_String;

   procedure Initialize (This : in out UniqueIdGenerator'Class);
   function Create return UniqueIdGenerator_Access;
   procedure initialize (This : in out UniqueIdGenerator; value : Integer);
   procedure setFile (This : in out UniqueIdGenerator; filePathName : Unbounded_String; name : Unbounded_String);
   function getNext (This : in out UniqueIdGenerator) return Unbounded_String;

end org.allbinary.data.generator.UniqueIdGenerator_Package;


