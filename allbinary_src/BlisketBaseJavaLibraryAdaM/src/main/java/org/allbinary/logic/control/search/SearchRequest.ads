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

limited with org.allbinary.logic.control.search.SearchRequest_Package;
package org.allbinary.logic.control.search.SearchRequest_Package_References is
   type SearchRequest_Access is access all org.allbinary.logic.control.search.SearchRequest_Package.SearchRequest'Class;
   type SearchRequest_Access_Array is array (Natural range <>) of SearchRequest_Access;
   type SearchRequest_Access_Array_Access is access all SearchRequest_Access_Array;
   type SearchRequest_Access_Array_Access_Array is array (Natural range <>) of SearchRequest_Access_Array_Access;
   type SearchRequest_Access_Array_Access_Array_Access is access all SearchRequest_Access_Array_Access_Array;
end org.allbinary.logic.control.search.SearchRequest_Package_References;

with org.allbinary.logic.control.search.SearchRequest_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchParams_Package_References;

package org.allbinary.logic.control.search.SearchRequest_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
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
   subtype SearchParams_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access;
   use type SearchParams_Access;
   subtype SearchParams_Access_Array is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array;
   use type SearchParams_Access_Array;
   subtype SearchParams_Access_Array_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access;
   use type SearchParams_Access_Array_Access;
   subtype SearchParams_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access_Array;
   use type SearchParams_Access_Array_Access_Array;
   subtype SearchParams_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access_Array_Access;
   use type SearchParams_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   function "=" (Left, Right : SearchRequest_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";

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


