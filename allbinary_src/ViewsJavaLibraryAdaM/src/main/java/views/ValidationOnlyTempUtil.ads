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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;

package views.ValidationOnlyTempUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;

   type ValidationOnlyTempUtil is tagged;
   type ValidationOnlyTempUtil_Access is access all ValidationOnlyTempUtil'Class;
   type ValidationOnlyTempUtil_Access_Array is array (Natural range <>) of ValidationOnlyTempUtil_Access;
   type ValidationOnlyTempUtil_Access_Array_Access is access all ValidationOnlyTempUtil_Access_Array;
   type ValidationOnlyTempUtil_Access_Array_Access_Array is array (Natural range <>) of ValidationOnlyTempUtil_Access_Array_Access;
   type ValidationOnlyTempUtil_Access_Array_Access_Array_Access is access all ValidationOnlyTempUtil_Access_Array_Access_Array;

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


