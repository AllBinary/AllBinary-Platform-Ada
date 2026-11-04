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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;

package body org.allbinary.logic.communication.log.LogBuffer_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Log_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access;
   function "=" (Left, Right : Log_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array;
   function "=" (Left, Right : Log_Access_Array) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access;
   function "=" (Left, Right : Log_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array;
   function "=" (Left, Right : Log_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Log_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
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


