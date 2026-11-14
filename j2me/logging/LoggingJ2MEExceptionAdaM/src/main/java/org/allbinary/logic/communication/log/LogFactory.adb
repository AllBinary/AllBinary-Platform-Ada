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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.Log_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.log.LogFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   procedure Initialize_Fields (This : in out LogFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LogFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LogFactory_Access is
      This : constant LogFactory_Access := new LogFactory;
   begin
      LogFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstanceD return Log_Access is
      stringUtil : StringUtil_Access;
      nullUtil : NullUtil_Access;
   begin
        stringUtil := StringUtil_Package.getInstance;
        nullUtil := NullUtil_Package.getInstance;
        return Log_Package.Create (stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
   end getInstanceD;

   function getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        return Log_Package.Create (specialMessage, anyType, functionName, exception_Id);
   end getInstance;

   function getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Log_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return LogFactory_Package.LOG;
   end getInstanceF;

   procedure getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      Java_Result : constant Log_Access := getInstance (specialMessage => specialMessage, anyType_Param => anyType_Param, functionName => functionName, exception_Id_Param => exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      Java_Result : constant Log_Access := getInstanceF (specialMessage => specialMessage, anyType_Param => anyType_Param, functionName => functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceF;

begin
   null;
   LOG := Log_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, NullUtil_Package.getInstance.NULL_OBJECT, StringUtil_Package.getInstance.EMPTY_STRING, NullUtil_Package.getInstance.NULL_OBJECT);

end org.allbinary.logic.communication.log.LogFactory_Package;


