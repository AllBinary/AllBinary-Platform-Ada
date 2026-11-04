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



package body org.allbinary.gui.dialog.ExitCloseListener_Package is

   procedure Initialize_Fields (This : in out ExitCloseListener'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ExitCloseListener'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ExitCloseListener_Access is
      This : constant ExitCloseListener_Access := new ExitCloseListener;
   begin
      ExitCloseListener_Package.Initialize (This.all);
      return This;
   end Create;

   procedure onClose (This : in out ExitCloseListener) is
   begin
        System_Package.exit_Id (-(1));
   end onClose;

end org.allbinary.gui.dialog.ExitCloseListener_Package;


