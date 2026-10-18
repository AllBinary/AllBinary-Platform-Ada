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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;

package body org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   procedure Initialize_Fields (This : in out ScreenRepaintUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenRepaintUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenRepaintUtil_Access is
      This : constant ScreenRepaintUtil_Access := new ScreenRepaintUtil;
   begin
      ScreenRepaintUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure repaint (displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        null;
   end repaint;

end org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;


