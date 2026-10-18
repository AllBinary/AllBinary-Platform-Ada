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
with org.allbinary.logic.system.security.licensing.ClientInformation_Package; use org.allbinary.logic.system.security.licensing.ClientInformation_Package;

package org.allbinary.logic.system.security.licensing.AbeClientInformation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbeClientInformation is tagged;
   type AbeClientInformation_Access is access all AbeClientInformation'Class;
   type AbeClientInformation_Access_Array is array (Natural range <>) of AbeClientInformation_Access;
   type AbeClientInformation_Access_Array_Access is access all AbeClientInformation_Access_Array;
   type AbeClientInformation_Access_Array_Access_Array is array (Natural range <>) of AbeClientInformation_Access_Array_Access;
   type AbeClientInformation_Access_Array_Access_Array_Access is access all AbeClientInformation_Access_Array_Access_Array;

   type AbeClientInformation is new ClientInformation with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AbeClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return AbeClientInformation_Access;
   procedure init (This : in out AbeClientInformation);

end org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;


