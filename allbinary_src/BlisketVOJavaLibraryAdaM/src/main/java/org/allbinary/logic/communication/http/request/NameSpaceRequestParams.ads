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

limited with org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package;
package org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References is
   type NameSpaceRequestParams_Access is access all org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package.NameSpaceRequestParams'Class;
   type NameSpaceRequestParams_Access_Array is array (Natural range <>) of NameSpaceRequestParams_Access;
   type NameSpaceRequestParams_Access_Array_Access is access all NameSpaceRequestParams_Access_Array;
   type NameSpaceRequestParams_Access_Array_Access_Array is array (Natural range <>) of NameSpaceRequestParams_Access_Array_Access;
   type NameSpaceRequestParams_Access_Array_Access_Array_Access is access all NameSpaceRequestParams_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References;

with org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
limited with org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References;

package org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype NameSpaceRequestParam_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access;
   use type NameSpaceRequestParam_Access;
   subtype NameSpaceRequestParam_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array;
   use type NameSpaceRequestParam_Access_Array;
   subtype NameSpaceRequestParam_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access;
   use type NameSpaceRequestParam_Access_Array_Access;
   subtype NameSpaceRequestParam_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access_Array;
   use type NameSpaceRequestParam_Access_Array_Access_Array;
   subtype NameSpaceRequestParam_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access_Array_Access;
   use type NameSpaceRequestParam_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NameSpaceRequestParams_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References.NameSpaceRequestParams_Access;
   function "=" (Left, Right : NameSpaceRequestParams_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References."=";
   subtype NameSpaceRequestParams_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References.NameSpaceRequestParams_Access_Array;
   function "=" (Left, Right : NameSpaceRequestParams_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References."=";
   subtype NameSpaceRequestParams_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References.NameSpaceRequestParams_Access_Array_Access;
   function "=" (Left, Right : NameSpaceRequestParams_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References."=";
   subtype NameSpaceRequestParams_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References.NameSpaceRequestParams_Access_Array_Access_Array;
   function "=" (Left, Right : NameSpaceRequestParams_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References."=";
   subtype NameSpaceRequestParams_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References.NameSpaceRequestParams_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NameSpaceRequestParams_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package_References."=";

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


