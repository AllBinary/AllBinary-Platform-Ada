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


package body org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package is

   procedure Initialize_Fields (This : in out TransformHttpRequestDocumentFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformHttpRequestDocumentFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformHttpRequestDocumentFactory_Access is
      This : constant TransformHttpRequestDocumentFactory_Access := new TransformHttpRequestDocumentFactory;
   begin
      TransformHttpRequestDocumentFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) return TransformDocumentInterface_Access is
   begin
        return TransformDocumentInterface_Access (TransformHttpRequestDocument_Package.Create (pageContext, weblisketSession));
   end getInstance;

   procedure getInstance (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (pageContext, weblisketSession);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;


