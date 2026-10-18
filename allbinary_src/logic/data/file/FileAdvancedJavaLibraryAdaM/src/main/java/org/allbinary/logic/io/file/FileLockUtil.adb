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


package body org.allbinary.logic.io.file.FileLockUtil_Package is

   procedure Initialize_Fields (This : in out FileLockUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return FileLockUtil_Access is
   begin
        return FileLockUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FileLockUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileLockUtil_Access is
      This : constant FileLockUtil_Access := new FileLockUtil;
   begin
      FileLockUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean) return BasicArrayList_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      fileLockVector : BasicArrayList_Access;
      size : Integer;
      file : AbFile_Access;
      fileLock : FileLock_Access;
      index : Integer;
   begin
        fileLockVector := BasicArrayListD_Package.Create;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            file := AbFile_Access (vector.get (index));
            fileLock := FileLockUtil'Class (This).getLock (file);
            if (fileLock) /= (null) then
                This.logUtil.putF (To_Unbounded_String ("File Lock Obtained: ") & Java_Image (file.getAbsolutePath), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getAll"));
                fileLockVector.add (fileLock);
            elsif isReturnOnFailure then
                This.logUtil.putF (To_Unbounded_String ("Total Locks Obtained: ") & Java_Image (fileLockVector.size), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getAll"));
                return fileLockVector;
            end if;
        end loop;
        This.logUtil.putF (To_Unbounded_String ("Total Locks Obtained: ") & Java_Image (fileLockVector.size), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getAll"));
        return fileLockVector;
   end getAll;

   --  throws Exception
   function getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
   begin
        return FileLockUtil'Class (This).getAll (vector, False);
   end getAllPossible;

   --  throws Exception
   function getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      fileLockVector : BasicArrayList_Access;
   begin
        fileLockVector := FileLockUtil'Class (This).getAll (vector, True);
        if (vector.size) /= (fileLockVector.size) then
            return BasicArrayListD_Package.Create;
        else
            return fileLockVector;
        end if;
   end getAllOrNone;

   --  throws Exception
   function getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class) return FileLock_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        begin
            return FileLockUtil'Class (This).getLock (AbFileOutputStream_Package.createFromAbFileAppend (file, True));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            null;
        end;
   end getLock;

   --  throws Exception
   function getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class) return FileLock_Access is
      fileOutputStream : constant AbFileOutputStream_Access := AbFileOutputStream_Access (fileOutputStream_Param);
      fileLock : FileLock_Access;
   begin
        begin
            fileLock := FileLockUtil'Class (This).getLock (fileOutputStream.getChannel);
            return fileLock;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            This.logUtil.putF (To_Unbounded_String ("Finally - Closing FileOutputStream"), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getLock"));
            StreamUtil_Package.getInstance.close (fileOutputStream);
        end;
   end getLock;

   --  throws Exception
   function getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class) return FileLock_Access is
      fileChannel : constant FileChannel_Access := FileChannel_Access (fileChannel_Param);
      fileLock : FileLock_Access;
   begin
        begin
            fileLock := fileChannel.tryLock;
            return fileLock;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            This.logUtil.putF (To_Unbounded_String ("Finally - Closing FileChannel"), FileLockUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getLock"));
            fileChannel.close;
        end;
   end getLock;

   procedure getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAll (vector_Param, isReturnOnFailure);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAllPossible (vector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllPossible;

   procedure getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAllOrNone (vector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllOrNone;

   procedure getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

   procedure getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (fileOutputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

   procedure getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (fileChannel_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

begin
   null;
   instance := FileLockUtil_Package.Create;

end org.allbinary.logic.io.file.FileLockUtil_Package;


