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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) return Log_Access is
   begin
        return Log_Package.Create (specialMessage, anyType, functionName, exception_Id);
   end getInstance;

   function getInstanceF (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) return Log_Access is
   begin
        return null;
   end getInstanceF;

   function getInstanceSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id : Java_Object_Access) return Log_Access is
   begin
        return LogFactory_Package.getInstance (specialMessage, className, functionName, exception_Id);
   end getInstanceSE;

   procedure getInstance (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      Java_Result : constant Log_Access := getInstance (specialMessage, anyType, functionName, exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceF (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) is
      Java_Result : constant Log_Access := getInstanceF (specialMessage, anyType, functionName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceF;

   procedure getInstanceSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id : Java_Object_Access) is
      Java_Result : constant Log_Access := getInstanceSE (specialMessage, className, functionName, exception_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceSE;

end org.allbinary.logic.communication.log.LogFactory_Package;


