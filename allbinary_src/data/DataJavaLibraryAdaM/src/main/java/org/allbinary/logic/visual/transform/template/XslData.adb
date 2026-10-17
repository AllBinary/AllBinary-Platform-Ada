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


package body org.allbinary.logic.visual.transform.template.XslData_Package is

   procedure Initialize_Fields (This : in out XslData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("XSL_NAME");
      This.ROOT_IMPORT_URI := To_Unbounded_String ("ROOT_IMPORT_URI");
   end Initialize_Fields;


   function getInstance return XslData_Access is
   begin
        return XslData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out XslData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return XslData_Access is
      This : constant XslData_Access := new XslData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant XslData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := XslData_Package.Create;

end org.allbinary.logic.visual.transform.template.XslData_Package;


