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


package body org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package is

   procedure Initialize_Fields (This : in out TransformStoreDocumentFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformStoreDocumentFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformStoreDocumentFactory_Access is
      This : constant TransformStoreDocumentFactory_Access := new TransformStoreDocumentFactory;
   begin
      TransformStoreDocumentFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformDocumentInterface_Access is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      weblisketSession : constant WeblisketSession_Access := WeblisketSession_Access (weblisketSession_Param);
   begin
        return TransformDocumentInterface_Access (TransformStoreDocument_Package.Create (pageContext, weblisketSession));
   end getInstance;

   --  throws Exception
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformDocumentInterface_Access is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
   begin
        return TransformDocumentInterface_Access (TransformStoreDocument_Package.Create (searchRequest));
   end getInstance;

   procedure getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (pageContext_Param, weblisketSession_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (searchRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;


