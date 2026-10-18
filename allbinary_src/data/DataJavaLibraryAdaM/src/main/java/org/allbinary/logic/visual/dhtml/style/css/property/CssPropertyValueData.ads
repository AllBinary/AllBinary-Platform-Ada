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

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package is


   type CssPropertyValueData is tagged;
   type CssPropertyValueData_Access is access all CssPropertyValueData'Class;
   type CssPropertyValueData_Access_Array is array (Natural range <>) of CssPropertyValueData_Access;
   type CssPropertyValueData_Access_Array_Access is access all CssPropertyValueData_Access_Array;
   type CssPropertyValueData_Access_Array_Access_Array is array (Natural range <>) of CssPropertyValueData_Access_Array_Access;
   type CssPropertyValueData_Access_Array_Access_Array_Access is access all CssPropertyValueData_Access_Array_Access_Array;

   type CssPropertyValueData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : CssPropertyValueData_Access;

   procedure Initialize (This : in out CssPropertyValueData'Class);
   function Create return CssPropertyValueData_Access;
   function getInstance return CssPropertyValueData_Access;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package;


