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


with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;

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
   function getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformDocumentInterface_Access is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      weblisketSession : constant WeblisketSession_Access := WeblisketSession_Access (weblisketSession_Param);
   begin
        return TransformDocumentInterface_Access (TransformHttpRequestDocument_Package.Create (pageContext, weblisketSession));
   end getInstance;

   procedure getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (pageContext_Param => pageContext_Param, weblisketSession_Param => weblisketSession_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;


