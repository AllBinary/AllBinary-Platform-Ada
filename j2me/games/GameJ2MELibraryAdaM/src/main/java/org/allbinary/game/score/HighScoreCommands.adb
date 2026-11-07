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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.microemu.device.ui.CommandUI_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;

package body org.allbinary.game.score.HighScoreCommands_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   procedure Initialize_Fields (This : in out HighScoreCommands'Class) is
   begin
      null;
      This.DISPLAY := Command_Package.Create (To_Unbounded_String ("Scores"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.PERSONAL := Command_Package.Create (To_Unbounded_String ("Personal"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.WORLD := Command_Package.Create (To_Unbounded_String ("World"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoreCommands'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoreCommands_Access is
      This : constant HighScoreCommands_Access := new HighScoreCommands;
   begin
      HighScoreCommands_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScoreCommands_Access is
   begin
        return HighScoreCommands_Access (HighScoreCommands_Package.instance);
   end getInstance;

begin
   null;
   instance := HighScoreCommands_Package.Create;

end org.allbinary.game.score.HighScoreCommands_Package;


