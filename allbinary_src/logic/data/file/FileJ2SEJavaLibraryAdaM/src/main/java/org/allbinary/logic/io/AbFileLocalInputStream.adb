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


package body org.allbinary.logic.io.AbFileLocalInputStream_Package is

   procedure Initialize_Fields (This : in out AbFileLocalInputStream'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileLocalInputStream'Class; file_Param : access AbFile'Class) is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        AbFileInputStream_Package.Initialize (This, AbFileNativeUtil_Package.get (file));
   end Initialize;

   function Create (file_Param : access AbFile'Class) return AbFileLocalInputStream_Access is
      This : constant AbFileLocalInputStream_Access := new AbFileLocalInputStream;
   begin
      AbFileLocalInputStream_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

end org.allbinary.logic.io.AbFileLocalInputStream_Package;


