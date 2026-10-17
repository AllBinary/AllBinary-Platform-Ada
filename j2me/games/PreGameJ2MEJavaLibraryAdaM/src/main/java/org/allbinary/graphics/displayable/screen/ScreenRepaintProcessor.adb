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


package body org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package is

   procedure Initialize_Fields (This : in out ScreenRepaintProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScreenRepaintProcessor'Class; displayable : Displayable_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.displayable := displayable;
   end Initialize;

   function Create (displayable : Displayable_Access) return ScreenRepaintProcessor_Access is
      This : constant ScreenRepaintProcessor_Access := new ScreenRepaintProcessor;
   begin
      Initialize (This.all, displayable);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out ScreenRepaintProcessor) is
   begin
        ScreenRepaintUtil_Package.repaint (This.displayable);
   end process;

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;


