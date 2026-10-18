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



package body org.allbinary.business.error.ErrorData_Package is

   procedure Initialize_Fields (This : in out ErrorData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("ERROR_NAME");
      This.TEXT := To_Unbounded_String ("ERROR_TEXT");
   end Initialize_Fields;


   function getInstance return ErrorData_Access is
   begin
        return ErrorData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ErrorData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ErrorData_Access is
      This : constant ErrorData_Access := new ErrorData;
   begin
      ErrorData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := ErrorData_Package.Create;

end org.allbinary.business.error.ErrorData_Package;


