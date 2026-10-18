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
with org.allbinary.logic.communication.log.LogFactory_Package; use org.allbinary.logic.communication.log.LogFactory_Package;

package body org.allbinary.logic.communication.log.LogUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
      This.logFormatUtil := LogFormatUtil_Package.getInstance;
      This.LOG_SUCCESS := To_Unbounded_String ("org.allbinary: ");
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
      exception_Id : Java_Object_Access;
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
   begin
        if (log) = (LogFactory_Package.LOG) then
            return;
        end if;
        exception_Id := log.getThrowable;
        if (exception_Id) = (null) then
            return;
        end if;
        specialMessage := log.getSpecialMessage;
        anyType := log.getObject;
        functionName := log.getFunctionName;
        LogUtil'Class (This).put (specialMessage, anyType, functionName, exception_Id);
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
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := CommonStrings_Package.getInstance.EMPTY;
        if (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))) /= (Null_Unbounded_String) then
            className := Java_New_String (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag)));
        end if;
        message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
        Ada.Text_IO.Put (Java_Image (This.LOG_SUCCESS));
        Ada.Text_IO.Put_Line (Java_Image (message));
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


