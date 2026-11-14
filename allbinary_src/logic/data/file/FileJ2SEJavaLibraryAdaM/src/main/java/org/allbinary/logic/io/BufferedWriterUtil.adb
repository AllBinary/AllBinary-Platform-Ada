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


with java.io.BufferedWriter_Package; use java.io.BufferedWriter_Package;
with java.io.FileWriter_Package; use java.io.FileWriter_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.io.file.AbFileInterface_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.io.BufferedWriterUtil_Package is

   package BufferedWriter_Package renames Standard.java.io.BufferedWriter_Package;
   package FileWriter_Package renames Standard.java.io.FileWriter_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   function "=" (Left, Right : CommonLabels_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out BufferedWriterUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonLabels := CommonLabels_Package.getInstance;
      This.REMOVING_OLD := To_Unbounded_String ("Remove old for overwriting: ");
   end Initialize_Fields;

   procedure Initialize (This : in out BufferedWriterUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BufferedWriterUtil_Access is
      This : constant BufferedWriterUtil_Access := new BufferedWriterUtil;
   begin
      BufferedWriterUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BufferedWriterUtil_Access is
   begin
        return BufferedWriterUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure overwrite (This : in out BufferedWriterUtil; path : Unbounded_String; data : Unbounded_String) is
      abFile : AbFile_Access;
      name : Unbounded_String;
      abFileDirectory : AbFile_Access;
      stringBuilder : StringMaker_Access;
      result : Boolean;
   begin
        abFile := AbFile_Package.createAbFile (path);
        if abFile.exists then
            This.logUtil.putF (This.REMOVING_OLD & path, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
            declare Java_Result renames abFile.delete; pragma Unreferenced (Java_Result); begin null; end;
        else
            name := AbPathData_Package.getInstance.removeNameFromPath (path);
            abFileDirectory := AbFile_Package.createAbFile (name);
            if abFileDirectory.exists then
                null;
            else
                stringBuilder := StringMaker_Package.Create;
                This.logUtil.putF (stringBuilder.append (This.commonStrings.CREATE).append (This.commonLabels.COLON_SEP).append (name).toString, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
                result := abFileDirectory.mkdirs;
                stringBuilder.delete (0, stringBuilder.length);
                This.logUtil.putF (stringBuilder.append (This.commonLabels.RESULT_U).appendboolean (result).toString, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
            end if;
        end if;
        BufferedWriterUtil'Class (This).write (abFile, data);
   end overwrite;

   --  throws Exception
   procedure overwrite (This : in out BufferedWriterUtil; abFile_Param : access AbFile_Package.AbFile'Class; data : Unbounded_String) is
      abFile : constant AbFile_Access := AbFile_Access (abFile_Param);
      name : Unbounded_String;
      abFileDirectory : AbFile_Access;
      stringBuilder : StringMaker_Access;
      result : Boolean;
   begin
        if abFile.exists then
            This.logUtil.putF (This.REMOVING_OLD & abFile.getPath, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
            declare Java_Result renames abFile.delete; pragma Unreferenced (Java_Result); begin null; end;
        else
            name := AbPathData_Package.getInstance.removeNameFromPath (abFile.getAbsolutePath);
            abFileDirectory := AbFile_Package.createAbFile (name);
            if abFileDirectory.exists then
                null;
            else
                stringBuilder := StringMaker_Package.Create;
                This.logUtil.putF (stringBuilder.append (This.commonStrings.CREATE).append (This.commonLabels.COLON_SEP).append (name).toString, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
                result := abFileDirectory.mkdirs;
                stringBuilder.delete (0, stringBuilder.length);
                This.logUtil.putF (stringBuilder.append (This.commonLabels.RESULT_U).appendboolean (result).toString, BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
            end if;
        end if;
        BufferedWriterUtil'Class (This).write (abFile, data);
   end overwrite;

   --  throws Exception
   procedure write (This : in out BufferedWriterUtil; abFile_Param : access AbFile_Package.AbFile'Class; data : Unbounded_String) is
      abFile : constant AbFile_Access := AbFile_Access (abFile_Param);
      fileOut : BufferedWriter_Access;
   begin
        fileOut := BufferedWriter_Package.Create (FileWriter_Package.Create (AbFileNativeUtil_Package.get (abFile)));
        fileOut.write (data, 0, Ada.Strings.Unbounded.Length (data));
        fileOut.newLine;
        fileOut.flush;
   end write;

begin
   null;
   instance := BufferedWriterUtil_Package.Create;

end org.allbinary.logic.io.BufferedWriterUtil_Package;


