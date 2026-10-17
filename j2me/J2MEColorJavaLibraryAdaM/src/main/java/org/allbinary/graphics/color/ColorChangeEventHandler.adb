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


package body org.allbinary.graphics.color.ColorChangeEventHandler_Package is

   procedure Initialize_Fields (This : in out ColorChangeEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorChangeEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorChangeEventHandler_Access is
      This : constant ColorChangeEventHandler_Access := new ColorChangeEventHandler;
   begin
      ColorChangeEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return ColorChangeEventHandler_Access is
   begin
        return ColorChangeEventHandler_Package.eventHandler;
   end getInstance;

begin
   null;
   eventHandler := ColorChangeEventHandler_Package.Create;

end org.allbinary.graphics.color.ColorChangeEventHandler_Package;


