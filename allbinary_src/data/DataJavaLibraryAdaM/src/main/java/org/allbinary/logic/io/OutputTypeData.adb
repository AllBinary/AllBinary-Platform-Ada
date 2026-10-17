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


package body org.allbinary.logic.io.OutputTypeData_Package is

   procedure Initialize_Fields (This : in out OutputTypeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("OUTPUT_TYPE_NAME");
   end Initialize_Fields;


   procedure Initialize (This : in out OutputTypeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OutputTypeData_Access is
      This : constant OutputTypeData_Access := new OutputTypeData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return OutputTypeData_Access is
   begin
        return OutputTypeData_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant OutputTypeData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OutputTypeData_Package.Create;

end org.allbinary.logic.io.OutputTypeData_Package;


