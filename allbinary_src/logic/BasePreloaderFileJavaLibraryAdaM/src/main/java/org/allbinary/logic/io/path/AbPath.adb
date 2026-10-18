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


package body org.allbinary.logic.io.path.AbPath_Package is

   procedure Initialize_Fields (This : in out AbPath'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.abPathData := AbPathData_Package.getInstance;
      This.abPathUtil := PathUtil_Package.getInstance;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.schema := This.EMPTY_STRING;
      This.path := This.EMPTY_STRING;
      This.nameP := This.EMPTY_STRING;
      This.hasSchemaP := False;
      This.numberOfSeps := 0;
   end Initialize_Fields;


   function createAbPath return AbPath_Access is
      EMPTY_STRING : Unbounded_String;
   begin
        begin
            EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
            return AbPath_Package.Create (EMPTY_STRING, EMPTY_STRING);
        exception
            when Java_Occurrence : others =>
                declare
                    ex : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end createAbPath;

   procedure Initialize (This : in out AbPath'Class; aPath : Unbounded_String; name : Unbounded_String) is
      stringValidationUtil : StringValidationUtil_Access;
   begin
      Initialize_Fields (This);
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isEmpty (aPath)) then
            This.schema := AbPath'Class (This).getSchema (aPath);
            This.nameP := name;
            This.path := This.abPathUtil.adjustEnd (This.abPathUtil.adjust (AbPath'Class (This).getPathFromPath (aPath)));
        else
            AbPath'Class (This).init;
            if not (stringValidationUtil.isEmpty (name)) then
                This.nameP := name;
            end if;
        end if;
   end Initialize;

   function Create (aPath : Unbounded_String; name : Unbounded_String) return AbPath_Access is
      This : constant AbPath_Access := new AbPath;
   begin
      AbPath_Package.Initialize (This.all, aPath, name);
      return This;
   end Create;

   procedure init (This : in out AbPath) is
   begin
        This.schema := This.EMPTY_STRING;
        AbPath'Class (This).setPath (This.abPathData.SEPARATOR);
        This.nameP := This.EMPTY_STRING;
   end init;

   function getSchema (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String is
      beginIndex : Integer;
   begin
        beginIndex := (Index (aPath, Java_Image (This.commonSeps.COLON)) - 1);
        if (beginIndex) >= (0) then
            This.hasSchemaP := True;
            return Unbounded_Slice (aPath, (0) + 1, beginIndex);
        end if;
        This.hasSchemaP := False;
        return This.EMPTY_STRING;
   end getSchema;

   function hasSchema (This : in out AbPath) return Boolean is
   begin
        return This.hasSchemaP;
   end hasSchema;

   --  throws Exception
   function getPathFromPath (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String is
      filePathData : FilePathData_Access;
      tempPath : Unbounded_String;
      beginIndex : Integer;
   begin
        filePathData := FilePathData_Package.getInstance;
        tempPath := aPath;
        if not (AbPath'Class (This).hasSchema) then
            tempPath := This.abPathUtil.adjustStart (tempPath);
        else
            beginIndex := (Index (tempPath, Java_Image (This.commonSeps.COLON)) - 1);
            if (beginIndex) >= (0) then
                beginIndex := beginIndex + 1;
                while ((Element (tempPath, (beginIndex) + 1)) = (This.abPathData.SEPARATORCHAR)) or else ((Element (tempPath, (beginIndex) + 1)) = (filePathData.SEPARATORCHAR)) loop
                    beginIndex := beginIndex + 1;
                    This.numberOfSeps := This.numberOfSeps + 1;
                    if (This.numberOfSeps) > (2) then
                        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should Not Have More Than Two Seps")));
                    end if;
                end loop;
                tempPath := Unbounded_Slice (tempPath, (beginIndex) + 1, Length (tempPath));
            end if;
        end if;
        return tempPath;
   end getPathFromPath;

   procedure setName (This : in out AbPath; name : Unbounded_String) is
   begin
        This.nameP := name;
   end setName;

   function getName (This : in out AbPath) return Unbounded_String is
   begin
        return This.nameP;
   end getName;

   function toString (This : in out AbPath) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        if AbPath'Class (This).hasSchema then
            stringBuffer.append (This.schema);
            stringBuffer.append (AbPath_Package.NETWORK_SEP);
        end if;
        stringBuffer.append (AbPath'Class (This).getPath);
        stringBuffer.append (This.nameP);
        return stringBuffer.toString;
   end toString;

   function toFileSystemString (This : in out AbPath) return Unbounded_String is
      filePathData : FilePathData_Access;
      stringBuffer : StringMaker_Access;
   begin
        if AbPath'Class (This).hasSchema then
            filePathData := FilePathData_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.schema);
            stringBuffer.append (This.commonSeps.COLON);
            stringBuffer.append (filePathData.PATH_START);
            stringBuffer.append (FilePathUtil_Package.adjust (AbPath'Class (This).getPath));
            stringBuffer.append (This.nameP);
            return stringBuffer.toString;
        else
            return Java_Image (FilePathUtil_Package.adjust (AbPath'Class (This).getPath)) & This.nameP;
        end if;
   end toFileSystemString;

   function getPath (This : in out AbPath) return Unbounded_String is
   begin
        return This.path;
   end getPath;

   procedure setPath (This : in out AbPath; path : Unbounded_String) is
   begin
        This.path := path;
   end setPath;

   procedure getSchema (This : in out AbPath; aPath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPath'Class (This).getSchema (aPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSchema;

   procedure getPathFromPath (This : in out AbPath; aPath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPath'Class (This).getPathFromPath (aPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathFromPath;

begin
   null;
   NETWORK_SEP := To_Unbounded_String (":/");

end org.allbinary.logic.io.path.AbPath_Package;


