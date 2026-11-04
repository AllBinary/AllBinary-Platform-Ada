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

limited with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;
package org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References is
   type AbeClientInformation_Access is access all org.allbinary.logic.system.security.licensing.AbeClientInformation_Package.AbeClientInformation'Class;
   type AbeClientInformation_Access_Array is array (Natural range <>) of AbeClientInformation_Access;
   type AbeClientInformation_Access_Array_Access is access all AbeClientInformation_Access_Array;
   type AbeClientInformation_Access_Array_Access_Array is array (Natural range <>) of AbeClientInformation_Access_Array_Access;
   type AbeClientInformation_Access_Array_Access_Array_Access is access all AbeClientInformation_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References;

with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References;
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
with org.allbinary.logic.system.security.licensing.ClientInformation_Package; use org.allbinary.logic.system.security.licensing.ClientInformation_Package;

package org.allbinary.logic.system.security.licensing.AbeClientInformation_Package is

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


   subtype AbeClientInformation_Access is org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References.AbeClientInformation_Access;
   function "=" (Left, Right : AbeClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References."=";
   subtype AbeClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References.AbeClientInformation_Access_Array;
   function "=" (Left, Right : AbeClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References."=";
   subtype AbeClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References.AbeClientInformation_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References."=";
   subtype AbeClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References.AbeClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References."=";
   subtype AbeClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References.AbeClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformation_Package_References."=";

   type AbeClientInformation is new ClientInformation with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AbeClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return AbeClientInformation_Access;
   procedure init (This : in out AbeClientInformation);

end org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;


