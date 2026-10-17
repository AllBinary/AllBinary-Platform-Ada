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


package body org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package is

   procedure Initialize_Fields (This : in out BodyData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("BODY_NAME");
      This.VIEWNAMEKEY := To_Unbounded_String ("Body");
      This.MIN := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BodyData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BodyData_Access is
      This : constant BodyData_Access := new BodyData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return BodyData_Access is
   begin
        return BodyData_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant BodyData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BodyData_Package.Create;

end org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;


