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


with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.data.generator.ProductIdGenerator_Package; use org.allbinary.data.generator.ProductIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.time.TimeUtil_Package; use org.allbinary.time.TimeUtil_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;

package body org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ProductIdGenerator_Package renames Standard.org.allbinary.data.generator.ProductIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TimeUtil_Package renames Standard.org.allbinary.time.TimeUtil_Package;
   procedure Initialize_Fields (This : in out DownloadableItem'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadableItem'Class; id : Unbounded_String) is
      EMPTY_STRING : Unbounded_String;
   begin
      Initialize_Fields (This);
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        This.id := ProductIdGenerator_Package.Create.getNext;
        This.basicItemId := id;
        This.enabled := EntryData_Package.getInstance.YES;
        This.system := To_Unbounded_String ("Java");
        This.platform := To_Unbounded_String ("Android");
        This.specialName := EMPTY_STRING;
        This.version := EMPTY_STRING;
        This.changes := EMPTY_STRING;
        This.licenseFile := EMPTY_STRING;
        This.file := EMPTY_STRING;
        This.size := To_Unbounded_String (Java_Image (0));
        This.validTime := To_Unbounded_String (Java_Image (0));
        This.retries := EMPTY_STRING;
   end Initialize;

   function Create (id : Unbounded_String) return DownloadableItem_Access is
      This : constant DownloadableItem_Access := new DownloadableItem;
   begin
      DownloadableItem_Package.Initialize (This.all, id);
      return This;
   end Create;

   procedure Initialize (This : in out DownloadableItem'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      value : Unbounded_String;
      validTime : Unbounded_String;
      totalYears : Unbounded_String;
      totalMonths : Unbounded_String;
      totalDays : Unbounded_String;
      totalHours : Unbounded_String;
      totalMinutes : Unbounded_String;
      totalSeconds : Unbounded_String;
      totalTime : Long_Long_Integer;
   begin
      Initialize_Fields (This);
        This.id := Java_Unbox (hashMap.get (DownloadItemData_Package.ID));
        This.basicItemId := Java_Unbox (hashMap.get (BasicItemData_Package.getInstance.ID));
        This.enabled := Java_Unbox (hashMap.get (EntryData_Package.getInstance.ENABLE));
        This.system := Java_Unbox (hashMap.get (DownloadItemData_Package.SYSTEM));
        This.platform := Java_Unbox (hashMap.get (DownloadItemData_Package.PLATFORM));
        This.specialName := Java_Unbox (hashMap.get (DownloadItemData_Package.SPECIAL_NAME));
        This.version := Java_Unbox (hashMap.get (DownloadItemData_Package.VERSION));
        This.changes := Java_Unbox (hashMap.get (DownloadItemData_Package.CHANGES));
        This.licenseFile := Java_Unbox (hashMap.get (DownloadItemData_Package.LICENSE_FILE));
        This.file := Java_Unbox (hashMap.get (DownloadItemData_Package.FILE));
        value := Java_Unbox (hashMap.get (DownloadItemData_Package.SIZE));
        if not (StringValidationUtil_Package.getInstance.isEmpty (value)) then
            This.size := To_Unbounded_String (Java_Image (value));
        else
            This.size := 0;
        end if;
        validTime := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME));
        if not (StringValidationUtil_Package.getInstance.isEmpty (validTime)) then
            This.validTime := To_Unbounded_String (Java_Image (validTime));
        else
            totalYears := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_YEARS));
            totalMonths := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_MONTHS));
            totalDays := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_DAYS));
            totalHours := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_HOURS));
            totalMinutes := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_MINUTES));
            totalSeconds := Java_Unbox (hashMap.get (DownloadItemData_Package.VALID_TIME_SECONDS));
            totalTime := TimeUtil_Package.getInstance.getTotalTime (totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds);
            This.validTime := totalTime;
        end if;
        This.retries := Java_Unbox (hashMap.get (DownloadItemData_Package.RETRIES));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return DownloadableItem_Access is
      This : constant DownloadableItem_Access := new DownloadableItem;
   begin
      DownloadableItem_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function toVector (This : in out DownloadableItem) return BasicArrayList_Access is
      calendar : Calendar_Access;
      time : Unbounded_String;
      values : BasicArrayList_Access;
   begin
        calendar := Calendar_Package.getInstance;
        time := calendar.getTimeInMillis.toString;
        values := BasicArrayList_Access (BasicArrayListD_Package.Create);
        values.add (DownloadableItem'Class (This).getId);
        values.add (This.basicItemId);
        values.add (This.enabled);
        values.add (DownloadableItem'Class (This).getSpecialName);
        values.add (DownloadableItem'Class (This).getVersion);
        values.add (DownloadableItem'Class (This).getChanges);
        values.add (DownloadableItem'Class (This).getSystem);
        values.add (DownloadableItem'Class (This).getPlatform);
        values.add (DownloadableItem'Class (This).getLicenseFile);
        values.add (DownloadableItem'Class (This).getFile);
        values.add (DownloadableItem'Class (This).getSize.toString);
        values.add (DownloadableItem'Class (This).getValidTime.toString);
        values.add (DownloadableItem'Class (This).getRetries);
        values.add (time);
        values.add (time);
        return values;
   end toVector;

   function toHashMap (This : in out DownloadableItem) return HashMap_Access is
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (DownloadItemData_Package.ID, DownloadableItem'Class (This).getId);
        values.put (BasicItemData_Package.getInstance.ID, This.basicItemId);
        values.put (EntryData_Package.getInstance.ENABLE, This.enabled);
        values.put (DownloadItemData_Package.SYSTEM, DownloadableItem'Class (This).getSystem);
        values.put (DownloadItemData_Package.PLATFORM, DownloadableItem'Class (This).getPlatform);
        values.put (DownloadItemData_Package.SPECIAL_NAME, DownloadableItem'Class (This).getSpecialName);
        values.put (DownloadItemData_Package.VERSION, DownloadableItem'Class (This).getVersion);
        values.put (DownloadItemData_Package.CHANGES, DownloadableItem'Class (This).getChanges);
        values.put (DownloadItemData_Package.LICENSE_FILE, DownloadableItem'Class (This).getLicenseFile);
        values.put (DownloadItemData_Package.FILE, DownloadableItem'Class (This).getFile);
        values.put (DownloadItemData_Package.SIZE, DownloadableItem'Class (This).getSize.toString);
        values.put (DownloadItemData_Package.VALID_TIME, DownloadableItem'Class (This).getValidTime.toString);
        values.put (DownloadItemData_Package.RETRIES, DownloadableItem'Class (This).getRetries);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return values;
   end toHashMap;

   function getId (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.id;
   end getId;

   function getSystem (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.system;
   end getSystem;

   function getPlatform (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.platform;
   end getPlatform;

   function getSpecialName (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.specialName;
   end getSpecialName;

   function getVersion (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.version;
   end getVersion;

   function getChanges (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.changes;
   end getChanges;

   function getLicenseFile (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.licenseFile;
   end getLicenseFile;

   function getFile (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.file;
   end getFile;

   function getSize (This : in out DownloadableItem) return Long_Long_Integer is
   begin
        return This.size;
   end getSize;

   function getValidTime (This : in out DownloadableItem) return Long_Long_Integer is
   begin
        return This.validTime;
   end getValidTime;

   function getRetries (This : in out DownloadableItem) return Unbounded_String is
   begin
        return This.retries;
   end getRetries;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;


