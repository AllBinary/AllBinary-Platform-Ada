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

limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References is
   type ImageActionScriptOutputProcessor_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package.ImageActionScriptOutputProcessor'Class;
   type ImageActionScriptOutputProcessor_Access_Array is array (Natural range <>) of ImageActionScriptOutputProcessor_Access;
   type ImageActionScriptOutputProcessor_Access_Array_Access is access all ImageActionScriptOutputProcessor_Access_Array;
   type ImageActionScriptOutputProcessor_Access_Array_Access_Array is array (Natural range <>) of ImageActionScriptOutputProcessor_Access_Array_Access;
   type ImageActionScriptOutputProcessor_Access_Array_Access_Array_Access is access all ImageActionScriptOutputProcessor_Access_Array_Access_Array;
end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References;
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
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package is

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
   subtype ImageActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access;
   use type ImageActionScriptOutputInterface_Access;
   subtype ImageActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array;
   use type ImageActionScriptOutputInterface_Access_Array;
   subtype ImageActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access;
   use type ImageActionScriptOutputInterface_Access_Array_Access;
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array;
   use type ImageActionScriptOutputInterface_Access_Array_Access_Array;
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   use type ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageActionScriptOutputProcessor_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References.ImageActionScriptOutputProcessor_Access;
   function "=" (Left, Right : ImageActionScriptOutputProcessor_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References."=";
   subtype ImageActionScriptOutputProcessor_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References.ImageActionScriptOutputProcessor_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputProcessor_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References."=";
   subtype ImageActionScriptOutputProcessor_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References.ImageActionScriptOutputProcessor_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References."=";
   subtype ImageActionScriptOutputProcessor_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References.ImageActionScriptOutputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References."=";
   subtype ImageActionScriptOutputProcessor_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References.ImageActionScriptOutputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package_References."=";

   type ImageActionScriptOutputProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ImageActionScriptOutputProcessor'Class);
   function Create return ImageActionScriptOutputProcessor_Access;
   procedure process (imageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class; frame : Long_Long_Integer);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;


