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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package body org.allbinary.logic.communication.log.LogUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;
   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
      This.LOG_SUCCESS := To_Unbounded_String ("org.allbinary: ");
      This.logFormatUtil := LogFormatUtil_Package.getInstance;
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

   procedure putL (This : in out LogUtil; log_Param : access Log_Package.Log'Class) is
      log : constant Log_Access := Log_Access (log_Param);
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
      exception_Id : Java_Object_Access;
   begin
        specialMessage := log.getSpecialMessage;
        anyType := log.getObject;
        functionName := log.getFunctionName;
        exception_Id := log.getThrowable;
        LogUtil'Class (This).put (specialMessage, anyType, functionName, exception_Id);
   end putL;

   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        message := This.logFormatUtil.getS (className, functionName, specialMessage);
        PlayN_Package.log.debug (This.LOG_SUCCESS & message);
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
      message : Unbounded_String;
   begin
        message := This.logFormatUtil.getS (className, functionName, specialMessage);
        PlayN_Package.log.debug (This.LOG_SUCCESS & message);
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := PreLogUtil_Package.getClassName (anyType);
        if (className) = (Null_Unbounded_String) then
            className := CommonStrings_Package.getInstance.EMPTY;
        end if;
        message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
        if (exception_Id) /= (null) then
            PlayN_Package.log.error (This.LOG_SUCCESS & message, Java_Throwable (exception_Id));
        else
            PlayN_Package.log.debug (This.LOG_SUCCESS & message);
        end if;
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


