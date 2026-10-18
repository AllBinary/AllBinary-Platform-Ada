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


with org.apache.xmlrpc.XmlRpcException_Package; use org.apache.xmlrpc.XmlRpcException_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.canvas.SpecialMessageUtil_Package; use org.allbinary.canvas.SpecialMessageUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package; use org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package; use org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package;

package body org.allbinary.logic.communication.log.LogUtil_Package is

   package XmlRpcException_Package renames Standard.org.apache.xmlrpc.XmlRpcException_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package SpecialMessageUtil_Package renames Standard.org.allbinary.canvas.SpecialMessageUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
      This.MESSAGE := To_Unbounded_String ("message");
      This.isFirstException := True;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (200000);
      This.abeClientInformation := null;
      This.stringBuffer := StringMaker_Package.Create;
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
        if (log) = (null) then
            return;
        end if;
        specialMessage := log.getSpecialMessage;
        anyType := log.getObject;
        functionName := log.getFunctionName;
        exception_Id := log.getThrowable;
        LogUtil'Class (This).put (specialMessage, anyType, functionName, exception_Id);
   end putL;

   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end putF;

   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) is
   begin
        null;
   end putF;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
      hashtable : ABHashtable_Access;
   begin
        if (exception_Id) /= (null) then
            if (To_Unbounded_String (Ada.Tags.Expanded_Name (exception_Id.all'Tag)).compareTo (XmlRpcException_Package.XmlRpcException'Tag.getName)) = (0) then
                return;
            end if;
            if (To_Unbounded_String (Ada.Tags.Expanded_Name (exception_Id.all'Tag)).compareTo (IOException_Package.IOException'Tag.getName)) = (0) then
                return;
            end if;
            if (This.isFirstException) or else (This.timeDelayHelper.isTimeTNT) then
                className := CommonStrings_Package.getInstance.EMPTY;
                This.isFirstException := False;
                if ((anyType) /= (null)) and then ((To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))) /= (Null_Unbounded_String)) then
                    className := Java_New_String (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag)));
                end if;
                message := LogFormatUtil_Package.getInstance.get (className, functionName, specialMessage, exception_Id);
                begin
                    Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Eeeek")));
                    if (This.abeClientInformation) = (null) then
                        Java_Throw (Java_New_Exception ("RuntimeException"));
                    end if;
                    hashtable := This.abeClientInformation.toHashtable;
                    This.stringBuffer.delete (0, This.stringBuffer.length);
                    This.stringBuffer.append (message);
                    This.stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
                    This.stringBuffer.append (SpecialMessageUtil_Package.getInstance.get);
                    hashtable.put (This.MESSAGE, This.stringBuffer.toString);
                    XmlRpcRemoteLogClient_Package.Create (This.abeClientInformation).get (hashtable);
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Exception")));
                    Java_Print_Stack_Trace (e);
                        end;
                end;
            end if;
        end if;
   end put;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


