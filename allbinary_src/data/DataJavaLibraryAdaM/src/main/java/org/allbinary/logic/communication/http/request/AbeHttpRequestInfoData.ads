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

package org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package is


   type AbeHttpRequestInfoData is tagged;
   type AbeHttpRequestInfoData_Access is access all AbeHttpRequestInfoData'Class;
   type AbeHttpRequestInfoData_Access_Array is array (Natural range <>) of AbeHttpRequestInfoData_Access;
   type AbeHttpRequestInfoData_Access_Array_Access is access all AbeHttpRequestInfoData_Access_Array;
   type AbeHttpRequestInfoData_Access_Array_Access_Array is array (Natural range <>) of AbeHttpRequestInfoData_Access_Array_Access;
   type AbeHttpRequestInfoData_Access_Array_Access_Array_Access is access all AbeHttpRequestInfoData_Access_Array_Access_Array;

   type AbeHttpRequestInfoData is new Java_Object with record
      HTTP_USER_AGENT : Unbounded_String;
      REMOTE_ADDRESS : Unbounded_String;
      REMOTE_HOST : Unbounded_String;
      REMOTE_HOST_BY_ADDRESS : Unbounded_String;
      REMOTE_PORT : Unbounded_String;
      REQUEST_FILE_PATH : Unbounded_String;
   end record;
   instance : AbeHttpRequestInfoData_Access;

   procedure Initialize (This : in out AbeHttpRequestInfoData'Class);
   function Create return AbeHttpRequestInfoData_Access;
   function getInstance return AbeHttpRequestInfoData_Access;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;


