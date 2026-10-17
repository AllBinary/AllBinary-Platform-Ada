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


package body org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package is

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
      Initialize (This.all, id);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out DownloadableItem'Class; hashMap : HashMap_Access) is
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
        This.id := Unbounded_String (hashMap.get (DownloadItemData_Package.ID));
        This.basicItemId := Unbounded_String (hashMap.get (BasicItemData_Package.getInstance.ID));
        This.enabled := Unbounded_String (hashMap.get (EntryData_Package.getInstance.ENABLE));
        This.system := Unbounded_String (hashMap.get (DownloadItemData_Package.SYSTEM));
        This.platform := Unbounded_String (hashMap.get (DownloadItemData_Package.PLATFORM));
        This.specialName := Unbounded_String (hashMap.get (DownloadItemData_Package.SPECIAL_NAME));
        This.version := Unbounded_String (hashMap.get (DownloadItemData_Package.VERSION));
        This.changes := Unbounded_String (hashMap.get (DownloadItemData_Package.CHANGES));
        This.licenseFile := Unbounded_String (hashMap.get (DownloadItemData_Package.LICENSE_FILE));
        This.file := Unbounded_String (hashMap.get (DownloadItemData_Package.FILE));
        value := Unbounded_String (hashMap.get (DownloadItemData_Package.SIZE));
        if not (StringValidationUtil_Package.getInstance.isEmpty (value)) then
            This.size := To_Unbounded_String (Java_Image (value));
        else
            This.size := 0;
        end if;
        validTime := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME));
        if not (StringValidationUtil_Package.getInstance.isEmpty (validTime)) then
            This.validTime := To_Unbounded_String (Java_Image (validTime));
        else
            totalYears := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_YEARS));
            totalMonths := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_MONTHS));
            totalDays := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_DAYS));
            totalHours := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_HOURS));
            totalMinutes := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_MINUTES));
            totalSeconds := Unbounded_String (hashMap.get (DownloadItemData_Package.VALID_TIME_SECONDS));
            totalTime := TimeUtil_Package.getInstance.getTotalTime (totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds);
            This.validTime := totalTime;
        end if;
        This.retries := Unbounded_String (hashMap.get (DownloadItemData_Package.RETRIES));
   end Initialize;

   function Create (hashMap : HashMap_Access) return DownloadableItem_Access is
      This : constant DownloadableItem_Access := new DownloadableItem;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   function toVector (This : in out DownloadableItem) return BasicArrayList_Access is
      calendar : Calendar_Access;
      time : Unbounded_String;
      values : BasicArrayList_Access;
   begin
        calendar := Calendar_Package.getInstance;
        time := calendar.getTimeInMillis.toString;
        values := BasicArrayListD_Package.Create;
        values.add (This.getId);
        values.add (This.basicItemId);
        values.add (This.enabled);
        values.add (This.getSpecialName);
        values.add (This.getVersion);
        values.add (This.getChanges);
        values.add (This.getSystem);
        values.add (This.getPlatform);
        values.add (This.getLicenseFile);
        values.add (This.getFile);
        values.add (This.getSize.toString);
        values.add (This.getValidTime.toString);
        values.add (This.getRetries);
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
        values.put (DownloadItemData_Package.ID, This.getId);
        values.put (BasicItemData_Package.getInstance.ID, This.basicItemId);
        values.put (EntryData_Package.getInstance.ENABLE, This.enabled);
        values.put (DownloadItemData_Package.SYSTEM, This.getSystem);
        values.put (DownloadItemData_Package.PLATFORM, This.getPlatform);
        values.put (DownloadItemData_Package.SPECIAL_NAME, This.getSpecialName);
        values.put (DownloadItemData_Package.VERSION, This.getVersion);
        values.put (DownloadItemData_Package.CHANGES, This.getChanges);
        values.put (DownloadItemData_Package.LICENSE_FILE, This.getLicenseFile);
        values.put (DownloadItemData_Package.FILE, This.getFile);
        values.put (DownloadItemData_Package.SIZE, This.getSize.toString);
        values.put (DownloadItemData_Package.VALID_TIME, This.getValidTime.toString);
        values.put (DownloadItemData_Package.RETRIES, This.getRetries);
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

   procedure toVector (This : in out DownloadableItem) is
      Java_Result : constant BasicArrayList_Access := DownloadableItem'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toHashMap (This : in out DownloadableItem) is
      Java_Result : constant HashMap_Access := DownloadableItem'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getId (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getSystem (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getSystem;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSystem;

   procedure getPlatform (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getPlatform;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlatform;

   procedure getSpecialName (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getSpecialName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpecialName;

   procedure getVersion (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getVersion;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVersion;

   procedure getChanges (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getChanges;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChanges;

   procedure getLicenseFile (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getLicenseFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLicenseFile;

   procedure getFile (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

   procedure getSize (This : in out DownloadableItem) is
      Java_Result : constant Long_Long_Integer := DownloadableItem'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getValidTime (This : in out DownloadableItem) is
      Java_Result : constant Long_Long_Integer := DownloadableItem'Class (This).getValidTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValidTime;

   procedure getRetries (This : in out DownloadableItem) is
      Java_Result : constant Unbounded_String := DownloadableItem'Class (This).getRetries;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRetries;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;


