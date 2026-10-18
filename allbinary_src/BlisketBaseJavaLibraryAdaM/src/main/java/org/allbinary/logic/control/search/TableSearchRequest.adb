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
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package body org.allbinary.logic.control.search.TableSearchRequest_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   procedure Initialize_Fields (This : in out TableSearchRequest'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TableSearchRequest'Class; keywords : Unbounded_String; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String) is
      searchParams : constant SearchParams_Access := SearchParams_Access (searchParams_Param);
   begin
      Initialize_Fields (This);
        This.keywords := keywords;
        This.searchParams := searchParams;
        This.xslFile := xslFile;
        This.pageName := This.pageName;
        This.contentType := contentType;
   end Initialize;

   function Create (keywords : Unbounded_String; searchParams_Param : access SearchParams_Package.SearchParams'Class; xslFile : Unbounded_String; contentType : Unbounded_String) return TableSearchRequest_Access is
      This : constant TableSearchRequest_Access := new TableSearchRequest;
   begin
      TableSearchRequest_Package.Initialize (This.all, keywords, searchParams_Param, xslFile, contentType);
      return This;
   end Create;

   procedure setKeywords (This : in out TableSearchRequest; value : Unbounded_String) is
   begin
        This.keywords := value;
   end setKeywords;

   procedure setParams (This : in out TableSearchRequest; searchParams_Param : access SearchParams_Package.SearchParams'Class) is
      searchParams : constant SearchParams_Access := SearchParams_Access (searchParams_Param);
   begin
        This.searchParams := searchParams;
   end setParams;

   procedure setXslFile (This : in out TableSearchRequest; value : Unbounded_String) is
   begin
        This.xslFile := value;
   end setXslFile;

   procedure setFileBaseName (This : in out TableSearchRequest; value : Unbounded_String) is
   begin
        This.pageName := value;
   end setFileBaseName;

   procedure setContentType (This : in out TableSearchRequest; value : Unbounded_String) is
   begin
        This.contentType := value;
   end setContentType;

   function getKeywords (This : in out TableSearchRequest) return Unbounded_String is
   begin
        return This.keywords;
   end getKeywords;

   function getParams (This : in out TableSearchRequest) return SearchParams_Access is
   begin
        return This.searchParams;
   end getParams;

   --  throws Exception
   function getXslFile (This : in out TableSearchRequest) return Unbounded_String is
      path : Unbounded_String;
   begin
        path := Java_Image ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH)) & This.xslFile;
        return path;
   end getXslFile;

   function getFileBaseName (This : in out TableSearchRequest) return Unbounded_String is
   begin
        return This.pageName;
   end getFileBaseName;

   function getContentType (This : in out TableSearchRequest) return Unbounded_String is
   begin
        return This.contentType;
   end getContentType;

   --  throws Exception
   function getFileBaseNameNode (This : in out TableSearchRequest; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.FILENAME, TableSearchRequest'Class (This).getFileBaseName);
   end getFileBaseNameNode;

   procedure getFileBaseNameNode (This : in out TableSearchRequest; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TableSearchRequest'Class (This).getFileBaseNameNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileBaseNameNode;

end org.allbinary.logic.control.search.TableSearchRequest_Package;


