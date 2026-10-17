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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) return TransformDocumentInterface_Access is
   begin
        return TransformDocumentInterface_Access (TransformStoreDocument_Package.Create (pageContext, weblisketSession));
   end getInstance;

   --  throws Exception
   function getInstance (searchRequest : SearchRequest_Access) return TransformDocumentInterface_Access is
   begin
        return TransformDocumentInterface_Access (TransformStoreDocument_Package.Create (searchRequest));
   end getInstance;

   procedure getInstance (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (pageContext, weblisketSession);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (searchRequest : SearchRequest_Access) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (searchRequest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;


