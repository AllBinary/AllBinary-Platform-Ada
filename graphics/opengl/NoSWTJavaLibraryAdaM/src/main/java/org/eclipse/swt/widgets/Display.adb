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


package body org.eclipse.swt.widgets.Display_Package is

   procedure Initialize_Fields (This : in out Display'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Display'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Display_Access is
      This : constant Display_Access := new Display;
   begin
      Display_Package.Initialize (This.all);
      return This;
   end Create;


   procedure sleep (This : in out Display) is
   begin
        null;
   end sleep;

end org.eclipse.swt.widgets.Display_Package;


