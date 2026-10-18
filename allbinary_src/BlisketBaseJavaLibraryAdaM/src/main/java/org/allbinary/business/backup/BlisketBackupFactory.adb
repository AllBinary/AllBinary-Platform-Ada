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


package body org.allbinary.business.backup.BlisketBackupFactory_Package is

   procedure Initialize_Fields (This : in out BlisketBackupFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BlisketBackupFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BlisketBackupFactory_Access is
      This : constant BlisketBackupFactory_Access := new BlisketBackupFactory;
   begin
      BlisketBackupFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BlisketBackupFactory_Access is
   begin
        return BlisketBackupFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String) return BasicArrayList_Access is
      path : AbPath_Access;
      file : AbFile_Access;
   begin
        path := AbPath_Package.Create (pathString, This.stringUtil.EMPTY_STRING);
        file := AbFile_Package.createAbFileFromAbPath (path);
        return This.directory.search (file, True);
   end getFileBasicArrayList;

   procedure backup (This : in out BlisketBackupFactory) is
      stringBuffer : StringMaker_Access;
      backupPath : Unbounded_String;
      path : AbPath_Access;
      fileBasicArrayList : BasicArrayList_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (PATH_GLOBALS.getInstance.BACKUP_PATH);
            backupPath := stringBuffer.toString;
            path := AbPath_Package.Create (backupPath, This.stringUtil.EMPTY_STRING);
            fileBasicArrayList := BlisketBackupFactory'Class (This).getFileBasicArrayList (backupPath);
            BlisketBackupFactory'Class (This).backup (fileBasicArrayList, Java_Image (path.toFileSystemString) & To_Unbounded_String ("backup.zip"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
                end;
        end;
   end backup;

   procedure backupViews (This : in out BlisketBackupFactory) is
      stringBuffer : StringMaker_Access;
      backupPath : Unbounded_String;
      path : AbPath_Access;
      fileBasicArrayList : BasicArrayList_Access;
      storeFrontsEntity : StoreFrontsEntity_Access;
      storeFrontNamesBasicArrayList : BasicArrayList_Access;
      size : Integer;
      nextStore : Unbounded_String;
      viewsPath : Unbounded_String;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupViews()"));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (PATH_GLOBALS.getInstance.BACKUP_PATH);
            backupPath := stringBuffer.toString;
            path := AbPath_Package.Create (backupPath, This.stringUtil.EMPTY_STRING);
            fileBasicArrayList := BasicArrayListD_Package.Create;
            storeFrontsEntity := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance;
            storeFrontNamesBasicArrayList := storeFrontsEntity.getStoreFrontNames;
            size := storeFrontNamesBasicArrayList.size;
            nextStore := Null_Unbounded_String;
            viewsPath := Null_Unbounded_String;
            for index in 0 .. (size) - 1 loop
                nextStore := Java_Unbox (storeFrontNamesBasicArrayList.get (index));
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (URLGLOBALS.getWebappPath);
                stringBuffer.append (PATH_GLOBALS.getInstance.VIEWS_PATH);
                stringBuffer.append (nextStore);
                viewsPath := stringBuffer.toString;
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Backup Store Views: "));
                stringBuffer.append (nextStore);
                stringBuffer.append (To_Unbounded_String (" from: "));
                stringBuffer.append (viewsPath);
                PreLogUtil_Package.put (stringBuffer.toString, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupViews()"));
                fileBasicArrayList.addAllList (BlisketBackupFactory'Class (This).getFileBasicArrayList (viewsPath));
            end loop;
            BlisketBackupFactory'Class (This).backup (fileBasicArrayList, Java_Image (path.toFileSystemString) & To_Unbounded_String ("backupViews.zip"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupViews()"), e);
                end;
        end;
   end backupViews;

   procedure backupResources (This : in out BlisketBackupFactory) is
      stringBuffer : StringMaker_Access;
      backupPath : Unbounded_String;
      path : AbPath_Access;
      fileBasicArrayList : BasicArrayList_Access;
      storeFrontsEntity : StoreFrontsEntity_Access;
      storeFrontNamesBasicArrayList : BasicArrayList_Access;
      size : Integer;
      nextStore : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      resourcesPath : Unbounded_String;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupResources()"));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (PATH_GLOBALS.getInstance.BACKUP_PATH);
            backupPath := stringBuffer.toString;
            path := AbPath_Package.Create (backupPath, This.stringUtil.EMPTY_STRING);
            fileBasicArrayList := BasicArrayListD_Package.Create;
            storeFrontsEntity := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance;
            storeFrontNamesBasicArrayList := storeFrontsEntity.getStoreFrontNames;
            size := storeFrontNamesBasicArrayList.size;
            nextStore := Null_Unbounded_String;
            storeFrontInterface := null;
            resourcesPath := Null_Unbounded_String;
            for index in 0 .. (size) - 1 loop
                nextStore := Java_Unbox (storeFrontNamesBasicArrayList.get (index));
                storeFrontInterface := storeFrontsEntity.getStoreFrontInterface (nextStore);
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (URLGLOBALS.getWebappPath);
                stringBuffer.append (storeFrontInterface.getCurrentHostNamePath);
                stringBuffer.append (storeFrontInterface.getCategoryPath);
                resourcesPath := stringBuffer.toString;
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Backup Store Resrouces: "));
                stringBuffer.append (nextStore);
                stringBuffer.append (To_Unbounded_String (" from: "));
                stringBuffer.append (resourcesPath);
                PreLogUtil_Package.put (stringBuffer.toString, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupResources()"));
                fileBasicArrayList.addAllList (BlisketBackupFactory'Class (This).getFileBasicArrayList (resourcesPath));
            end loop;
            BlisketBackupFactory'Class (This).backup (fileBasicArrayList, Java_Image (path.toFileSystemString) & To_Unbounded_String ("backupResources.zip"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupResources()"), e);
                end;
        end;
   end backupResources;

   procedure backupJsps (This : in out BlisketBackupFactory) is
      stringBuffer : StringMaker_Access;
      backupPath : Unbounded_String;
      path : AbPath_Access;
      fileBasicArrayList : BasicArrayList_Access;
      storeFrontsEntity : StoreFrontsEntity_Access;
      storeFrontNamesBasicArrayList : BasicArrayList_Access;
      size : Integer;
      nextStore : Unbounded_String;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupJsps()"));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (PATH_GLOBALS.getInstance.BACKUP_PATH);
            backupPath := stringBuffer.toString;
            path := AbPath_Package.Create (backupPath, This.stringUtil.EMPTY_STRING);
            fileBasicArrayList := BasicArrayListD_Package.Create;
            storeFrontsEntity := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance;
            storeFrontNamesBasicArrayList := storeFrontsEntity.getStoreFrontNames;
            size := storeFrontNamesBasicArrayList.size;
            nextStore := Null_Unbounded_String;
            for index in 0 .. (size) - 1 loop
                nextStore := Java_Unbox (storeFrontNamesBasicArrayList.get (index));
                PreLogUtil_Package.put (To_Unbounded_String ("Backup Store Jsps: ") & nextStore, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupJsps()"));
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (URLGLOBALS.getWebappPath);
                stringBuffer.append (nextStore);
                fileBasicArrayList.addAllList (BlisketBackupFactory'Class (This).getFileBasicArrayList (stringBuffer.toString));
            end loop;
            BlisketBackupFactory'Class (This).backup (fileBasicArrayList, Java_Image (path.toFileSystemString) & To_Unbounded_String ("backupJsps.zip"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backupJsps()"), e);
                end;
        end;
   end backupJsps;

   procedure backup (This : in out BlisketBackupFactory; fileBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; zipFile : Unbounded_String) is
      fileBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (fileBasicArrayList_Param);
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("ZipFile: "));
            stringBuffer.append (zipFile);
            stringBuffer.append (To_Unbounded_String (" BasicArrayList: "));
            stringBuffer.appendint (fileBasicArrayList.size);
            PreLogUtil_Package.put (To_Unbounded_String ("Creating Backup Zip File: ") & stringBuffer.toString, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            ZipFileUtil_Package.getInstance.create (zipFile, fileBasicArrayList);
            This.logUtil.putF (To_Unbounded_String ("Created Backup Zip File"), BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BlisketBackupFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
                end;
        end;
   end backup;

   procedure getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := BlisketBackupFactory'Class (This).getFileBasicArrayList (pathString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileBasicArrayList;

begin
   null;
   instance := BlisketBackupFactory_Package.Create;

end org.allbinary.business.backup.BlisketBackupFactory_Package;


