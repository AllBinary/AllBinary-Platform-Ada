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

package org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package is


   type HtmlNameMathData is tagged;
   type HtmlNameMathData_Access is access all HtmlNameMathData'Class;
   type HtmlNameMathData_Access_Array is array (Natural range <>) of HtmlNameMathData_Access;
   type HtmlNameMathData_Access_Array_Access is access all HtmlNameMathData_Access_Array;
   type HtmlNameMathData_Access_Array_Access_Array is array (Natural range <>) of HtmlNameMathData_Access_Array_Access;
   type HtmlNameMathData_Access_Array_Access_Array_Access is access all HtmlNameMathData_Access_Array_Access_Array;

   type HtmlNameMathData is new Java_Object with record
      EQUALS : Unbounded_String;
      PLUS : Unbounded_String;
      MINUS : Unbounded_String;
      DIVIDE : Unbounded_String;
      MULTIPLY : Unbounded_String;
   end record;
   instance : HtmlNameMathData_Access;

   procedure Initialize (This : in out HtmlNameMathData'Class);
   function Create return HtmlNameMathData_Access;
   function getInstance return HtmlNameMathData_Access;

end org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;


