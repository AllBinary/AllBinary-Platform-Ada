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


package body org.allbinary.logic.communication.log.LogUtil_Package is

   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return LogUtil_Access is
   begin
        return LogUtil_Package.instance;
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

   procedure putL (This : in out LogUtil; log : Log_Access) is
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
      exception_Id : Java_Object_Access;
   begin
        specialMessage := log.getSpecialMessage;
        anyType := log.getObject;
        functionName := log.getFunctionName;
        exception_Id := log.getThrowable;
        This.put (specialMessage, anyType, functionName, exception_Id);
   end putL;

   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) is
   begin
        FileLog_Package.put (specialMessage, anyType, functionName);
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
   begin
        FileLog_Package.put (specialMessage, className, functionName);
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
   begin
        FileLog_Package.put (specialMessage, anyType, functionName, Java_Throwable (exception_Id));
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


