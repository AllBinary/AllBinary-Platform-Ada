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


package body org.allbinary.business.installer.DeleteCloud_Package is

   procedure Initialize_Fields (This : in out DeleteCloud'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteCloud'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DeleteCloud_Access is
      This : constant DeleteCloud_Access := new DeleteCloud;
   begin
      DeleteCloud_Package.Initialize (This.all);
      return This;
   end Create;

   function delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer) return Boolean is
      stringBuffer : StringMaker_Access;
      path : AbPath_Access;
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
                stringBuffer.append (prePath);
                path := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
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
                    begin
                        if (nextFile.getPath.indexOf (FileUploadData_Package.getInstance.FILE)) < (0) then
                            nextFile.delete;
                        end if;
                    exception
                        when Java_Occurrence : others =>
                            declare
                                e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                            begin
                        null;
                            end;
                    end;
                end loop;
                This.logUtil.putF (To_Unbounded_String ("Deleted Files From Cloud"), This'Unchecked_Access, To_Unbounded_String ("initialize()"));
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
   end delete;

   procedure delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer) is
      Java_Result : constant Boolean := DeleteCloud'Class (This).delete (prePath, current, total);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

end org.allbinary.business.installer.DeleteCloud_Package;


