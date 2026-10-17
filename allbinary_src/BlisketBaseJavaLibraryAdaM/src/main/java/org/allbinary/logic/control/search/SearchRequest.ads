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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package org.allbinary.logic.control.search.SearchRequest_Package is

   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type SearchRequest is tagged;
   type SearchRequest_Access is access all SearchRequest'Class;
   type SearchRequest_Access_Array is array (Natural range <>) of SearchRequest_Access;
   type SearchRequest_Access_Array_Access is access all SearchRequest_Access_Array;

   type SearchRequest is new AbContext with record
      xslFile : Unbounded_String;
      pageName : Unbounded_String;
      contentType : Unbounded_String;
      searchParams : SearchParams_Access;
      storeFront : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out SearchRequest'Class; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return SearchRequest_Access;
   procedure setStoreFront (This : in out SearchRequest; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   procedure setParams (This : in out SearchRequest; searchParams_Param : access SearchParams_Package.SearchParams'Class);
   procedure setXslFile (This : in out SearchRequest; value : Unbounded_String);
   procedure setFileBaseName (This : in out SearchRequest; value : Unbounded_String);
   procedure setContentType (This : in out SearchRequest; value : Unbounded_String);
   function getStoreFront (This : in out SearchRequest) return StoreFrontInterface_Access;
   function getParams (This : in out SearchRequest) return SearchParams_Access;
   function getXslFile (This : in out SearchRequest) return Unbounded_String;
   function getFileBaseName (This : in out SearchRequest) return Unbounded_String;
   function getContentType (This : in out SearchRequest) return Unbounded_String;
   function getFileBaseNameNode (This : in out SearchRequest; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure getFileBaseNameNode (This : in out SearchRequest; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.control.search.SearchRequest_Package;


