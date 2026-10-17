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

package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package is


   type DisplayInBrowserContraintsInterface is interface;
   type DisplayInBrowserContraintsInterface_Access is access all DisplayInBrowserContraintsInterface'Class;
   type DisplayInBrowserContraintsInterface_Access_Array is array (Natural range <>) of DisplayInBrowserContraintsInterface_Access;
   type DisplayInBrowserContraintsInterface_Access_Array_Access is access all DisplayInBrowserContraintsInterface_Access_Array;
   function isMountable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   function isFrameable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   function isQuickFrameable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   procedure setMountable (This : in out DisplayInBrowserContraintsInterface; canBeMounted : Boolean) is abstract;
   procedure setFrameable (This : in out DisplayInBrowserContraintsInterface; canBeFramed : Boolean) is abstract;
   procedure setQuickFrameable (This : in out DisplayInBrowserContraintsInterface; canBeQuickFramed : Boolean) is abstract;
   procedure setMountedLink (This : in out DisplayInBrowserContraintsInterface; mountedLink : Unbounded_String) is abstract;
   function getMountedLink (This : in out DisplayInBrowserContraintsInterface) return Unbounded_String is abstract;

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;


