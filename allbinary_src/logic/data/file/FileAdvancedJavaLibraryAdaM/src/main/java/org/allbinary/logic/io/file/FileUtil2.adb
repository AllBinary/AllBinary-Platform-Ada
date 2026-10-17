-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.logic.io.file.FileUtil2_Package is

   procedure Initialize_Fields (This : in out FileUtil2'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.streamUtil := StreamUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return FileUtil2_Access is
   begin
        return FileUtil2_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FileUtil2'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileUtil2_Access is
      This : constant FileUtil2_Access := new FileUtil2;
   begin
      FileUtil2_Package.Initialize (This.all);
      return This;
   end Create;

   function loadFileAsList (This : in out FileUtil2; file_Param : access AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      inputStream : AbFileInputStream_Access;
   begin
        inputStream := null;
        begin
            inputStream := AbFileInputStream_Package.Create (file);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileUtil2_Access'(This'Unchecked_Access), This.commonStrings.ADD, e);
                end;
        end;
        return SimpleFileUtil_Package.getInstance.loadFileAsList (inputStream, max, byteArray1);
   end loadFileAsList;

   procedure loadFileAsList (This : in out FileUtil2; file_Param : access AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) is
      Java_Result : constant BasicArrayList_Access := FileUtil2'Class (This).loadFileAsList (file_Param, max, byteArray1);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsList;

begin
   null;
   instance := FileUtil2_Package.Create;

end org.allbinary.logic.io.file.FileUtil2_Package;


