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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.logic.communication.log.LogBuffer_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out LogBuffer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogBuffer'Class) is
   begin
      Initialize_Fields (This);
        This.logEntryVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return LogBuffer_Access is
      This : constant LogBuffer_Access := new LogBuffer;
   begin
      LogBuffer_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out LogBuffer; log_Param : access Log_Package.Log'Class) is
      log : constant Log_Access := Log_Access (log_Param);
   begin
        This.logEntryVector.add (Java_Object_Access (log));
   end add;

   procedure logAll (This : in out LogBuffer) is
      size : Integer;
      log : Log_Access;
      index : Integer;
   begin
        size := This.logEntryVector.size;
        for index in 0 .. (size) - 1 loop
            log := Log_Access (This.logEntryVector.get (index));
            This.logUtil.putL (log);
        end loop;
   end logAll;

end org.allbinary.logic.communication.log.LogBuffer_Package;


