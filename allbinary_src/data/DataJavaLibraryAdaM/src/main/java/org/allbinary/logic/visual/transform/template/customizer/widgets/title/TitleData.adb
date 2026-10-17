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


package body org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package is

   procedure Initialize_Fields (This : in out TitleData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("TITLE_NAME");
      This.TEXT := To_Unbounded_String ("TITLE_TEXT");
      This.VIEWNAMEKEY := To_Unbounded_String ("Title");
      This.MAXLEN := 255;
   end Initialize_Fields;


   function getInstance return TitleData_Access is
   begin
        return TitleData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TitleData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TitleData_Access is
      This : constant TitleData_Access := new TitleData;
   begin
      TitleData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TitleData_Package.Create;

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;


