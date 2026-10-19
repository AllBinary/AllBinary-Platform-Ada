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



package body org.allbinary.logic.communication.log.LogFormatUtil_Package is

   procedure Initialize_Fields (This : in out LogFormatUtil'Class) is
   begin
      null;
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
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end get;

   function getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getS;

   function getO (This : in out LogFormatUtil; exception_Id_Param : access Java_Object'Class) return Unbounded_String is
      exception_Id : constant Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
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


