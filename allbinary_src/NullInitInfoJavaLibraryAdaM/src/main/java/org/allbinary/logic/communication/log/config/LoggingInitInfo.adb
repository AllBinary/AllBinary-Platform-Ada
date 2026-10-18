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
with org.allbinary.logic.communication.log.config.LogConfig_Package; use org.allbinary.logic.communication.log.config.LogConfig_Package;

package body org.allbinary.logic.communication.log.config.LoggingInitInfo_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out LoggingInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LoggingInitInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LoggingInitInfo_Access is
      This : constant LoggingInitInfo_Access := new LoggingInitInfo;
   begin
      LoggingInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure write is
   begin
        begin
            LoggingInitInfo_Package.hasRead := False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end write;

   --  throws Exception
   procedure read is
   begin
        begin
            null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end read;

   procedure setHasRead (value : Boolean) is
   begin
        LoggingInitInfo_Package.hasRead := value;
   end setHasRead;

   --  throws Exception
   procedure updateIfNeeded is
   begin
        if not (LoggingInitInfo_Package.hasRead) then
            LoggingInitInfo_Package.read;
            LoggingInitInfo_Package.hasRead := True;
            if (LoggingInitInfo_Package.logConfigInfoList) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Read Failed")));
            end if;
        end if;
   end updateIfNeeded;

   function isValid (This : in out LoggingInitInfo) return Boolean is
   begin
        begin
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isValid;

   procedure set (logConfigInfoList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      logConfigInfoList : constant BasicArrayList_Access := BasicArrayList_Access (logConfigInfoList_Param);
   begin
        LoggingInitInfo_Package.logConfigInfoList := logConfigInfoList;
   end set;

   --  throws Exception
   function get return BasicArrayList_Access is
   begin
        LoggingInitInfo_Package.updateIfNeeded;
        return LoggingInitInfo_Package.logConfigInfoList;
   end get;

   --  throws Exception
   function getTypeList return BasicArrayList_Access is
      allLogTypeVector : BasicArrayList_Access;
      size : Integer;
      logConfigInfo : LogConfig_Access;
      logTypeVector : BasicArrayList_Access;
      index : Integer;
   begin
        LoggingInitInfo_Package.updateIfNeeded;
        allLogTypeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := LoggingInitInfo_Package.logConfigInfoList.size;
        for index in 0 .. (size) - 1 loop
            logConfigInfo := LogConfig_Access (LoggingInitInfo_Package.logConfigInfoList.objectArray (index));
            logTypeVector := logConfigInfo.getTypeVector;
            if logConfigInfo.isEnabled then
                allLogTypeVector.addAllList (logTypeVector);
            end if;
        end loop;
        return allLogTypeVector;
   end getTypeList;

   --  throws Exception
   function getNumberOfLogConfigs (This : in out LoggingInitInfo) return Integer is
   begin
        return LoggingInitInfo_Package.logConfigInfoList.size;
   end getNumberOfLogConfigs;

   function toString (This : in out LoggingInitInfo) return Unbounded_String is
   begin
        begin
            return Null_Unbounded_String;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("Error");
                end;
        end;
   end toString;

begin
   null;
   logConfigInfoList := null;
   hasRead := False;

end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;


