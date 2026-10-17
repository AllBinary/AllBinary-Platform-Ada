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


package body org.allbinary.logic.io.InputOutputTypeData_Package is

   procedure Initialize_Fields (This : in out InputOutputTypeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("INPUT_OUTPUT_TYPE_NAME");
      This.FILE := To_Unbounded_String ("INPUT_OUTPUT_TYPE_FILE");
      This.RESPONSE := To_Unbounded_String ("INPUT_OUTPUT_TYPE_RESPONSE");
      This.DB := To_Unbounded_String ("INPUT_OUTPUT_TYPE_DB");
      This.JSP := To_Unbounded_String ("jsp");
      This.JSP_FRAGMENT := To_Unbounded_String ("jspf");
      This.PHP := To_Unbounded_String ("php");
      This.ASP := To_Unbounded_String ("asp");
      This.PL := To_Unbounded_String ("pl");
      This.DEFAULT := This.JSP;
      This.DEFAULT_FRAGMENT := This.JSP_FRAGMENT;
   end Initialize_Fields;


   function getInstance return InputOutputTypeData_Access is
   begin
        return InputOutputTypeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InputOutputTypeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputOutputTypeData_Access is
      This : constant InputOutputTypeData_Access := new InputOutputTypeData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant InputOutputTypeData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := InputOutputTypeData_Package.Create;

end org.allbinary.logic.io.InputOutputTypeData_Package;


