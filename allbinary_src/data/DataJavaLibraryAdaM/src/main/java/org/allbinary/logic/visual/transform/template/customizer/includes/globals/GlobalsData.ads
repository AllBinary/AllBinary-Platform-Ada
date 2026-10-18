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

package org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package is


   type GlobalsData is tagged;
   type GlobalsData_Access is access all GlobalsData'Class;
   type GlobalsData_Access_Array is array (Natural range <>) of GlobalsData_Access;
   type GlobalsData_Access_Array_Access is access all GlobalsData_Access_Array;
   type GlobalsData_Access_Array_Access_Array is array (Natural range <>) of GlobalsData_Access_Array_Access;
   type GlobalsData_Access_Array_Access_Array_Access is access all GlobalsData_Access_Array_Access_Array;

   type GlobalsData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GlobalsData'Class);
   function Create return GlobalsData_Access;

end org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package;


