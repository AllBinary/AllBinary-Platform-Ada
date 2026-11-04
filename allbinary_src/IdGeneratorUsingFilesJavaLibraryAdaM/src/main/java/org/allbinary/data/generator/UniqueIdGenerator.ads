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

limited with org.allbinary.data.generator.UniqueIdGenerator_Package;
package org.allbinary.data.generator.UniqueIdGenerator_Package_References is
   type UniqueIdGenerator_Access is access all org.allbinary.data.generator.UniqueIdGenerator_Package.UniqueIdGenerator'Class;
   type UniqueIdGenerator_Access_Array is array (Natural range <>) of UniqueIdGenerator_Access;
   type UniqueIdGenerator_Access_Array_Access is access all UniqueIdGenerator_Access_Array;
   type UniqueIdGenerator_Access_Array_Access_Array is array (Natural range <>) of UniqueIdGenerator_Access_Array_Access;
   type UniqueIdGenerator_Access_Array_Access_Array_Access is access all UniqueIdGenerator_Access_Array_Access_Array;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.data.generator.IdGeneratorInterface_Package; use org.allbinary.data.generator.IdGeneratorInterface_Package;

package org.allbinary.data.generator.UniqueIdGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Reference_Types is
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UniqueIdGenerator_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";
   subtype UniqueIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.UniqueIdGenerator_Package_References.UniqueIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UniqueIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.UniqueIdGenerator_Package_References."=";

   type UniqueIdGenerator is new Java_Object and IdGeneratorInterface with record
      logUtil : LogUtil_Access;
      newFile : AbFile_Access;
      id : Long_Long_Integer;
   end record;
   EXT : Unbounded_String;

   procedure Initialize (This : in out UniqueIdGenerator'Class);
   function Create return UniqueIdGenerator_Access;
   procedure initialize (This : in out UniqueIdGenerator; value : Integer);
   procedure setFile (This : in out UniqueIdGenerator; filePathName : Unbounded_String; name : Unbounded_String);
   function getNext (This : in out UniqueIdGenerator) return Unbounded_String;

end org.allbinary.data.generator.UniqueIdGenerator_Package;


