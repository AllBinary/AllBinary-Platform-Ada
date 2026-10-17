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

package org.allbinary.logic.control.search.SearchRequest_Package is

   package AbContext_Package renames org.allbinary.business.context.AbContext_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

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

   procedure Initialize (This : in out SearchRequest'Class; storeFront : StoreFrontInterface_Access; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (storeFront : StoreFrontInterface_Access; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return SearchRequest_Access;
   procedure setStoreFront (This : in out SearchRequest; storeFront : StoreFrontInterface_Access);
   procedure setParams (This : in out SearchRequest; searchParams : SearchParams_Access);
   procedure setXslFile (This : in out SearchRequest; value : Unbounded_String);
   procedure setFileBaseName (This : in out SearchRequest; value : Unbounded_String);
   procedure setContentType (This : in out SearchRequest; value : Unbounded_String);
   function getStoreFront (This : in out SearchRequest) return StoreFrontInterface_Access;
   procedure getStoreFront (This : in out SearchRequest);
   function getParams (This : in out SearchRequest) return SearchParams_Access;
   procedure getParams (This : in out SearchRequest);
   function getXslFile (This : in out SearchRequest) return Unbounded_String;
   procedure getXslFile (This : in out SearchRequest);
   function getFileBaseName (This : in out SearchRequest) return Unbounded_String;
   procedure getFileBaseName (This : in out SearchRequest);
   function getContentType (This : in out SearchRequest) return Unbounded_String;
   procedure getContentType (This : in out SearchRequest);
   function getFileBaseNameNode (This : in out SearchRequest; document : Document_Access) return Node_Access;
   procedure getFileBaseNameNode (This : in out SearchRequest; document : Document_Access);

end org.allbinary.logic.control.search.SearchRequest_Package;


