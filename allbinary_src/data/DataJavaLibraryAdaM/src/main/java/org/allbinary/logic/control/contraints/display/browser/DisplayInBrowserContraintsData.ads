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

package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsData_Package is


   type DisplayInBrowserContraintsData is tagged;
   type DisplayInBrowserContraintsData_Access is access all DisplayInBrowserContraintsData'Class;
   type DisplayInBrowserContraintsData_Access_Array is array (Natural range <>) of DisplayInBrowserContraintsData_Access;
   type DisplayInBrowserContraintsData_Access_Array_Access is access all DisplayInBrowserContraintsData_Access_Array;

   type DisplayInBrowserContraintsData is new Java_Object with null record;
   NAME : Unbounded_String;
   FRAMEABLE : Unbounded_String;
   MOUNTABLE : Unbounded_String;
   QUICKFRAMEABLE : Unbounded_String;
   MOUNTABLELINK : Unbounded_String;

   procedure Initialize (This : in out DisplayInBrowserContraintsData'Class);
   function Create return DisplayInBrowserContraintsData_Access;

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsData_Package;


