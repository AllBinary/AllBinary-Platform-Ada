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
      This.logger := Logger_Package.getLogger (LogUtil_Package.LogUtil'Tag.getName);
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

   procedure init (This : in out LogUtil) is
   begin
        PreLogUtil_Package.put (To_Unbounded_String ("Loggin Initialized"), LogUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("init()"));
   end init;

   procedure putL (This : in out LogUtil; log_Param : access Log'Class) is
      log : Log_Access := Log_Access (log_Param);
      exception_Id : Java_Object_Access;
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
      className : Unbounded_String;
      clazz : Ada.Tags.Tag;
      message : Unbounded_String;
   begin
        exception_Id := log.getThrowable;
        begin
            if (exception_Id) /= (null) then
                specialMessage := log.getSpecialMessage;
                anyType := log.getObject;
                functionName := log.getFunctionName;
                className := CommonStrings_Package.getInstance.EMPTY;
                clazz := anyType.all'Tag;
                if (To_Unbounded_String (Ada.Tags.Expanded_Name (clazz))) /= (Null_Unbounded_String) then
                    className := To_Unbounded_String (Ada.Tags.Expanded_Name (clazz));
                end if;
                message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
                This.logger.log (Level_Package.INFO, message);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end putL;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      clazz : Ada.Tags.Tag;
      message : Unbounded_String;
   begin
        begin
            className := CommonStrings_Package.getInstance.EMPTY;
            clazz := anyType.all'Tag;
            if (To_Unbounded_String (Ada.Tags.Expanded_Name (clazz))) /= (Null_Unbounded_String) then
                className := To_Unbounded_String (Ada.Tags.Expanded_Name (clazz));
            end if;
            message := This.logFormatUtil.getS (className, functionName, specialMessage);
            if (exception_Id) /= (null) then
                This.logger.log (Level_Package.SEVERE, message, exception_Id);
            else
                This.logger.log (Level_Package.INFO, message);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


