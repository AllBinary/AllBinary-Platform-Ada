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

package org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package is


   type DownloadItemData is tagged;
   type DownloadItemData_Access is access all DownloadItemData'Class;
   type DownloadItemData_Access_Array is array (Natural range <>) of DownloadItemData_Access;
   type DownloadItemData_Access_Array_Access is access all DownloadItemData_Access_Array;
   type DownloadItemData_Access_Array_Access_Array is array (Natural range <>) of DownloadItemData_Access_Array_Access;
   type DownloadItemData_Access_Array_Access_Array_Access is access all DownloadItemData_Access_Array_Access_Array;

   type DownloadItemData is new Java_Object with null record;
   NAME : Unbounded_String;
   ID : Unbounded_String;
   SYSTEM : Unbounded_String;
   PLATFORM : Unbounded_String;
   SPECIAL_NAME : Unbounded_String;
   VERSION : Unbounded_String;
   CHANGES : Unbounded_String;
   LICENSE_FILE : Unbounded_String;
   FILE : Unbounded_String;
   EXTRA_FILES : Unbounded_String;
   SIZE : Unbounded_String;
   VALID_TIME : Unbounded_String;
   VALID_TIME_YEARS : Unbounded_String;
   VALID_TIME_MONTHS : Unbounded_String;
   VALID_TIME_DAYS : Unbounded_String;
   VALID_TIME_HOURS : Unbounded_String;
   VALID_TIME_MINUTES : Unbounded_String;
   VALID_TIME_SECONDS : Unbounded_String;
   RETRIES : Unbounded_String;

   procedure Initialize (This : in out DownloadItemData'Class);
   function Create return DownloadItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;


