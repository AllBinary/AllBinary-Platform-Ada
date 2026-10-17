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


package body org.allbinary.logic.communication.log.Log_Package is

   procedure Initialize_Fields (This : in out Log'Class) is
   begin
      null;
      This.logFormatUtil := LogFormatUtil_Package.getInstance;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out Log'Class; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
      Initialize_Fields (This);
        This.specialMessage := specialMessage;
        This.anyType := anyType;
        This.functionName := functionName;
        This.exception_Id := exception_Id;
   end Initialize;

   function Create (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access is
      This : constant Log_Access := new Log;
   begin
      Log_Package.Initialize (This.all, specialMessage, anyType_Param, functionName, exception_Id_Param);
      return This;
   end Create;

   function getSpecialMessage (This : in out Log) return Unbounded_String is
   begin
        return This.specialMessage;
   end getSpecialMessage;

   function getObject (This : in out Log) return Java_Object_Access is
   begin
        return This.anyType;
   end getObject;

   function getFunctionName (This : in out Log) return Unbounded_String is
   begin
        return This.functionName;
   end getFunctionName;

   function getThrowable (This : in out Log) return Java_Object_Access is
   begin
        return This.exception_Id;
   end getThrowable;

   function toString (This : in out Log) return Unbounded_String is
      className : Unbounded_String;
      clazz : Ada.Tags.Tag;
   begin
        className := CommonStrings_Package.getInstance.EMPTY;
        clazz := This.anyType.all'Tag;
        if (To_Unbounded_String (Ada.Tags.Expanded_Name (clazz))) /= (Null_Unbounded_String) then
            className := To_Unbounded_String (Ada.Tags.Expanded_Name (clazz));
        end if;
        return This.logFormatUtil.get (className, This.functionName, This.specialMessage, This.exception_Id);
   end toString;

end org.allbinary.logic.communication.log.Log_Package;


