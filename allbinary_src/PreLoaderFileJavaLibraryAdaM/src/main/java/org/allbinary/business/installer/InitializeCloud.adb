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


package body org.allbinary.business.installer.InitializeCloud_Package is

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

   function initialize (This : in out InitializeCloud; cloud_Case : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) return Boolean is
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
                stringBuffer.append (URLGLOBALS.getWebappPath);
                stringBuffer.append (cloud_Case);
                stringBuffer.append (PATH_GLOBALS.getInstance.DATA_PATH);
                path := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (URLGLOBALS.getWebappPath);
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
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("initialize()"));
                nextFile := null;
                for index in start .. (end_Id) - 1 loop
                    nextFile := AbFile_Access (fileBasicArrayList.get (index));
                    if nextFile.isDirectory then
                        null;
                    else
                        FileUtil_Package.getInstance.copyToCloud (nextFile, path, realPath, cloud_Case, overwriteNewer, overwriteAll);
                    end if;
                end loop;
                This.logUtil.putF (To_Unbounded_String ("Copied Files To Cloud"), This'Unchecked_Access, To_Unbounded_String ("initialize()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to copy installer files into cloud"), This'Unchecked_Access, To_Unbounded_String ("initialize()"), e);
            return False;
                end;
        end;
   end initialize;

   procedure initialize (This : in out InitializeCloud; cloud_Case : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) is
      Java_Result : constant Boolean := InitializeCloud'Class (This).initialize (cloud_Case, overwriteNewer, overwriteAll, current, total);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initialize;

begin
   null;
   CLOUD := To_Unbounded_String ("cloud/");
   CLOUD_UPDATE := To_Unbounded_String ("cloudupdate/");

end org.allbinary.business.installer.InitializeCloud_Package;


