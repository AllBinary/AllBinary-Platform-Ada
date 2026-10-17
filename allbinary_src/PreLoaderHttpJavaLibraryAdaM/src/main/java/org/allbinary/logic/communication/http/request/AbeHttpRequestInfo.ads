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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package; use org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;

package org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type AbeHttpRequestInfo is tagged;
   type AbeHttpRequestInfo_Access is access all AbeHttpRequestInfo'Class;
   type AbeHttpRequestInfo_Access_Array is array (Natural range <>) of AbeHttpRequestInfo_Access;
   type AbeHttpRequestInfo_Access_Array_Access is access all AbeHttpRequestInfo_Access_Array;

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

   procedure Initialize (This : in out AbeHttpRequestInfo'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return AbeHttpRequestInfo_Access;
   function toHashMap (This : in out AbeHttpRequestInfo) return HashMap_Access;
   function toVector (This : in out AbeHttpRequestInfo) return BasicArrayList_Access;
   function toString (This : in out AbeHttpRequestInfo) return Unbounded_String;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package;


