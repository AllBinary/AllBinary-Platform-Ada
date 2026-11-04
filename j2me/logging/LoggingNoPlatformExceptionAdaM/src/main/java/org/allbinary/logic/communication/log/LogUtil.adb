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


with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;

package body org.allbinary.logic.communication.log.LogUtil_Package is

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
   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return LogUtil_Access is
   begin
        return LogUtil_Access (LogUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out LogUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogUtil_Access is
      This : constant LogUtil_Access := new LogUtil;
   begin
      LogUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure putL (This : in out LogUtil; log_Param : access Log_Package.Log'Class) is
      log : constant Log_Access := Log_Access (log_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end putL;

   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
   begin
        null;
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


