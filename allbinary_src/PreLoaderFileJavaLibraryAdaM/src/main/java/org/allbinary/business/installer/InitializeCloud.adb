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


with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.AbIOSystem_Package; use org.allbinary.logic.io.AbIOSystem_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.business.installer.InitializeCloud_Package is

   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbIOSystem_Package renames Standard.org.allbinary.logic.io.AbIOSystem_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out InitializeCloud'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InitializeCloud'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitializeCloud_Access is
      This : constant InitializeCloud_Access := new InitializeCloud;
   begin
      InitializeCloud_Package.Initialize (This.all);
      return This;
   end Create;

   function initialize (This : in out InitializeCloud; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) return Boolean is
      stringBuffer : StringMaker_Access;
      path : AbPath_Access;
      realPath : AbPath_Access;
      file : AbFile_Access;
      fileBasicArrayList : BasicArrayList_Access;
      size : Integer;
      portion : Integer;
      start : Integer;
      end_Id : Integer;
      nextFile : AbFile_Access;
      index : Integer;
   begin
        begin
            if AbIOSystem_Package.getInstance.isType (To_Unbounded_String ("com.vobject.appengine.java.io")) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (URLGLOBALS_Package.getWebappPath);
                stringBuffer.append (cloud);
                stringBuffer.append (PATH_GLOBALS_Package.getInstance.DATA_PATH);
                path := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (URLGLOBALS_Package.getWebappPath);
                realPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                file := AbFile_Package.createAbFileFromAbPath (path);
                fileBasicArrayList := Directory_Package.getInstance.search (file, True);
                size := fileBasicArrayList.size;
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Searched: "));
                stringBuffer.append (path.toFileSystemString);
                stringBuffer.append (To_Unbounded_String (" BasicArrayList: "));
                stringBuffer.appendint (size);
                portion := ((size) / (total)) + (1);
                start := (portion) * (current);
                end_Id := (start) + (portion);
                if (end_Id) > (size) then
                    end_Id := size;
                end if;
                stringBuffer.append (To_Unbounded_String (" Section: "));
                stringBuffer.appendint (start);
                stringBuffer.append (To_Unbounded_String (" - "));
                stringBuffer.appendint (end_Id);
                This.logUtil.putF (stringBuffer.toString, InitializeCloud_Access'(This'Unchecked_Access), To_Unbounded_String ("initialize()"));
                nextFile := null;
                for index in start .. (end_Id) - 1 loop
                    nextFile := AbFile_Access (fileBasicArrayList.get (index));
                    if nextFile.isDirectory then
                        null;
                    else
                        FileUtil_Package.getInstance.copyToCloud (nextFile, path, realPath, cloud, overwriteNewer, overwriteAll);
                    end if;
                end loop;
                This.logUtil.putF (To_Unbounded_String ("Copied Files To Cloud"), InitializeCloud_Access'(This'Unchecked_Access), To_Unbounded_String ("initialize()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to copy installer files into cloud"), InitializeCloud_Access'(This'Unchecked_Access), To_Unbounded_String ("initialize()"), e);
            return False;
                end;
        end;
   end initialize;

   procedure initialize (This : in out InitializeCloud; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) is
      Java_Result : constant Boolean := InitializeCloud'Class (This).initialize (cloud => cloud, overwriteNewer => overwriteNewer, overwriteAll => overwriteAll, current => current, total => total);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initialize;

begin
   null;
   CLOUD := To_Unbounded_String ("cloud/");
   CLOUD_UPDATE := To_Unbounded_String ("cloudupdate/");

end org.allbinary.business.installer.InitializeCloud_Package;


