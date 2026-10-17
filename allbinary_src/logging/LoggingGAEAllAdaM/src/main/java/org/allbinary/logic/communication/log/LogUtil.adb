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
      Initialize (This.all);
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
        This.put (specialMessage, anyType, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
   begin
        This.putS (specialMessage, className, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      className : Unbounded_String;
      clazz : Ada.Tags.Tag;
      message : Unbounded_String;
   begin
        begin
            className := CommonStrings_Package.getInstance.EMPTY;
            clazz := anyType.all'Tag;
            if (clazz.getName) /= (Null_Unbounded_String) then
                className := clazz.getName;
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

   procedure putS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      message : Unbounded_String;
   begin
        begin
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
   end putS;

   procedure getInstance is
      Java_Result : constant LogUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


