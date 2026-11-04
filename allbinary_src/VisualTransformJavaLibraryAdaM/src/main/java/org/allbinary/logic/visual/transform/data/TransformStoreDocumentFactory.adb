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


with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package; use org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;
with org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;

package body org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package is

   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   function "=" (Left, Right : WeblisketSession_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   function "=" (Left, Right : WeblisketSession_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
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
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
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
      Java_Result : constant TransformDocumentInterface_Access := getInstance (pageContext_Param => pageContext_Param, weblisketSession_Param => weblisketSession_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      Java_Result : constant TransformDocumentInterface_Access := getInstance (searchRequest_Param => searchRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;


