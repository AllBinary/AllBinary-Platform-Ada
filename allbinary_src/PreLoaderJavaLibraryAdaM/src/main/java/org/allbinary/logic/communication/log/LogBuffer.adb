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


package body org.allbinary.logic.communication.log.LogBuffer_Package is

   procedure Initialize_Fields (This : in out LogBuffer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogBuffer'Class) is
   begin
      Initialize_Fields (This);
        This.logEntryVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return LogBuffer_Access is
      This : constant LogBuffer_Access := new LogBuffer;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out LogBuffer; log : Log_Access) is
   begin
        This.logEntryVector.add (log);
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


