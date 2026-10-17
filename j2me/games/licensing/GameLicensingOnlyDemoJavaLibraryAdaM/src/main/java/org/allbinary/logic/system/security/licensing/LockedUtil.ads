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
with org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package; use org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;

package org.allbinary.logic.system.security.licensing.LockedUtil_Package is


   type LockedUtil is tagged;
   type LockedUtil_Access is access all LockedUtil'Class;
   type LockedUtil_Access_Array is array (Natural range <>) of LockedUtil_Access;
   type LockedUtil_Access_Array_Access is access all LockedUtil_Access_Array;

   type LockedUtil is new LockedUtilInterface with null record;
   instance : LockedUtil_Access;

   procedure Initialize (This : in out LockedUtil'Class);
   function Create return LockedUtil_Access;
   function getInstance return LockedUtil_Access;
   function isLocked (This : in out LockedUtil) return Boolean;
   function isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean;
   procedure isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class);

end org.allbinary.logic.system.security.licensing.LockedUtil_Package;


