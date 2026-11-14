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
limited with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
package org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References is
   type MultipartRequestParams_Access is access all org.allbinary.logic.communication.http.request.MultipartRequestParams_Package.MultipartRequestParams'Class;
   type MultipartRequestParams_Access_Array is array (Natural range <>) of MultipartRequestParams_Access;
   type MultipartRequestParams_Access_Array_Access is access all MultipartRequestParams_Access_Array;
   type MultipartRequestParams_Access_Array_Access_Array is array (Natural range <>) of MultipartRequestParams_Access_Array_Access;
   type MultipartRequestParams_Access_Array_Access_Array_Access is access all MultipartRequestParams_Access_Array_Access_Array;
   type MultipartRequestParams_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipartRequestParams_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipartRequestParams_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipartRequestParams_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipartRequestParams_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipartRequestParams_Access_Array_Access is (if Value /= null and then Value.all in MultipartRequestParams_Access_Array_Object'Class then MultipartRequestParams_Access_Array_Object'Class (Value.all).Value else null);
   type MultipartRequestParams_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipartRequestParams_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipartRequestParams_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipartRequestParams_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipartRequestParams_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipartRequestParams_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultipartRequestParams_Access_Array_Access_Array_Object'Class then MultipartRequestParams_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References;

with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;

package org.allbinary.logic.communication.http.request.MultipartRequestParams_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype MultipartRequestParams_Access is org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.MultipartRequestParams_Access;
   function "=" (Left, Right : MultipartRequestParams_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References."=";
   subtype MultipartRequestParams_Access_Array is org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.MultipartRequestParams_Access_Array;
   function "=" (Left, Right : MultipartRequestParams_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References."=";
   subtype MultipartRequestParams_Access_Array_Access is org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.MultipartRequestParams_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParams_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References."=";
   function Java_Box (Value : MultipartRequestParams_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.Java_Box;
   function Java_Unbox_MultipartRequestParams_Access_Array (Value : access Java_Object'Class) return MultipartRequestParams_Access_Array_Access renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.Java_Unbox_MultipartRequestParams_Access_Array;
   subtype MultipartRequestParams_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.MultipartRequestParams_Access_Array_Access_Array;
   function "=" (Left, Right : MultipartRequestParams_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References."=";
   subtype MultipartRequestParams_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.MultipartRequestParams_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParams_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References."=";
   function Java_Box (Value : MultipartRequestParams_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.Java_Box;
   function Java_Unbox_MultipartRequestParams_Access_Array_Access_Array (Value : access Java_Object'Class) return MultipartRequestParams_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package_References.Java_Unbox_MultipartRequestParams_Access_Array_Access_Array;

   type MultipartRequestParams is new RequestParams with record
      logUtil : LogUtil_Access;
      special : Boolean;
   end record;

   procedure Initialize (This : in out MultipartRequestParams'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return MultipartRequestParams_Access;
   procedure Initialize (This : in out MultipartRequestParams'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return MultipartRequestParams_Access;
   procedure setSpecial (This : in out MultipartRequestParams);
   procedure processMultipartRequest (This : in out MultipartRequestParams; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function toHashMap (This : in out MultipartRequestParams) return HashMap_Access;

end org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;


