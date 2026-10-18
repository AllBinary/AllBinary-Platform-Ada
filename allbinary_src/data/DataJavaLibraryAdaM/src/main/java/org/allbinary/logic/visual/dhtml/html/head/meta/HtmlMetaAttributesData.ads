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

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package is


   type HtmlMetaAttributesData is tagged;
   type HtmlMetaAttributesData_Access is access all HtmlMetaAttributesData'Class;
   type HtmlMetaAttributesData_Access_Array is array (Natural range <>) of HtmlMetaAttributesData_Access;
   type HtmlMetaAttributesData_Access_Array_Access is access all HtmlMetaAttributesData_Access_Array;
   type HtmlMetaAttributesData_Access_Array_Access_Array is array (Natural range <>) of HtmlMetaAttributesData_Access_Array_Access;
   type HtmlMetaAttributesData_Access_Array_Access_Array_Access is access all HtmlMetaAttributesData_Access_Array_Access_Array;

   type HtmlMetaAttributesData is new Java_Object with record
      NAME_VALUE : Unbounded_String;
      HTTP_EQUIV_VALUE : Unbounded_String;
   end record;
   instance : HtmlMetaAttributesData_Access;

   procedure Initialize (This : in out HtmlMetaAttributesData'Class);
   function Create return HtmlMetaAttributesData_Access;
   function getInstance return HtmlMetaAttributesData_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package;


