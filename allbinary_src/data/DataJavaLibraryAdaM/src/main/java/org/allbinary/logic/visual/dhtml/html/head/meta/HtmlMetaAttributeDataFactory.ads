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
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package is


   type HtmlMetaAttributeDataFactory is tagged;
   type HtmlMetaAttributeDataFactory_Access is access all HtmlMetaAttributeDataFactory'Class;
   type HtmlMetaAttributeDataFactory_Access_Array is array (Natural range <>) of HtmlMetaAttributeDataFactory_Access;
   type HtmlMetaAttributeDataFactory_Access_Array_Access is access all HtmlMetaAttributeDataFactory_Access_Array;

   type HtmlMetaAttributeDataFactory is new Java_Object with record
      NAME : HtmlMetaAttributeData_Access;
      HTTP_EQUIV : HtmlMetaAttributeData_Access;
      CONTENT : HtmlMetaAttributeData_Access;
   end record;
   instance : HtmlMetaAttributeDataFactory_Access;

   procedure Initialize (This : in out HtmlMetaAttributeDataFactory'Class);
   function Create return HtmlMetaAttributeDataFactory_Access;
   function getInstance return HtmlMetaAttributeDataFactory_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;


