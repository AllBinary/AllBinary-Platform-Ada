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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;

package org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type NameSpaceRequestParams is tagged;
   type NameSpaceRequestParams_Access is access all NameSpaceRequestParams'Class;
   type NameSpaceRequestParams_Access_Array is array (Natural range <>) of NameSpaceRequestParams_Access;
   type NameSpaceRequestParams_Access_Array_Access is access all NameSpaceRequestParams_Access_Array;

   type NameSpaceRequestParams is new RequestParams with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NameSpaceRequestParams'Class);
   function Create return NameSpaceRequestParams_Access;
   procedure Initialize (This : in out NameSpaceRequestParams'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return NameSpaceRequestParams_Access;
   procedure Initialize (This : in out NameSpaceRequestParams'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return NameSpaceRequestParams_Access;
   function createPackageNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createPackageNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function createPackageMultiNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createPackageMultiNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function getRootNode (This : in out NameSpaceRequestParams; rootElementPackage : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getRootNode (This : in out NameSpaceRequestParams; rootElementPackage : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; document_Param : access Document_Package.Document'Class);
   function addNewProperties (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure addNewProperties (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function isElementValueTextNodeEqual (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; node_Param : access Node_Package.Node'Class) return Boolean;
   procedure isElementValueTextNodeEqual (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; node_Param : access Node_Package.Node'Class);
   function isElementValueTextNodeUnique (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; elementNodeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer;
   procedure isElementValueTextNodeUnique (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; elementNodeVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function addChildren (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; rootNode_Param : access Node_Package.Node'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class) return Document_Access;
   procedure addChildren (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; rootNode_Param : access Node_Package.Node'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class);
   function addNameSpace (This : in out NameSpaceRequestParams; key : Unbounded_String; value : Unbounded_String; document_Param : access Document_Package.Document'Class) return Document_Access;
   procedure addNameSpace (This : in out NameSpaceRequestParams; key : Unbounded_String; value : Unbounded_String; document_Param : access Document_Package.Document'Class);
   function toHashMap (This : in out NameSpaceRequestParams) return HashMap_Access;

end org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package;


