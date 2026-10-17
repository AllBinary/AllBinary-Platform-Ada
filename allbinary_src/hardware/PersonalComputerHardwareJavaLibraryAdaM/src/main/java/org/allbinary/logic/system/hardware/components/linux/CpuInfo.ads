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

package org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package is


   type CpuInfo is tagged;
   type CpuInfo_Access is access all CpuInfo'Class;
   type CpuInfo_Access_Array is array (Natural range <>) of CpuInfo_Access;
   type CpuInfo_Access_Array_Access is access all CpuInfo_Access_Array;

   type CpuInfo is new Java_Object with record
      name : Unbounded_String;
   end record;
   PROCESSOR : CpuInfo_Access;
   VENDORID : CpuInfo_Access;
   CPUFAMILY : CpuInfo_Access;
   MODEL : CpuInfo_Access;
   MODELNAME : CpuInfo_Access;
   STEPPING : CpuInfo_Access;
   CPUMHZ : CpuInfo_Access;
   CACHESIZE : CpuInfo_Access;
   FDIVBUG : CpuInfo_Access;
   HLTBUG : CpuInfo_Access;
   F00FBUG : CpuInfo_Access;
   COMABUG : CpuInfo_Access;
   FPU : CpuInfo_Access;
   FPUEXCEPTION : CpuInfo_Access;
   CPUIDLEVEL : CpuInfo_Access;
   WP : CpuInfo_Access;
   FLAGS : CpuInfo_Access;
   BOGOMIPS : CpuInfo_Access;

   procedure Initialize (This : in out CpuInfo'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CpuInfo_Access;
   function toString (This : in out CpuInfo) return Unbounded_String;
   procedure toString (This : in out CpuInfo);

end org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package;


