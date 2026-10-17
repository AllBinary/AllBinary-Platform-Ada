--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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


package body org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package is

   procedure Initialize_Fields (This : in out AboutPaintableFactory'Class) is
   begin
      null;
      This.paintableArray := new Paintable_Access_Array'(0 => NullPaintable_Package.getInstance);
   end Initialize_Fields;


   function getInstance return AboutPaintableFactory_Access is
   begin
        return AboutPaintableFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AboutPaintableFactory'Class) is
      INFO : Unbounded_String_Array_Access;
      DEVELOPERS : Unbounded_String_Array_Access;
   begin
      Initialize_Fields (This);
        INFO := new Unbounded_String_Array'(To_Unbounded_String ("Built with the"), To_Unbounded_String ("AllBinary Platform"), StringUtil_Package.getInstance.EMPTY_STRING, To_Unbounded_String ("Comments or Questions:"), To_Unbounded_String ("support@allbinary.com"));
        DEVELOPERS := new Unbounded_String_Array'(To_Unbounded_String ("Developed By:"), To_Unbounded_String ("Travis Berthelot"));
        This.paintableArray := AboutPaintable_Package.getInstance (INFO, DEVELOPERS).getPaintableArrayInstance;
   end Initialize;

   function Create return AboutPaintableFactory_Access is
      This : constant AboutPaintableFactory_Access := new AboutPaintableFactory;
   begin
      AboutPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AboutPaintableFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;


