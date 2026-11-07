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
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameInputStrings_Package_References;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;

package body org.allbinary.game.input.InputProcessor_Package is

   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   function "=" (Left, Right : GameInputStrings_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   procedure Initialize_Fields (This : in out InputProcessor'Class) is
   begin
      null;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InputProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputProcessor_Access is
      This : constant InputProcessor_Access := new InputProcessor;
   begin
      InputProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure keyPressedByDevice (This : in out InputProcessor; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out InputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        null;
   end keyReleasedByDevice;

end org.allbinary.game.input.InputProcessor_Package;


