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


with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;

package body org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package is

   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   function "=" (Left, Right : Displayable_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   procedure Initialize_Fields (This : in out ScreenRepaintProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScreenRepaintProcessor'Class; displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.displayable := displayable;
   end Initialize;

   function Create (displayable_Param : access Displayable_Package.Displayable'Class) return ScreenRepaintProcessor_Access is
      This : constant ScreenRepaintProcessor_Access := new ScreenRepaintProcessor;
   begin
      ScreenRepaintProcessor_Package.Initialize (This.all, displayable_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out ScreenRepaintProcessor) is
   begin
        ScreenRepaintUtil_Package.repaint (This.displayable);
   end process;

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;


