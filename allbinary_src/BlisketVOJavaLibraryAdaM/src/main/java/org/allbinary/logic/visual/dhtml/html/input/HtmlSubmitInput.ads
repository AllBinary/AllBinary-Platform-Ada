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
with org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;
with org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package is


   type HtmlSubmitInput is tagged;
   type HtmlSubmitInput_Access is access all HtmlSubmitInput'Class;
   type HtmlSubmitInput_Access_Array is array (Natural range <>) of HtmlSubmitInput_Access;
   type HtmlSubmitInput_Access_Array_Access is access all HtmlSubmitInput_Access_Array;

   type HtmlSubmitInput is new HtmlValueInput with null record;

   procedure Initialize (This : in out HtmlSubmitInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlSubmitInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package;


