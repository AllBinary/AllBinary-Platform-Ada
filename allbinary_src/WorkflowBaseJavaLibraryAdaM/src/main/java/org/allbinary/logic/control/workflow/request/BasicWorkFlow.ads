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
with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.control.workflow.request.BasicWorkFlow_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package WorkFlowData_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicWorkFlow is tagged;
   type BasicWorkFlow_Access is access all BasicWorkFlow'Class;
   type BasicWorkFlow_Access_Array is array (Natural range <>) of BasicWorkFlow_Access;
   type BasicWorkFlow_Access_Array_Access is access all BasicWorkFlow_Access_Array;

   type BasicWorkFlow is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      workFlowDoc : Document_Access;
      workFlowName : Unbounded_String;
      storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicWorkFlow'Class);
   function Create return BasicWorkFlow_Access;
   procedure Initialize (This : in out BasicWorkFlow'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return BasicWorkFlow_Access;
   procedure Initialize (This : in out BasicWorkFlow'Class; hashMap_Param : access HashMap'Class);
   function Create (hashMap_Param : access HashMap'Class) return BasicWorkFlow_Access;
   function getName (This : in out BasicWorkFlow) return Unbounded_String;
   function getStoreName (This : in out BasicWorkFlow) return Unbounded_String;
   function getKey (This : in out BasicWorkFlow) return Java_Object_Access;
   function toVector (This : in out BasicWorkFlow) return BasicArrayList_Access;
   function toHashMap (This : in out BasicWorkFlow) return HashMap_Access;
   function toXmlNode (This : in out BasicWorkFlow; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicWorkFlow; document_Param : access Document'Class);
   function toXmlDoc (This : in out BasicWorkFlow) return Document_Access;
   function isValid (This : in out BasicWorkFlow) return Boolean;
   function validationInfo (This : in out BasicWorkFlow) return Unbounded_String;
   function toValidationInfoDoc (This : in out BasicWorkFlow) return Document_Access;
   function toValidationInfoNode (This : in out BasicWorkFlow; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out BasicWorkFlow; document_Param : access Document'Class);

end org.allbinary.logic.control.workflow.request.BasicWorkFlow_Package;


