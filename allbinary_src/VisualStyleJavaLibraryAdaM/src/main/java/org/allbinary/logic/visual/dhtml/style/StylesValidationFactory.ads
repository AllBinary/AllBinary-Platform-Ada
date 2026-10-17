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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.dhtml.style.StyleData_Package; use org.allbinary.logic.visual.dhtml.style.StyleData_Package;

package org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package NameSpaceRequestParamData_Package renames Standard.org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CssElementData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
   package CssElementsValidationFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type StylesValidationFactory is tagged;
   type StylesValidationFactory_Access is access all StylesValidationFactory'Class;
   type StylesValidationFactory_Access_Array is array (Natural range <>) of StylesValidationFactory_Access;
   type StylesValidationFactory_Access_Array_Access is access all StylesValidationFactory_Access_Array;

   type StylesValidationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StylesValidationFactory_Access;

   procedure Initialize (This : in out StylesValidationFactory'Class);
   function Create return StylesValidationFactory_Access;
   function getInstance return StylesValidationFactory_Access;
   function getInstance (This : in out StylesValidationFactory; document_Param : access Document'Class) return BasicArrayList_Access;
   procedure getInstance (This : in out StylesValidationFactory; document_Param : access Document'Class);
   function getInstance (hashMap_Param : access HashMap'Class) return BasicArrayList_Access;
   procedure getInstance (hashMap_Param : access HashMap'Class);

end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;


