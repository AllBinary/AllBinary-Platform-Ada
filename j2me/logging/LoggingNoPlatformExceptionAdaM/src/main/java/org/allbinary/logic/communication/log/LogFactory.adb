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


package body org.allbinary.logic.communication.log.LogFactory_Package is

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


   function getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      exception_Id : Java_Object_Access := Java_Object_Access (exception_Id_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   function getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Log_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstanceF;

   procedure getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) is
      Java_Result : constant Log_Access := getInstance (specialMessage, anyType_Param, functionName, exception_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) is
      Java_Result : constant Log_Access := getInstanceF (specialMessage, anyType_Param, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceF;

begin
   null;
   LOG := Log_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, NullUtil_Package.getInstance.NULL_OBJECT, StringUtil_Package.getInstance.EMPTY_STRING, NullUtil_Package.getInstance.NULL_OBJECT);

end org.allbinary.logic.communication.log.LogFactory_Package;


