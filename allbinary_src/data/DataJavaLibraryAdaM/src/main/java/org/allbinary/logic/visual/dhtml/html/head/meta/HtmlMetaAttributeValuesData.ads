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

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package is


   type HtmlMetaAttributeValuesData is tagged;
   type HtmlMetaAttributeValuesData_Access is access all HtmlMetaAttributeValuesData'Class;
   type HtmlMetaAttributeValuesData_Access_Array is array (Natural range <>) of HtmlMetaAttributeValuesData_Access;
   type HtmlMetaAttributeValuesData_Access_Array_Access is access all HtmlMetaAttributeValuesData_Access_Array;
   type HtmlMetaAttributeValuesData_Access_Array_Access_Array is array (Natural range <>) of HtmlMetaAttributeValuesData_Access_Array_Access;
   type HtmlMetaAttributeValuesData_Access_Array_Access_Array_Access is access all HtmlMetaAttributeValuesData_Access_Array_Access_Array;

   type HtmlMetaAttributeValuesData is new Java_Object with record
      ABSTRACT_Id : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      KEYWORDS : Unbounded_String;
   end record;
   instance : HtmlMetaAttributeValuesData_Access;

   procedure Initialize (This : in out HtmlMetaAttributeValuesData'Class);
   function Create return HtmlMetaAttributeValuesData_Access;
   function getInstance return HtmlMetaAttributeValuesData_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;


