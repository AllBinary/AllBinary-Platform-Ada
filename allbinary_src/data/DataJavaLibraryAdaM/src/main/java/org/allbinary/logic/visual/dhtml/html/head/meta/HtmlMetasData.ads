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

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package is


   type HtmlMetasData is tagged;
   type HtmlMetasData_Access is access all HtmlMetasData'Class;
   type HtmlMetasData_Access_Array is array (Natural range <>) of HtmlMetasData_Access;
   type HtmlMetasData_Access_Array_Access is access all HtmlMetasData_Access_Array;
   type HtmlMetasData_Access_Array_Access_Array is array (Natural range <>) of HtmlMetasData_Access_Array_Access;
   type HtmlMetasData_Access_Array_Access_Array_Access is access all HtmlMetasData_Access_Array_Access_Array;

   type HtmlMetasData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : HtmlMetasData_Access;

   procedure Initialize (This : in out HtmlMetasData'Class);
   function Create return HtmlMetasData_Access;
   function getInstance return HtmlMetasData_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;


