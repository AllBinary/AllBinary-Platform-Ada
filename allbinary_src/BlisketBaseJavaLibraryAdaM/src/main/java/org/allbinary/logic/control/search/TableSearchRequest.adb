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


package body org.allbinary.logic.control.search.TableSearchRequest_Package is

   procedure Initialize_Fields (This : in out TableSearchRequest'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TableSearchRequest'Class; keywords : Unbounded_String; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.keywords := keywords;
        This.searchParams := searchParams;
        This.xslFile := xslFile;
        This.pageName := This.pageName;
        This.contentType := contentType;
   end Initialize;

   function Create (keywords : Unbounded_String; searchParams : SearchParams_Access; xslFile : Unbounded_String; contentType : Unbounded_String) return TableSearchRequest_Access is
      This : constant TableSearchRequest_Access := new TableSearchRequest;
   begin
      TableSearchRequest_Package.Initialize (This.all, keywords, searchParams, xslFile, contentType);
      return This;
   end Create;

   procedure setKeywords (This : in out TableSearchRequest; value : Unbounded_String) is
   begin
        This.keywords := value;
   end setKeywords;

   procedure setParams (This : in out TableSearchRequest; searchParams : SearchParams_Access) is
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
        path := Java_Image ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH)) & This.xslFile;
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
   function getFileBaseNameNode (This : in out TableSearchRequest; document : Document_Access) return Node_Access is
   begin
        return ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.FILENAME, This.getFileBaseName);
   end getFileBaseNameNode;

   procedure getFileBaseNameNode (This : in out TableSearchRequest; document : Document_Access) is
      Java_Result : constant Node_Access := TableSearchRequest'Class (This).getFileBaseNameNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileBaseNameNode;

end org.allbinary.logic.control.search.TableSearchRequest_Package;


