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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getAll (This : in out FileLockUtil; vector : BasicArrayList_Access; isReturnOnFailure : Boolean) return BasicArrayList_Access is
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
            fileLock := This.getLock (file);
            if (fileLock) /= (null) then
                This.logUtil.putF (To_Unbounded_String ("File Lock Obtained: ") & Java_Image (file.getAbsolutePath), This'Unchecked_Access, To_Unbounded_String ("getAll"));
                fileLockVector.add (fileLock);
            elsif isReturnOnFailure then
                This.logUtil.putF (To_Unbounded_String ("Total Locks Obtained: ") & Java_Image (fileLockVector.size), This'Unchecked_Access, To_Unbounded_String ("getAll"));
                return fileLockVector;
            end if;
        end loop;
        This.logUtil.putF (To_Unbounded_String ("Total Locks Obtained: ") & Java_Image (fileLockVector.size), This'Unchecked_Access, To_Unbounded_String ("getAll"));
        return fileLockVector;
   end getAll;

   --  throws Exception
   function getAllPossible (This : in out FileLockUtil; vector : BasicArrayList_Access) return BasicArrayList_Access is
   begin
        return This.getAll (vector, False);
   end getAllPossible;

   --  throws Exception
   function getAllOrNone (This : in out FileLockUtil; vector : BasicArrayList_Access) return BasicArrayList_Access is
      fileLockVector : BasicArrayList_Access;
   begin
        fileLockVector := This.getAll (vector, True);
        if (vector.size) /= (fileLockVector.size) then
            return BasicArrayListD_Package.Create;
        else
            return fileLockVector;
        end if;
   end getAllOrNone;

   --  throws Exception
   function getLock (This : in out FileLockUtil; file : AbFile_Access) return FileLock_Access is
   begin
        begin
            return This.getLock (AbFileOutputStream_Package.createFromAbFileAppend (file, True));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), This'Unchecked_Access, To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            null;
        end;
   end getLock;

   --  throws Exception
   function getLock (This : in out FileLockUtil; fileOutputStream : AbFileOutputStream_Access) return FileLock_Access is
      fileLock : FileLock_Access;
   begin
        begin
            fileLock := This.getLock (fileOutputStream.getChannel);
            return fileLock;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), This'Unchecked_Access, To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            This.logUtil.putF (To_Unbounded_String ("Finally - Closing FileOutputStream"), This'Unchecked_Access, To_Unbounded_String ("getLock"));
            StreamUtil_Package.getInstance.close (fileOutputStream);
        end;
   end getLock;

   --  throws Exception
   function getLock (This : in out FileLockUtil; fileChannel : FileChannel_Access) return FileLock_Access is
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
            This.logUtil.put (To_Unbounded_String ("Exception returns null"), This'Unchecked_Access, To_Unbounded_String ("getLock"), e);
            return null;
                end;
        end;
        --  finally
        begin
            This.logUtil.putF (To_Unbounded_String ("Finally - Closing FileChannel"), This'Unchecked_Access, To_Unbounded_String ("getLock"));
            fileChannel.close;
        end;
   end getLock;

   procedure getInstance is
      Java_Result : constant FileLockUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getAll (This : in out FileLockUtil; vector : BasicArrayList_Access; isReturnOnFailure : Boolean) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAll (vector, isReturnOnFailure);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAllPossible (This : in out FileLockUtil; vector : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAllPossible (vector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllPossible;

   procedure getAllOrNone (This : in out FileLockUtil; vector : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := FileLockUtil'Class (This).getAllOrNone (vector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllOrNone;

   procedure getLock (This : in out FileLockUtil; file : AbFile_Access) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

   procedure getLock (This : in out FileLockUtil; fileOutputStream : AbFileOutputStream_Access) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (fileOutputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

   procedure getLock (This : in out FileLockUtil; fileChannel : FileChannel_Access) is
      Java_Result : constant FileLock_Access := FileLockUtil'Class (This).getLock (fileChannel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLock;

begin
   null;
   instance := FileLockUtil_Package.Create;

end org.allbinary.logic.io.file.FileLockUtil_Package;


