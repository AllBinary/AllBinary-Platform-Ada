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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package; use org.allbinary.logic.system.security.licensing.LicenseType_Package;

package org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AbeLicenseInterface is interface;
   type AbeLicenseInterface_Access is access all AbeLicenseInterface'Class;
   type AbeLicenseInterface_Access_Array is array (Natural range <>) of AbeLicenseInterface_Access;
   type AbeLicenseInterface_Access_Array_Access is access all AbeLicenseInterface_Access_Array;
   function hasKey (This : in out AbeLicenseInterface) return Boolean is abstract;
   function getKey (This : in out AbeLicenseInterface; keyName : Unbounded_String) return Unbounded_String is abstract;
   function getLicenseId (This : in out AbeLicenseInterface) return Unbounded_String is abstract;
   function getServers (This : in out AbeLicenseInterface) return BasicArrayList_Access is abstract;
   function getSpecial (This : in out AbeLicenseInterface) return Unbounded_String is abstract;
   function getLicenseType (This : in out AbeLicenseInterface) return LicenseType_Access is abstract;
   function isValid (This : in out AbeLicenseInterface) return Boolean is abstract;
   function toString (This : in out AbeLicenseInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;


