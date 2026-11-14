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
with org.allbinary.logic.NullUtil_Package_References;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.time.TimeStampUtil_Package; use org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.time.TimeStampUtil_Package_References;

package body org.allbinary.logic.communication.log.LogFormatUtil_Package is

   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   function "=" (Left, Right : NullUtil_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype ExceptionUtil_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access;
   function "=" (Left, Right : ExceptionUtil_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array;
   function "=" (Left, Right : ExceptionUtil_Access_Array) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype TimeStampUtil_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access;
   function "=" (Left, Right : TimeStampUtil_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array;
   function "=" (Left, Right : TimeStampUtil_Access_Array) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   procedure Initialize_Fields (This : in out LogFormatUtil'Class) is
   begin
      null;
      This.timeStampUtil := TimeStampUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.NONE := To_Unbounded_String ("None");
      This.LOG_ERROR := To_Unbounded_String ("" & ASCII.LF & "Log-Error: ");
      This.EMPTY := To_Unbounded_String ("Empty");
      This.STACK_TRACE := To_Unbounded_String ("" & ASCII.LF & "Stack Trace: ");
      This.TIME := To_Unbounded_String ("Time: ");
      This.CLASS_NAME := This.commonSeps.SPACE;
      This.FUNCTION_CALL := CommonLabels_Package.getInstance.COLON_SEP;
      This.SPECIAL_MESSAGE := To_Unbounded_String ("> ");
      This.stringUtil := StringUtil_Package.getInstance;
      This.exceptionUtil := ExceptionUtil_Package.getInstance;
      This.nullUtil := NullUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return LogFormatUtil_Access is
   begin
        return LogFormatUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogFormatUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogFormatUtil_Access is
      This : constant LogFormatUtil_Access := new LogFormatUtil;
   begin
      LogFormatUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Unbounded_String is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := LogFormatUtil'Class (This).getF (className, functionName);
        stringBuffer.append (LogFormatUtil'Class (This).getO (exception_Id));
        stringBuffer.append (This.SPECIAL_MESSAGE);
        stringBuffer.append (specialMessage);
        stringBuffer.append (This.commonSeps.NEW_LINE);
        return stringBuffer.toString;
   end get;

   function getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := LogFormatUtil'Class (This).getF (className, functionName);
        stringBuffer.append (This.SPECIAL_MESSAGE);
        stringBuffer.append (specialMessage);
        stringBuffer.append (This.commonSeps.NEW_LINE);
        return stringBuffer.toString;
   end getS;

   function getF (This : in out LogFormatUtil; className : Unbounded_String; functionName_Param : Unbounded_String) return StringMaker_Access is
      functionName : Unbounded_String := functionName_Param;
      stringBuffer : StringMaker_Access;
   begin
        if (functionName) = (Null_Unbounded_String) then
            functionName := This.NONE;
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.TIME);
        stringBuffer.append (This.timeStampUtil.getAsString);
        stringBuffer.append (This.CLASS_NAME);
        stringBuffer.append (className);
        stringBuffer.append (This.FUNCTION_CALL);
        stringBuffer.append (functionName);
        return stringBuffer;
   end getF;

   function getO (This : in out LogFormatUtil; exception_Id_Param : access Java_Object'Class) return Unbounded_String is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
      stringBuffer : StringMaker_Access;
      exceptionAsString : Unbounded_String;
   begin
        if (Java_Object_Access (exception_Id)) /= (Java_Object_Access (This.nullUtil.NULL_OBJECT)) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.LOG_ERROR);
            exceptionAsString := exception_Id.toString;
            if (exceptionAsString) /= (Null_Unbounded_String) then
                stringBuffer.append (exceptionAsString);
            else
                stringBuffer.append (This.EMPTY);
            end if;
            stringBuffer.append (This.STACK_TRACE);
            if (Java_Object_Access (exception_Id)) /= (Java_Object_Access (This.nullUtil.NULL_OBJECT)) then
                stringBuffer.append (This.exceptionUtil.getStackTrace (Java_Throwable (exception_Id)));
            else
                stringBuffer.append (This.stringUtil.NULL_STRING);
            end if;
            return stringBuffer.toString;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end getO;

   procedure get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).get (className => className, functionName => functionName, specialMessage => specialMessage, exception_Id_Param => exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).getS (className => className, functionName => functionName, specialMessage => specialMessage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getS;

   procedure getF (This : in out LogFormatUtil; className : Unbounded_String; functionName_Param : Unbounded_String) is
      Java_Result : constant StringMaker_Access := LogFormatUtil'Class (This).getF (className => className, functionName_Param => functionName_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getF;

   procedure getO (This : in out LogFormatUtil; exception_Id_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).getO (exception_Id_Param => exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getO;

   function getO (This : in out LogFormatUtil; Value : Unbounded_String) return Unbounded_String is
   begin
      return LogFormatUtil'Class (This).getO (Java_Box (Value));
   end getO;

   procedure getO (This : in out LogFormatUtil; Value : Unbounded_String) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).getO (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getO;

begin
   null;
   instance := LogFormatUtil_Package.Create;

end org.allbinary.logic.communication.log.LogFormatUtil_Package;


