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


with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;

package body org.allbinary.graphics.form.InputProcessor_Package is

   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   procedure Initialize_Fields (This : in out InputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputProcessor'Class; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) is
      playerGameInputCompositeInterface : constant PlayerGameInputCompositeInterface_Access := PlayerGameInputCompositeInterface_Access (playerGameInputCompositeInterface_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.playerGameInputCompositeInterface := playerGameInputCompositeInterface;
   end Initialize;

   function Create (playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) return InputProcessor_Access is
      This : constant InputProcessor_Access := new InputProcessor;
   begin
      InputProcessor_Package.Initialize (This.all, playerGameInputCompositeInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out InputProcessor) is
   begin
        This.playerGameInputCompositeInterface.getPlayerGameInput.update;
   end process;

end org.allbinary.graphics.form.InputProcessor_Package;


