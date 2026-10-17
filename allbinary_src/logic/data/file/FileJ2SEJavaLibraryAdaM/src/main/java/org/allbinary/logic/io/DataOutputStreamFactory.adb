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


package body org.allbinary.logic.io.DataOutputStreamFactory_Package is

   procedure Initialize_Fields (This : in out DataOutputStreamFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DataOutputStreamFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DataOutputStreamFactory_Access is
      This : constant DataOutputStreamFactory_Access := new DataOutputStreamFactory;
   begin
      DataOutputStreamFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DataOutputStreamFactory_Access is
   begin
        return DataOutputStreamFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstanceForAbFile (This : in out DataOutputStreamFactory; file_Param : access AbFile_Package.AbFile'Class) return AbDataOutputStream_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      idFileOutputStream : AbFileOutputStream_Access;
      idOutData : AbDataOutputStream_Access;
   begin
        idFileOutputStream := AbFileOutputStream_Package.createFromAbFile (file);
        idOutData := AbDataOutputStream_Package.Create (idFileOutputStream);
        return idOutData;
   end getInstanceForAbFile;

   --  throws Exception
   function getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String) return AbDataOutputStream_Access is
      fileStreamFactory : FileStreamFactory_Access;
      fileOutputStream : AbFileOutputStream_Access;
      idOutData : AbDataOutputStream_Access;
   begin
        fileStreamFactory := FileStreamFactory_Package.getInstance;
        fileOutputStream := fileStreamFactory.getFileOutputStreamInstance (filePath, fileName);
        idOutData := AbDataOutputStream_Package.Create (fileOutputStream);
        return idOutData;
   end getInstance;

   procedure getInstanceForAbFile (This : in out DataOutputStreamFactory; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant AbDataOutputStream_Access := DataOutputStreamFactory'Class (This).getInstanceForAbFile (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForAbFile;

   procedure getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbDataOutputStream_Access := DataOutputStreamFactory'Class (This).getInstance (filePath, fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := DataOutputStreamFactory_Package.Create;

end org.allbinary.logic.io.DataOutputStreamFactory_Package;


