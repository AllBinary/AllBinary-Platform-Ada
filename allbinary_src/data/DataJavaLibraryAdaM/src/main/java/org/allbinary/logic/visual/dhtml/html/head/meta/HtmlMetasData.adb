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


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package is

   procedure Initialize_Fields (This : in out HtmlMetasData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("HTMLMETAS_NAME");
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlMetasData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlMetasData_Access is
      This : constant HtmlMetasData_Access := new HtmlMetasData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return HtmlMetasData_Access is
   begin
        return HtmlMetasData_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant HtmlMetasData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HtmlMetasData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;


