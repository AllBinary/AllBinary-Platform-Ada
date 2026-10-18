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


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package body org.allbinary.logic.control.search.SearchRequest_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out SearchRequest'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SearchRequest'Class; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      storeFront : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFront_Param);
      searchParams : constant SearchParams_Access := SearchParams_Access (searchParams_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        AbContext_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        This.storeFront := storeFront;
        This.searchParams := searchParams;
        This.xslFile := xslFile;
        This.pageName := This.pageName;
        This.contentType := contentType;
   end Initialize;

   function Create (storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return SearchRequest_Access is
      This : constant SearchRequest_Access := new SearchRequest;
   begin
      SearchRequest_Package.Initialize (This.all, storeFront_Param, searchParams_Param, xslFile, contentType, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure setStoreFront (This : in out SearchRequest; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFront : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFront_Param);
   begin
        This.storeFront := storeFront;
   end setStoreFront;

   procedure setParams (This : in out SearchRequest; searchParams_Param : access SearchParams_Package.SearchParams'Class) is
      searchParams : constant SearchParams_Access := SearchParams_Access (searchParams_Param);
   begin
        This.searchParams := searchParams;
   end setParams;

   procedure setXslFile (This : in out SearchRequest; value : Unbounded_String) is
   begin
        This.xslFile := value;
   end setXslFile;

   procedure setFileBaseName (This : in out SearchRequest; value : Unbounded_String) is
   begin
        This.pageName := value;
   end setFileBaseName;

   procedure setContentType (This : in out SearchRequest; value : Unbounded_String) is
   begin
        This.contentType := value;
   end setContentType;

   function getStoreFront (This : in out SearchRequest) return StoreFrontInterface_Access is
   begin
        return This.storeFront;
   end getStoreFront;

   function getParams (This : in out SearchRequest) return SearchParams_Access is
   begin
        return This.searchParams;
   end getParams;

   function getXslFile (This : in out SearchRequest) return Unbounded_String is
   begin
        return This.xslFile;
   end getXslFile;

   function getFileBaseName (This : in out SearchRequest) return Unbounded_String is
   begin
        return This.pageName;
   end getFileBaseName;

   function getContentType (This : in out SearchRequest) return Unbounded_String is
   begin
        return This.contentType;
   end getContentType;

   --  throws Exception
   function getFileBaseNameNode (This : in out SearchRequest; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.FILENAME, SearchRequest'Class (This).getFileBaseName);
   end getFileBaseNameNode;

   procedure getFileBaseNameNode (This : in out SearchRequest; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := SearchRequest'Class (This).getFileBaseNameNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileBaseNameNode;

end org.allbinary.logic.control.search.SearchRequest_Package;


