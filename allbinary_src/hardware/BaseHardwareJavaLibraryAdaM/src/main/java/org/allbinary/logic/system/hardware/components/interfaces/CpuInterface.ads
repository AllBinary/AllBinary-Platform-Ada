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

package org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package is


   type CpuInterface is interface;
   type CpuInterface_Access is access all CpuInterface'Class;
   type CpuInterface_Access_Array is array (Natural range <>) of CpuInterface_Access;
   type CpuInterface_Access_Array_Access is access all CpuInterface_Access_Array;
   type CpuInterface_Access_Array_Access_Array is array (Natural range <>) of CpuInterface_Access_Array_Access;
   type CpuInterface_Access_Array_Access_Array_Access is access all CpuInterface_Access_Array_Access_Array;
   function getProcessor (This : in out CpuInterface) return Unbounded_String is abstract;
   function getVendorId (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCpuFamily (This : in out CpuInterface) return Unbounded_String is abstract;
   function getModel (This : in out CpuInterface) return Unbounded_String is abstract;
   function getModelName (This : in out CpuInterface) return Unbounded_String is abstract;
   function getStepping (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCpuSpeed (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCacheSize (This : in out CpuInterface) return Unbounded_String is abstract;
   function compareTo (This : in out CpuInterface; cpuInterface_Param : access CpuInterface_Package.CpuInterface'Class) return Boolean is abstract;

end org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;


