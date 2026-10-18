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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.communication.log.LogUtil_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out LogUtil'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.logFormatUtil := LogFormatUtil_Package.getInstance;
      This.LABEL := To_Unbounded_String ("org.allbinary");
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
   begin
        LogUtil'Class (This).put (specialMessage, anyType, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end putF;

   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; string_Id : Unbounded_String; functionName : Unbounded_String) is
   begin
        LogUtil'Class (This).putS (specialMessage, string_Id, functionName, NullUtil_Package.getInstance.NULL_OBJECT);
   end putFS;

   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := This.LABEL;
        className := Java_New_String (StringMaker_Package.Create.append (To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag))).append (This.commonSeps.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (anyType), 16))).toString);
        message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
        android_Package.util.Log.i (This.LABEL, message);
   end put;

   procedure putS (This : in out LogUtil; specialMessage : Unbounded_String; string_Id : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      className : Unbounded_String;
      message : Unbounded_String;
   begin
        className := This.LABEL;
        className := Java_New_String (StringMaker_Package.Create.append (string_Id).append (This.commonSeps.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (string_Id), 16))).toString);
        message := This.logFormatUtil.get (className, functionName, specialMessage, exception_Id);
        android_Package.util.Log.i (This.LABEL, message);
   end putS;

begin
   null;
   instance := LogUtil_Package.Create;

end org.allbinary.logic.communication.log.LogUtil_Package;


