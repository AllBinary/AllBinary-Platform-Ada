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
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;

package body org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
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
      canvas : Canvas_Access;
   begin
        canvas := Canvas_Access (displayable);
        canvas.repaint;
   end repaint;

end org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;


