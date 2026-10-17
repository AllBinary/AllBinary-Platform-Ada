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

   function get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id : Java_Object_Access) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end get;

   function getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getS;

   function getO (This : in out LogFormatUtil; exception_Id : Java_Object_Access) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getO;

   procedure get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id : Java_Object_Access) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).get (className, functionName, specialMessage, exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).getS (className, functionName, specialMessage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getS;

   procedure getO (This : in out LogFormatUtil; exception_Id : Java_Object_Access) is
      Java_Result : constant Unbounded_String := LogFormatUtil'Class (This).getO (exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getO;

begin
   null;
   instance := LogFormatUtil_Package.Create;

end org.allbinary.logic.communication.log.LogFormatUtil_Package;


