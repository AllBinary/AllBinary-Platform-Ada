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

package org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package is


   type HtmlLengthInput is tagged;
   type HtmlLengthInput_Access is access all HtmlLengthInput'Class;
   type HtmlLengthInput_Access_Array is array (Natural range <>) of HtmlLengthInput_Access;
   type HtmlLengthInput_Access_Array_Access is access all HtmlLengthInput_Access_Array;
   type HtmlLengthInput_Access_Array_Access_Array is array (Natural range <>) of HtmlLengthInput_Access_Array_Access;
   type HtmlLengthInput_Access_Array_Access_Array_Access is access all HtmlLengthInput_Access_Array_Access_Array;

   type HtmlLengthInput is new HtmlValueInput with record
      MAXLENGTH : Unbounded_String;
      SIZE : Unbounded_String;
      length : Unbounded_String;
      size_Case : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlLengthInput'Class; before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlLengthInput_Access;
   procedure setMaxLength (This : in out HtmlLengthInput; length : Integer);
   procedure setSize (This : in out HtmlLengthInput; size : Integer);

end org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package;


