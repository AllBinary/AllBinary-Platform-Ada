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

limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References is
   type BasicGenerator_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package.BasicGenerator'Class;
   type BasicGenerator_Access_Array is array (Natural range <>) of BasicGenerator_Access;
   type BasicGenerator_Access_Array_Access is access all BasicGenerator_Access_Array;
   type BasicGenerator_Access_Array_Access_Array is array (Natural range <>) of BasicGenerator_Access_Array_Access;
   type BasicGenerator_Access_Array_Access_Array_Access is access all BasicGenerator_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGenerator_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References.BasicGenerator_Access;
   function "=" (Left, Right : BasicGenerator_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References."=";
   subtype BasicGenerator_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References.BasicGenerator_Access_Array;
   function "=" (Left, Right : BasicGenerator_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References."=";
   subtype BasicGenerator_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References.BasicGenerator_Access_Array_Access;
   function "=" (Left, Right : BasicGenerator_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References."=";
   subtype BasicGenerator_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References.BasicGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References."=";
   subtype BasicGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References.BasicGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package_References."=";

   type BasicGenerator is new TransformInfoObjectConfigGenerator with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasicGenerator'Class);
   function Create return BasicGenerator_Access;
   function process (This : in out BasicGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out BasicGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;


