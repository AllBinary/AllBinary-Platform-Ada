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



package body org.allbinary.logic.io.InputTypeData_Package is

   procedure Initialize_Fields (This : in out InputTypeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("INPUT_TYPE_NAME");
   end Initialize_Fields;


   function getInstance return InputTypeData_Access is
   begin
        return InputTypeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InputTypeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputTypeData_Access is
      This : constant InputTypeData_Access := new InputTypeData;
   begin
      InputTypeData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := InputTypeData_Package.Create;

end org.allbinary.logic.io.InputTypeData_Package;


