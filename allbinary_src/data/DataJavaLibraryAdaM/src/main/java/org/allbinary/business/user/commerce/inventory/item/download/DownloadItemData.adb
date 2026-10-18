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



package body org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package is

   procedure Initialize_Fields (This : in out DownloadItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DownloadItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DownloadItemData_Access is
      This : constant DownloadItemData_Access := new DownloadItemData;
   begin
      DownloadItemData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NAME := To_Unbounded_String ("DOWNLOADITEM_NAME");
   ID := To_Unbounded_String ("DOWNLOADITEM_ID");
   SYSTEM := To_Unbounded_String ("DOWNLOADITEM_SYSTEM");
   PLATFORM := To_Unbounded_String ("DOWNLOADITEM_PLATFORM");
   SPECIAL_NAME := To_Unbounded_String ("DOWNLOADITEM_SPECIAL_NAME");
   VERSION := To_Unbounded_String ("DOWNLOADITEM_VERSION");
   CHANGES := To_Unbounded_String ("DOWNLOADITEM_CHANGES");
   LICENSE_FILE := To_Unbounded_String ("DOWNLOADITEM_LICENSE_FILE");
   FILE := To_Unbounded_String ("DOWNLOADITEM_FILE");
   EXTRA_FILES := To_Unbounded_String ("DOWNLOADITEM_EXTRA_FILES");
   SIZE := To_Unbounded_String ("DOWNLOADITEM_SIZE");
   VALID_TIME := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME");
   VALID_TIME_YEARS := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_YEAR");
   VALID_TIME_MONTHS := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_MONTH");
   VALID_TIME_DAYS := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_DAY");
   VALID_TIME_HOURS := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_HOUR");
   VALID_TIME_MINUTES := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_MINUTES");
   VALID_TIME_SECONDS := To_Unbounded_String ("DOWNLOADITEM_VALID_TIME_SECONDS");
   RETRIES := To_Unbounded_String ("DOWNLOADITEM_RETRIES");

end org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;


