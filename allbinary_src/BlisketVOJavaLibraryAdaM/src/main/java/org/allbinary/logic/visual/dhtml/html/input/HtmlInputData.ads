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

package org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package is


   type HtmlInputData is tagged;
   type HtmlInputData_Access is access all HtmlInputData'Class;
   type HtmlInputData_Access_Array is array (Natural range <>) of HtmlInputData_Access;
   type HtmlInputData_Access_Array_Access is access all HtmlInputData_Access_Array;

   type HtmlInputData is new Java_Object with record
      TEXT : Unbounded_String;
      RADIO : Unbounded_String;
      CHECKBOX : Unbounded_String;
      HIDDEN : Unbounded_String;
      IMAGE : Unbounded_String;
      PASSWORD : Unbounded_String;
      RESET : Unbounded_String;
      SUBMIT : Unbounded_String;
      TYPES : Unbounded_String_Array_Access;
   end record;
   instance : HtmlInputData_Access;

   procedure Initialize (This : in out HtmlInputData'Class);
   function Create return HtmlInputData_Access;
   function getInstance return HtmlInputData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;


