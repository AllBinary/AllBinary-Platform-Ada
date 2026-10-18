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
        className := CommonStrings_Package.getInstance.EMPTY;
        if (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))) /= (Null_Unbounded_String) then
            className := Java_New_String (StringMaker_Package.Create.append (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (anyType), 16))).toString);
        end if;
        message := This.logFormatUtil.getS (className, functionName, specialMessage);
        Ada.Text_IO.Put (Java_Image (LogUtil_Package.LOG_SUCCESS));
        Ada.Text_IO.Put_Line (Java_Image (message));
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className_Param : Unbounded_String; functionName : Unbounded_String) is
      className : Unbounded_String := className_Param;
      message : Unbounded_String;
   begin
        className := Java_New_String (StringMaker_Package.Create.append (className).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (This.anyType), 16))).toString);
        message := This.logFormatUtil.getS (className, functionName, specialMessage);
        Ada.Text_IO.Put (Java_Image (LogUtil_Package.LOG_SUCCESS));
        Ada.Text_IO.Put_Line (Java_Image (message));
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := CommonStrings_Package.getInstance.EMPTY;
        if (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))) /= (Null_Unbounded_String) then
            className := Java_New_String (StringMaker_Package.Create.append (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (anyType), 16))).toString);
        end if;
        message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
        Ada.Text_IO.Put (Java_Image (LogUtil_Package.LOG_SUCCESS));
        Ada.Text_IO.Put_Line (Java_Image (message));
   end put;

begin
   null;
   instance := LogUtil_Package.Create;
   LOG_SUCCESS := To_Unbounded_String ("org.allbinary: ");

end org.allbinary.logic.communication.log.LogUtil_Package;


