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


package body org.allbinary.log.FileLog_Package is

   procedure Initialize_Fields (This : in out FileLog'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FileLog'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileLog_Access is
      This : constant FileLog_Access := new FileLog;
   begin
      FileLog_Package.Initialize (This.all);
      return This;
   end Create;

   function createLogFile return Boolean is
      raFile : RandomAccessFile_Access;
      canWrite : Boolean;
   begin
        begin
            FileLog_Package.logFile := File_Package.Create (logPath, fileName);
            if not (FileLog_Package.firstTime) then
                FileLog_Package.fileOut := BufferedWriter_Package.Create (FileWriter_Package.Create (logFile));
            else
                FileLog_Package.firstTime := False;
                raFile := RandomAccessFile_Package.Create (logFile, To_Unbounded_String ("rw"));
                raFile.seek (raFile.length);
                FileLog_Package.fileOut := BufferedWriter_Package.Create (FileWriter_Package.Create (raFile.getFD));
            end if;
            canWrite := FileLog_Package.logFile.canWrite;
            return canWrite;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error Creating Log: ") & Java_Image (e)));
            return False;
                end;
        end;
   end createLogFile;

   function createLogFileBackup return Boolean is
      stringMaker : StringMaker_Access;
      line : Unbounded_String;
      tmpOut : BufferedWriter_Access;
      tmpIn : BufferedReader_Access;
   begin
        begin
            stringMaker := StringMaker_Package.Create;
            FileLog_Package.logFileBak := File_Package.Create (logPath, stringMaker.append (backupFileName).append (CommonSeps_Package.getInstance.PERIOD).appendint (backupIndex).toString);
            while FileLog_Package.logFileBak.isFile loop
                FileLog_Package.backupIndex := FileLog_Package.backupIndex + 1;
                stringMaker.delete (0, stringMaker.length);
                FileLog_Package.logFileBak := File_Package.Create (logPath, stringMaker.append (backupFileName).append (CommonSeps_Package.getInstance.PERIOD).appendint (backupIndex).toString);
            end loop;
            line := Null_Unbounded_String;
            tmpOut := BufferedWriter_Package.Create (FileWriter_Package.Create (logFileBak));
            tmpIn := BufferedReader_Package.Create (FileReader_Package.Create (logFile));
            while ((Java_Assign (line, tmpIn.readLine))) /= (null) loop
                tmpOut.write (line, 0, Length (line));
                tmpOut.newLine;
            end loop;
            tmpOut.flush;
            tmpOut.close;
            tmpIn.close;
            FileLog_Package.logFile.delete;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error Creating Backup: ") & Java_Image (e)));
            return False;
                end;
        end;
   end createLogFileBackup;

   function put (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) return Unbounded_String is
   begin
        return FileLog_Package.put (specialMessage, anyType, functionName, null);
   end put;

   function put (specialMessage_Param : Unbounded_String; anyType : Java_Object_Access; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) return Unbounded_String is
      specialMessage : Unbounded_String := specialMessage_Param;
      functionName : Unbounded_String := functionName_Param;
      length : Long_Long_Integer;
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        begin
            if (FileLog_Package.firstTime) = (True) then
                FileLog_Package.createLogFileBackup;
                if (createLogFile) = (False) then
                    return Java_New_String (To_Unbounded_String ("Log File Creation Error"));
                end if;
            end if;
            length := Long_Long_Integer (FileLog_Package.logFile.length);
            if (length) > (FileLog_Package.logLength) then
                if (not ((createLogFileBackup))) or else ((createLogFile) = (False)) then
                    return Java_New_String (To_Unbounded_String ("Couldn't Create a Backup file"));
                end if;
            end if;
            className := Java_New_String (stringUtil.NULL_STRING);
            if (functionName) = (Null_Unbounded_String) then
                functionName := Java_New_String (FileLog_Package.stringUtil.NULL_STRING);
            end if;
            if (specialMessage) = (Null_Unbounded_String) then
                specialMessage := Java_New_String (FileLog_Package.stringUtil.NULL_STRING);
            end if;
            if (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))) /= (Null_Unbounded_String) then
                className := Java_New_String (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag)));
            end if;
            message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
            FileLog_Package.fileOut.write (message, 0, Length (message));
            FileLog_Package.fileOut.newLine;
            FileLog_Package.fileOut.flush;
            return Java_New_String (Java_Image (FileLog_Package.ORG_ALLBINARY) & message);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return Java_New_String (To_Unbounded_String ("Error: ") & Java_Image (e));
                end;
        end;
   end put;

   function put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) return Unbounded_String is
   begin
        return FileLog_Package.put (specialMessage, className, functionName, null);
   end put;

   function put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) return Unbounded_String is
      specialMessage : Unbounded_String := specialMessage_Param;
      functionName : Unbounded_String := functionName_Param;
      length : Long_Long_Integer;
      message : Unbounded_String;
   begin
        begin
            if (FileLog_Package.firstTime) = (True) then
                FileLog_Package.createLogFileBackup;
                if (createLogFile) = (False) then
                    return Java_New_String (To_Unbounded_String ("Log File Creation Error"));
                end if;
            end if;
            length := Long_Long_Integer (FileLog_Package.logFile.length);
            if (length) > (FileLog_Package.logLength) then
                if (not ((createLogFileBackup))) or else ((createLogFile) = (False)) then
                    return Java_New_String (To_Unbounded_String ("Couldn't Create a Backup file"));
                end if;
            end if;
            if (functionName) = (Null_Unbounded_String) then
                functionName := Java_New_String (FileLog_Package.stringUtil.NULL_STRING);
            end if;
            if (specialMessage) = (Null_Unbounded_String) then
                specialMessage := Java_New_String (FileLog_Package.stringUtil.NULL_STRING);
            end if;
            message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
            FileLog_Package.fileOut.write (message, 0, Length (message));
            FileLog_Package.fileOut.newLine;
            FileLog_Package.fileOut.flush;
            return Java_New_String (Java_Image (FileLog_Package.ORG_ALLBINARY) & message);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return Java_New_String (To_Unbounded_String ("Error: ") & Java_Image (e));
                end;
        end;
   end put;

   function getFilePath return Unbounded_String is
   begin
        return (FileLog_Package.logPath) + (FileLog_Package.fileName);
   end getFilePath;

   procedure put (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) is
      Java_Result : constant Unbounded_String := put (specialMessage, anyType, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (specialMessage_Param : Unbounded_String; anyType : Java_Object_Access; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) is
      Java_Result : constant Unbounded_String := put (specialMessage_Param, anyType, functionName_Param, exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
      Java_Result : constant Unbounded_String := put (specialMessage, className, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) is
      Java_Result : constant Unbounded_String := put (specialMessage_Param, className, functionName_Param, exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

begin
   null;
   stringUtil := StringUtil_Package.getInstance;
   logLength := 33000000;
   logPath := To_Unbounded_String ("g:\log\");
   extension := Java_New_String (To_Unbounded_String ("dat"));
   fileName := Java_New_String (To_Unbounded_String ("log.") & Java_Image (FileLog_Package.extension));
   backupFileName := FileLog_Package.fileName.concat (To_Unbounded_String (".bak"));
   ORG_ALLBINARY := To_Unbounded_String ("org.allbinary: ");
   firstTime := True;
   logFile := File_Package.Create (FileLog_Package.logPath, FileLog_Package.fileName);
   logFileBak := null;
   fileOut := null;
   backupIndex := 0;

end org.allbinary.log.FileLog_Package;


