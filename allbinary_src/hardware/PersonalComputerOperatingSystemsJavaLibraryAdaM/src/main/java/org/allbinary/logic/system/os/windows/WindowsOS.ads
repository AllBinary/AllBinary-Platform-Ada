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
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.windows.WindowsOS_Package is

   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;

   type WindowsOS is tagged;
   type WindowsOS_Access is access all WindowsOS'Class;
   type WindowsOS_Access_Array is array (Natural range <>) of WindowsOS_Access;
   type WindowsOS_Access_Array_Access is access all WindowsOS_Access_Array;

   type WindowsOS is new GenericOperatingSystem with null record;

   procedure Initialize (This : in out WindowsOS'Class);
   function Create return WindowsOS_Access;
   function isAutoHide (This : in out WindowsOS) return Boolean;

end org.allbinary.logic.system.os.windows.WindowsOS_Package;


