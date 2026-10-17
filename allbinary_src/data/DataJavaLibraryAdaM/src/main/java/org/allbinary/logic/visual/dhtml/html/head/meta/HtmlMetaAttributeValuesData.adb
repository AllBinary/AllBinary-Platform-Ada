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


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package is

   procedure Initialize_Fields (This : in out HtmlMetaAttributeValuesData'Class) is
   begin
      null;
      This.ABSTRACT_Id := To_Unbounded_String ("abstract");
      This.DESCRIPTION := To_Unbounded_String ("description");
      This.KEYWORDS := To_Unbounded_String ("keywords");
   end Initialize_Fields;


   function getInstance return HtmlMetaAttributeValuesData_Access is
   begin
        return HtmlMetaAttributeValuesData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HtmlMetaAttributeValuesData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlMetaAttributeValuesData_Access is
      This : constant HtmlMetaAttributeValuesData_Access := new HtmlMetaAttributeValuesData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant HtmlMetaAttributeValuesData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HtmlMetaAttributeValuesData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;


