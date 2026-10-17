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


package body org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package is

   procedure Initialize_Fields (This : in out TransformInfoTemplateData'Class) is
   begin
      null;
      This.UNCRYPTED_EXTENSION := To_Unbounded_String ("xsl");
      This.ENCRYPTED_EXTENSION := To_Unbounded_String ("abv");
   end Initialize_Fields;


   function getInstance return TransformInfoTemplateData_Access is
   begin
        return TransformInfoTemplateData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoTemplateData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoTemplateData_Access is
      This : constant TransformInfoTemplateData_Access := new TransformInfoTemplateData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant TransformInfoTemplateData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoTemplateData_Package.Create;

end org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;


