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


with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.InputProcessor_Package_References;
with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.game.input.InputProcessor_Package;

package body org.allbinary.game.input.InputProcessorFactory_Package is

   subtype InputProcessor_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access;
   function "=" (Left, Right : InputProcessor_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out InputProcessorFactory'Class) is
   begin
      null;
      This.inputProcessor := InputProcessor_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out InputProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputProcessorFactory_Access is
      This : constant InputProcessorFactory_Access := new InputProcessorFactory;
   begin
      InputProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InputProcessorFactory_Access is
   begin
        return InputProcessorFactory_Access (InputProcessorFactory_Package.instance);
   end getInstance;

   function getInputProcessor (This : in out InputProcessorFactory) return InputProcessor_Access is
   begin
        return This.inputProcessor;
   end getInputProcessor;

begin
   null;
   instance := InputProcessorFactory_Package.Create;

end org.allbinary.game.input.InputProcessorFactory_Package;


