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


package body org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyData_Package is

   procedure Initialize_Fields (This : in out FontFamilyData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("FONT_FAMILY_NAME");
      This.VALUE := To_Unbounded_String ("font-family");
   end Initialize_Fields;


   function getInstance return FontFamilyData_Access is
   begin
        return FontFamilyData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FontFamilyData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FontFamilyData_Access is
      This : constant FontFamilyData_Access := new FontFamilyData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant FontFamilyData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := FontFamilyData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyData_Package;


