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

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package is


   type CssPropertyData is tagged;
   type CssPropertyData_Access is access all CssPropertyData'Class;
   type CssPropertyData_Access_Array is array (Natural range <>) of CssPropertyData_Access;
   type CssPropertyData_Access_Array_Access is access all CssPropertyData_Access_Array;

   type CssPropertyData is new Java_Object with record
      NAME : Unbounded_String;
      VALUES : Unbounded_String;
   end record;
   instance : CssPropertyData_Access;

   procedure Initialize (This : in out CssPropertyData'Class);
   function Create return CssPropertyData_Access;
   function getInstance return CssPropertyData_Access;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package;


