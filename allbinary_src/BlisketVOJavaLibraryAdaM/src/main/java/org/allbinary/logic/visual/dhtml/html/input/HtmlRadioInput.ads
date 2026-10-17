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
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlRadioInput_Package is

   package BooleanFactory_Package renames org.allbinary.logic.java.bool.BooleanFactory_Package;

   type HtmlRadioInput is tagged;
   type HtmlRadioInput_Access is access all HtmlRadioInput'Class;
   type HtmlRadioInput_Access_Array is array (Natural range <>) of HtmlRadioInput_Access;
   type HtmlRadioInput_Access_Array_Access is access all HtmlRadioInput_Access_Array;

   type HtmlRadioInput is new HtmlValueInput with record
      CHECKED : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlRadioInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlRadioInput_Access;
   procedure setSelected (This : in out HtmlRadioInput);

end org.allbinary.logic.visual.dhtml.html.input.HtmlRadioInput_Package;


