-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.logic.communication.log.ExceptionFactory_Package is

   procedure Initialize_Fields (This : in out ExceptionFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ExceptionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ExceptionFactory_Access is
      This : constant ExceptionFactory_Access := new ExceptionFactory;
   begin
      ExceptionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createThrowable (message : Unbounded_String) return Java_Throwable is
   begin
        return Java_New_Exception ("Throwable", message);
   end createThrowable;

   procedure createThrowable (message : Unbounded_String) is
      Java_Result : constant Java_Throwable := createThrowable (message);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createThrowable;

end org.allbinary.logic.communication.log.ExceptionFactory_Package;


