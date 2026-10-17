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


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package is

   procedure Initialize_Fields (This : in out HtmlMetaAttributesData'Class) is
   begin
      null;
      This.NAME_VALUE := To_Unbounded_String ("name");
      This.HTTP_EQUIV_VALUE := To_Unbounded_String ("http-equiv");
   end Initialize_Fields;


   function getInstance return HtmlMetaAttributesData_Access is
   begin
        return HtmlMetaAttributesData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HtmlMetaAttributesData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlMetaAttributesData_Access is
      This : constant HtmlMetaAttributesData_Access := new HtmlMetaAttributesData;
   begin
      HtmlMetaAttributesData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := HtmlMetaAttributesData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package;


