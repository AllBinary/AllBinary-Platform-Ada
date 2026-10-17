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


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package is

   procedure Initialize_Fields (This : in out HtmlMetaAttributeDataFactory'Class) is
   begin
      null;
      This.NAME := HtmlMetaAttributeData_Package.Create (0, To_Unbounded_String ("HTMLMETA_ATTRIBUTE_NAME"));
      This.HTTP_EQUIV := HtmlMetaAttributeData_Package.Create (1, To_Unbounded_String ("HTMLMETA_ATTRIBUTE_HTTPEQUIV"));
      This.CONTENT := HtmlMetaAttributeData_Package.Create (2, To_Unbounded_String ("HTMLMETA_ATTRIBUTE_CONTENT"));
   end Initialize_Fields;


   function getInstance return HtmlMetaAttributeDataFactory_Access is
   begin
        return HtmlMetaAttributeDataFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HtmlMetaAttributeDataFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlMetaAttributeDataFactory_Access is
      This : constant HtmlMetaAttributeDataFactory_Access := new HtmlMetaAttributeDataFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant HtmlMetaAttributeDataFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HtmlMetaAttributeDataFactory_Package.Create;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;


