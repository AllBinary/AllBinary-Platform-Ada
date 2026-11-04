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

limited with views.ValidationOnlyTempUtil_Package;
package views.ValidationOnlyTempUtil_Package_References is
   type ValidationOnlyTempUtil_Access is access all views.ValidationOnlyTempUtil_Package.ValidationOnlyTempUtil'Class;
   type ValidationOnlyTempUtil_Access_Array is array (Natural range <>) of ValidationOnlyTempUtil_Access;
   type ValidationOnlyTempUtil_Access_Array_Access is access all ValidationOnlyTempUtil_Access_Array;
   type ValidationOnlyTempUtil_Access_Array_Access_Array is array (Natural range <>) of ValidationOnlyTempUtil_Access_Array_Access;
   type ValidationOnlyTempUtil_Access_Array_Access_Array_Access is access all ValidationOnlyTempUtil_Access_Array_Access_Array;
end views.ValidationOnlyTempUtil_Package_References;

with views.ValidationOnlyTempUtil_Package_References;
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
limited with org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References;

package views.ValidationOnlyTempUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
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
   subtype ValidationComponentInterface_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access;
   use type ValidationComponentInterface_Access;
   subtype ValidationComponentInterface_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array;
   use type ValidationComponentInterface_Access_Array;
   subtype ValidationComponentInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access;
   use type ValidationComponentInterface_Access_Array_Access;
   subtype ValidationComponentInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array;
   use type ValidationComponentInterface_Access_Array_Access_Array;
   subtype ValidationComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array_Access;
   use type ValidationComponentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ValidationOnlyTempUtil_Access is views.ValidationOnlyTempUtil_Package_References.ValidationOnlyTempUtil_Access;
   function "=" (Left, Right : ValidationOnlyTempUtil_Access) return Boolean renames views.ValidationOnlyTempUtil_Package_References."=";
   subtype ValidationOnlyTempUtil_Access_Array is views.ValidationOnlyTempUtil_Package_References.ValidationOnlyTempUtil_Access_Array;
   function "=" (Left, Right : ValidationOnlyTempUtil_Access_Array) return Boolean renames views.ValidationOnlyTempUtil_Package_References."=";
   subtype ValidationOnlyTempUtil_Access_Array_Access is views.ValidationOnlyTempUtil_Package_References.ValidationOnlyTempUtil_Access_Array_Access;
   function "=" (Left, Right : ValidationOnlyTempUtil_Access_Array_Access) return Boolean renames views.ValidationOnlyTempUtil_Package_References."=";
   subtype ValidationOnlyTempUtil_Access_Array_Access_Array is views.ValidationOnlyTempUtil_Package_References.ValidationOnlyTempUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ValidationOnlyTempUtil_Access_Array_Access_Array) return Boolean renames views.ValidationOnlyTempUtil_Package_References."=";
   subtype ValidationOnlyTempUtil_Access_Array_Access_Array_Access is views.ValidationOnlyTempUtil_Package_References.ValidationOnlyTempUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidationOnlyTempUtil_Access_Array_Access_Array_Access) return Boolean renames views.ValidationOnlyTempUtil_Package_References."=";

   type ValidationOnlyTempUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ValidationOnlyTempUtil_Access;

   procedure Initialize (This : in out ValidationOnlyTempUtil'Class);
   function Create return ValidationOnlyTempUtil_Access;
   function getInstance return ValidationOnlyTempUtil_Access;
   function view (This : in out ValidationOnlyTempUtil; validationComponentInterface_Param : access ValidationComponentInterface_Package.ValidationComponentInterface'Class) return Unbounded_String;
   procedure view (This : in out ValidationOnlyTempUtil; validationComponentInterface_Param : access ValidationComponentInterface_Package.ValidationComponentInterface'Class);

end views.ValidationOnlyTempUtil_Package;


