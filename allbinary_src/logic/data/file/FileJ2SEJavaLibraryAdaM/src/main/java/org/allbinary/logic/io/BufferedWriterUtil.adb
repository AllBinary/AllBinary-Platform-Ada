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


package body org.allbinary.logic.io.BufferedWriterUtil_Package is

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
            abFile.delete;
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
        This.write (abFile, data);
   end overwrite;

   --  throws Exception
   procedure overwrite (This : in out BufferedWriterUtil; abFile_Param : access AbFile'Class; data : Unbounded_String) is
      abFile : AbFile_Access := AbFile_Access (abFile_Param);
      name : Unbounded_String;
      abFileDirectory : AbFile_Access;
      stringBuilder : StringMaker_Access;
      result : Boolean;
   begin
        if abFile.exists then
            This.logUtil.putF (This.REMOVING_OLD & Java_Image (abFile.getPath), BufferedWriterUtil_Access'(This'Unchecked_Access), This.commonStrings.CREATE);
            abFile.delete;
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
        This.write (abFile, data);
   end overwrite;

   --  throws Exception
   procedure write (This : in out BufferedWriterUtil; abFile_Param : access AbFile'Class; data : Unbounded_String) is
      abFile : AbFile_Access := AbFile_Access (abFile_Param);
      fileOut : BufferedWriter_Access;
   begin
        fileOut := BufferedWriter_Package.Create (FileWriter_Package.Create (AbFileNativeUtil_Package.get (abFile)));
        fileOut.write (data, 0, Length (data));
        fileOut.newLine;
        fileOut.flush;
   end write;

begin
   null;
   instance := BufferedWriterUtil_Package.Create;

end org.allbinary.logic.io.BufferedWriterUtil_Package;


