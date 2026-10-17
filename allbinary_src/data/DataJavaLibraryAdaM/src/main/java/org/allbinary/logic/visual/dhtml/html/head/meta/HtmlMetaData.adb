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


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package is

   procedure Initialize_Fields (This : in out HtmlMetaData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("HTMLMETA_NAME");
      This.LABEL := To_Unbounded_String ("HTMLMETA_LABEL");
      This.VALUE := To_Unbounded_String ("meta");
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlMetaData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlMetaData_Access is
      This : constant HtmlMetaData_Access := new HtmlMetaData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return HtmlMetaData_Access is
   begin
        return HtmlMetaData_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant HtmlMetaData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HtmlMetaData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package;


