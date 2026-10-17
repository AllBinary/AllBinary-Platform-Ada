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

package org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package is


   type HtmlHiddenInput is tagged;
   type HtmlHiddenInput_Access is access all HtmlHiddenInput'Class;
   type HtmlHiddenInput_Access_Array is array (Natural range <>) of HtmlHiddenInput_Access;
   type HtmlHiddenInput_Access_Array_Access is access all HtmlHiddenInput_Access_Array;

   type HtmlHiddenInput is new Java_Object with null record;

   procedure Initialize (This : in out HtmlHiddenInput'Class);
   function Create return HtmlHiddenInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package;


