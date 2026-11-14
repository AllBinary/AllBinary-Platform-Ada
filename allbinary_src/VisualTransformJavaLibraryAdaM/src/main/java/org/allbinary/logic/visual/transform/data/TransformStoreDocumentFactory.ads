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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
package org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References is
   type TransformStoreDocumentFactory_Access is access all org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package.TransformStoreDocumentFactory'Class;
   type TransformStoreDocumentFactory_Access_Array is array (Natural range <>) of TransformStoreDocumentFactory_Access;
   type TransformStoreDocumentFactory_Access_Array_Access is access all TransformStoreDocumentFactory_Access_Array;
   type TransformStoreDocumentFactory_Access_Array_Access_Array is array (Natural range <>) of TransformStoreDocumentFactory_Access_Array_Access;
   type TransformStoreDocumentFactory_Access_Array_Access_Array_Access is access all TransformStoreDocumentFactory_Access_Array_Access_Array;
   type TransformStoreDocumentFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformStoreDocumentFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformStoreDocumentFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformStoreDocumentFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformStoreDocumentFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformStoreDocumentFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformStoreDocumentFactory_Access_Array_Object'Class then TransformStoreDocumentFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformStoreDocumentFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformStoreDocumentFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformStoreDocumentFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformStoreDocumentFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformStoreDocumentFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformStoreDocumentFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformStoreDocumentFactory_Access_Array_Access_Array_Object'Class then TransformStoreDocumentFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References;

with org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;

package org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
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
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformStoreDocumentFactory_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.TransformStoreDocumentFactory_Access;
   function "=" (Left, Right : TransformStoreDocumentFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References."=";
   subtype TransformStoreDocumentFactory_Access_Array is org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.TransformStoreDocumentFactory_Access_Array;
   function "=" (Left, Right : TransformStoreDocumentFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References."=";
   subtype TransformStoreDocumentFactory_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.TransformStoreDocumentFactory_Access_Array_Access;
   function "=" (Left, Right : TransformStoreDocumentFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References."=";
   function Java_Box (Value : TransformStoreDocumentFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.Java_Box;
   function Java_Unbox_TransformStoreDocumentFactory_Access_Array (Value : access Java_Object'Class) return TransformStoreDocumentFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.Java_Unbox_TransformStoreDocumentFactory_Access_Array;
   subtype TransformStoreDocumentFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.TransformStoreDocumentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformStoreDocumentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References."=";
   subtype TransformStoreDocumentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.TransformStoreDocumentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformStoreDocumentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References."=";
   function Java_Box (Value : TransformStoreDocumentFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.Java_Box;
   function Java_Unbox_TransformStoreDocumentFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformStoreDocumentFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package_References.Java_Unbox_TransformStoreDocumentFactory_Access_Array_Access_Array;

   type TransformStoreDocumentFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformStoreDocumentFactory'Class);
   function Create return TransformStoreDocumentFactory_Access;
   function getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformDocumentInterface_Access;
   procedure getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class);
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformDocumentInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);

end org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;


