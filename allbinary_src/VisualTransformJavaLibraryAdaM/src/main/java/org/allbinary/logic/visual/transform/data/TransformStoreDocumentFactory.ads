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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;

package org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;

   type TransformStoreDocumentFactory is tagged;
   type TransformStoreDocumentFactory_Access is access all TransformStoreDocumentFactory'Class;
   type TransformStoreDocumentFactory_Access_Array is array (Natural range <>) of TransformStoreDocumentFactory_Access;
   type TransformStoreDocumentFactory_Access_Array_Access is access all TransformStoreDocumentFactory_Access_Array;
   type TransformStoreDocumentFactory_Access_Array_Access_Array is array (Natural range <>) of TransformStoreDocumentFactory_Access_Array_Access;
   type TransformStoreDocumentFactory_Access_Array_Access_Array_Access is access all TransformStoreDocumentFactory_Access_Array_Access_Array;

   type TransformStoreDocumentFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformStoreDocumentFactory'Class);
   function Create return TransformStoreDocumentFactory_Access;
   function getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformDocumentInterface_Access;
   procedure getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class);
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformDocumentInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);

end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;


