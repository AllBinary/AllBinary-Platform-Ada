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

package org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package is


   type CssElementData is tagged;
   type CssElementData_Access is access all CssElementData'Class;
   type CssElementData_Access_Array is array (Natural range <>) of CssElementData_Access;
   type CssElementData_Access_Array_Access is access all CssElementData_Access_Array;

   type CssElementData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : CssElementData_Access;

   procedure Initialize (This : in out CssElementData'Class);
   function Create return CssElementData_Access;
   function getInstance return CssElementData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;


