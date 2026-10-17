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

package org.allbinary.logic.visual.dhtml.style.color.ColorsData_Package is


   type ColorsData is tagged;
   type ColorsData_Access is access all ColorsData'Class;
   type ColorsData_Access_Array is array (Natural range <>) of ColorsData_Access;
   type ColorsData_Access_Array_Access is access all ColorsData_Access_Array;

   type ColorsData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : ColorsData_Access;

   procedure Initialize (This : in out ColorsData'Class);
   function Create return ColorsData_Access;
   function getInstance return ColorsData_Access;

end org.allbinary.logic.visual.dhtml.style.color.ColorsData_Package;


