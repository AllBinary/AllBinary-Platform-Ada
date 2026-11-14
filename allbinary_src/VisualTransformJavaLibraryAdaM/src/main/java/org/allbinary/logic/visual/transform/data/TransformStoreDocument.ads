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
limited with org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;
package org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References is
   type TransformStoreDocument_Access is access all org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package.TransformStoreDocument'Class;
   type TransformStoreDocument_Access_Array is array (Natural range <>) of TransformStoreDocument_Access;
   type TransformStoreDocument_Access_Array_Access is access all TransformStoreDocument_Access_Array;
   type TransformStoreDocument_Access_Array_Access_Array is array (Natural range <>) of TransformStoreDocument_Access_Array_Access;
   type TransformStoreDocument_Access_Array_Access_Array_Access is access all TransformStoreDocument_Access_Array_Access_Array;
   type TransformStoreDocument_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformStoreDocument_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformStoreDocument_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformStoreDocument_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformStoreDocument_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformStoreDocument_Access_Array_Access is (if Value /= null and then Value.all in TransformStoreDocument_Access_Array_Object'Class then TransformStoreDocument_Access_Array_Object'Class (Value.all).Value else null);
   type TransformStoreDocument_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformStoreDocument_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformStoreDocument_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformStoreDocument_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformStoreDocument_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformStoreDocument_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformStoreDocument_Access_Array_Access_Array_Object'Class then TransformStoreDocument_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References;

with org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References;
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
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;

package org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype TransformStoreDocument_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.TransformStoreDocument_Access;
   function "=" (Left, Right : TransformStoreDocument_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References."=";
   subtype TransformStoreDocument_Access_Array is org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.TransformStoreDocument_Access_Array;
   function "=" (Left, Right : TransformStoreDocument_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References."=";
   subtype TransformStoreDocument_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.TransformStoreDocument_Access_Array_Access;
   function "=" (Left, Right : TransformStoreDocument_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References."=";
   function Java_Box (Value : TransformStoreDocument_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.Java_Box;
   function Java_Unbox_TransformStoreDocument_Access_Array (Value : access Java_Object'Class) return TransformStoreDocument_Access_Array_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.Java_Unbox_TransformStoreDocument_Access_Array;
   subtype TransformStoreDocument_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.TransformStoreDocument_Access_Array_Access_Array;
   function "=" (Left, Right : TransformStoreDocument_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References."=";
   subtype TransformStoreDocument_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.TransformStoreDocument_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformStoreDocument_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References."=";
   function Java_Box (Value : TransformStoreDocument_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.Java_Box;
   function Java_Unbox_TransformStoreDocument_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformStoreDocument_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package_References.Java_Unbox_TransformStoreDocument_Access_Array_Access_Array;

   type TransformStoreDocument is new TransformHttpRequestDocument with record
      TransformStoreDocument_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformStoreDocument'Class; pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class);
   function Create (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformStoreDocument_Access;
   procedure Initialize (This : in out TransformStoreDocument'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformStoreDocument_Access;

end org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;


