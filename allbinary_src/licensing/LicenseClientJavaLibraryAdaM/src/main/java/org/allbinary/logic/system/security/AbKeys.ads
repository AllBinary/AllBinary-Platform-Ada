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

limited with org.allbinary.logic.system.security.AbKeys_Package;
package org.allbinary.logic.system.security.AbKeys_Package_References is
   type AbKeys_Access is access all org.allbinary.logic.system.security.AbKeys_Package.AbKeys'Class;
   type AbKeys_Access_Array is array (Natural range <>) of AbKeys_Access;
   type AbKeys_Access_Array_Access is access all AbKeys_Access_Array;
   type AbKeys_Access_Array_Access_Array is array (Natural range <>) of AbKeys_Access_Array_Access;
   type AbKeys_Access_Array_Access_Array_Access is access all AbKeys_Access_Array_Access_Array;
end org.allbinary.logic.system.security.AbKeys_Package_References;

with org.allbinary.logic.system.security.AbKeys_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.logic.system.security.AbKeys_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbKeys_Access is org.allbinary.logic.system.security.AbKeys_Package_References.AbKeys_Access;
   function "=" (Left, Right : AbKeys_Access) return Boolean renames org.allbinary.logic.system.security.AbKeys_Package_References."=";
   subtype AbKeys_Access_Array is org.allbinary.logic.system.security.AbKeys_Package_References.AbKeys_Access_Array;
   function "=" (Left, Right : AbKeys_Access_Array) return Boolean renames org.allbinary.logic.system.security.AbKeys_Package_References."=";
   subtype AbKeys_Access_Array_Access is org.allbinary.logic.system.security.AbKeys_Package_References.AbKeys_Access_Array_Access;
   function "=" (Left, Right : AbKeys_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.AbKeys_Package_References."=";
   subtype AbKeys_Access_Array_Access_Array is org.allbinary.logic.system.security.AbKeys_Package_References.AbKeys_Access_Array_Access_Array;
   function "=" (Left, Right : AbKeys_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.AbKeys_Package_References."=";
   subtype AbKeys_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.AbKeys_Package_References.AbKeys_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbKeys_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.AbKeys_Package_References."=";

   type AbKeys is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AbKeys_Access;

   procedure Initialize (This : in out AbKeys'Class);
   function Create return AbKeys_Access;
   function getInstance return AbKeys_Access;
   function getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String);

end org.allbinary.logic.system.security.AbKeys_Package;


