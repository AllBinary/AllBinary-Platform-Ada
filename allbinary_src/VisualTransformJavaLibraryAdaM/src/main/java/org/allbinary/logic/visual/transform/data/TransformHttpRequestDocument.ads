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

limited with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;
package org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References is
   type TransformHttpRequestDocument_Access is access all org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package.TransformHttpRequestDocument'Class;
   type TransformHttpRequestDocument_Access_Array is array (Natural range <>) of TransformHttpRequestDocument_Access;
   type TransformHttpRequestDocument_Access_Array_Access is access all TransformHttpRequestDocument_Access_Array;
   type TransformHttpRequestDocument_Access_Array_Access_Array is array (Natural range <>) of TransformHttpRequestDocument_Access_Array_Access;
   type TransformHttpRequestDocument_Access_Array_Access_Array_Access is access all TransformHttpRequestDocument_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References;

with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;

package org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   use type WeblisketSession_Access;
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   use type WeblisketSession_Access_Array;
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access;
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   use type WeblisketSession_Access_Array_Access_Array;
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformHttpRequestDocument_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References.TransformHttpRequestDocument_Access;
   function "=" (Left, Right : TransformHttpRequestDocument_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References."=";
   subtype TransformHttpRequestDocument_Access_Array is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References.TransformHttpRequestDocument_Access_Array;
   function "=" (Left, Right : TransformHttpRequestDocument_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References."=";
   subtype TransformHttpRequestDocument_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References.TransformHttpRequestDocument_Access_Array_Access;
   function "=" (Left, Right : TransformHttpRequestDocument_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References."=";
   subtype TransformHttpRequestDocument_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References.TransformHttpRequestDocument_Access_Array_Access_Array;
   function "=" (Left, Right : TransformHttpRequestDocument_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References."=";
   subtype TransformHttpRequestDocument_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References.TransformHttpRequestDocument_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformHttpRequestDocument_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package_References."=";

   type TransformHttpRequestDocument is new Java_Object and TransformDocumentInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      baseNode : Node_Access;
      document : Document_Access;
   end record;
   language : Unbounded_String;
   local : Unbounded_String;

   procedure Initialize (This : in out TransformHttpRequestDocument'Class; pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class);
   function Create (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformHttpRequestDocument_Access;
   procedure Initialize (This : in out TransformHttpRequestDocument'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformHttpRequestDocument_Access;
   function getBaseNode (This : in out TransformHttpRequestDocument) return Node_Access;
   function getDoc (This : in out TransformHttpRequestDocument) return Document_Access;
   function log (This : in out TransformHttpRequestDocument) return Unbounded_String;

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;


