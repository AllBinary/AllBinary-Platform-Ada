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

limited with org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package;
package org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References is
   type AbeHttpRequestInfo_Access is access all org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package.AbeHttpRequestInfo'Class;
   type AbeHttpRequestInfo_Access_Array is array (Natural range <>) of AbeHttpRequestInfo_Access;
   type AbeHttpRequestInfo_Access_Array_Access is access all AbeHttpRequestInfo_Access_Array;
   type AbeHttpRequestInfo_Access_Array_Access_Array is array (Natural range <>) of AbeHttpRequestInfo_Access_Array_Access;
   type AbeHttpRequestInfo_Access_Array_Access_Array_Access is access all AbeHttpRequestInfo_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References;

with org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;
with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References;

package org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype AbeHttpRequestInfoData_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access;
   use type AbeHttpRequestInfoData_Access;
   subtype AbeHttpRequestInfoData_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array;
   use type AbeHttpRequestInfoData_Access_Array;
   subtype AbeHttpRequestInfoData_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access;
   use type AbeHttpRequestInfoData_Access_Array_Access;
   subtype AbeHttpRequestInfoData_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access_Array;
   use type AbeHttpRequestInfoData_Access_Array_Access_Array;
   subtype AbeHttpRequestInfoData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access_Array_Access;
   use type AbeHttpRequestInfoData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbeHttpRequestInfo_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References.AbeHttpRequestInfo_Access;
   function "=" (Left, Right : AbeHttpRequestInfo_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References."=";
   subtype AbeHttpRequestInfo_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References.AbeHttpRequestInfo_Access_Array;
   function "=" (Left, Right : AbeHttpRequestInfo_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References."=";
   subtype AbeHttpRequestInfo_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References.AbeHttpRequestInfo_Access_Array_Access;
   function "=" (Left, Right : AbeHttpRequestInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References."=";
   subtype AbeHttpRequestInfo_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References.AbeHttpRequestInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AbeHttpRequestInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References."=";
   subtype AbeHttpRequestInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References.AbeHttpRequestInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeHttpRequestInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package_References."=";

   type AbeHttpRequestInfo is new Java_Object with record
      NAME : Unbounded_String;
      abeHttpRequestInfoData : AbeHttpRequestInfoData_Access;
      commonSeps : CommonSeps_Access;
      httpUserAgent : Unbounded_String;
      remoteAddress : Unbounded_String;
      remoteHost : Unbounded_String;
      remoteHostByAddr : Unbounded_String;
      remotePort : Unbounded_String;
      requestedFilePath : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbeHttpRequestInfo'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AbeHttpRequestInfo_Access;
   procedure Initialize (This : in out AbeHttpRequestInfo'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AbeHttpRequestInfo_Access;
   function toHashMap (This : in out AbeHttpRequestInfo) return HashMap_Access;
   function toVector (This : in out AbeHttpRequestInfo) return BasicArrayList_Access;
   function toString (This : in out AbeHttpRequestInfo) return Unbounded_String;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package;


