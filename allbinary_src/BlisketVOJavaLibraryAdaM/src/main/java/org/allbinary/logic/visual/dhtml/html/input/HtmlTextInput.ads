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
with org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package;
with org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlTextInput_Package is


   type HtmlTextInput is tagged;
   type HtmlTextInput_Access is access all HtmlTextInput'Class;
   type HtmlTextInput_Access_Array is array (Natural range <>) of HtmlTextInput_Access;
   type HtmlTextInput_Access_Array_Access is access all HtmlTextInput_Access_Array;

   type HtmlTextInput is new HtmlLengthInput with null record;

   procedure Initialize (This : in out HtmlTextInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlTextInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlTextInput_Package;


