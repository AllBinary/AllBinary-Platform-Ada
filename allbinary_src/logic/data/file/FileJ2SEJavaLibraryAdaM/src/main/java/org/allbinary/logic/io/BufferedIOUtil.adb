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


package body org.allbinary.logic.io.BufferedIOUtil_Package is

   procedure Initialize_Fields (This : in out BufferedIOUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BufferedIOUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BufferedIOUtil_Access is
      This : constant BufferedIOUtil_Access := new BufferedIOUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure copy (backupFile : AbFile_Access; backupFileBak : AbFile_Access) is
      line : Unbounded_String;
      tmpOut : BufferedWriter_Access;
      tmpIn : BufferedReader_Access;
   begin
        line := StringUtil_Package.getInstance.EMPTY_STRING;
        tmpOut := BufferedWriter_Package.Create (FileWriter_Package.Create (AbFileNativeUtil_Package.get (backupFileBak)));
        tmpIn := BufferedReader_Package.Create (FileReader_Package.Create (AbFileNativeUtil_Package.get (backupFile)));
        while True loop
            line := tmpIn.readLine;
            if (line) = (Null_Unbounded_String) then
                exit;
            end if;
            tmpOut.write (line, 0, Length (line));
            tmpOut.newLine;
        end loop;
        tmpOut.flush;
   end copy;

end org.allbinary.logic.io.BufferedIOUtil_Package;


