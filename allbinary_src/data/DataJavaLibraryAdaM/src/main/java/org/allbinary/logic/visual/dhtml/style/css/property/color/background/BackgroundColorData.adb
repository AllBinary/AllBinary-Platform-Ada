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


package body org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package is

   procedure Initialize_Fields (This : in out BackgroundColorData'Class) is
   begin
      null;
      This.VALUE := To_Unbounded_String ("background-color");
   end Initialize_Fields;


   function getInstance return BackgroundColorData_Access is
   begin
        return BackgroundColorData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BackgroundColorData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BackgroundColorData_Access is
      This : constant BackgroundColorData_Access := new BackgroundColorData;
   begin
      BackgroundColorData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := BackgroundColorData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package;


