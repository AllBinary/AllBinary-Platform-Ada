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


with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;

package body org.allbinary.game.input.GameInputProcessorUtil_Package is

   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   function "=" (Left, Right : GameInputProcessor_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out GameInputProcessorUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameInputProcessorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInputProcessorUtil_Access is
      This : constant GameInputProcessorUtil_Access := new GameInputProcessorUtil;
   begin
      GameInputProcessorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (inputProcessorArray : GameInputProcessor_Access_Array_Access) is
      noInputProcessor : GameInputProcessor_Access;
      total : Integer;
      inputProcessorCanBeNull : GameInputProcessor_Access;
      index : Integer;
   begin
        noInputProcessor := GameInputProcessor_Package.getInstance;
        total := InputFactory_Package.getInstance.MAX;
        for index in 0 .. (total) - 1 loop
            inputProcessorCanBeNull := inputProcessorArray (index);
            if (inputProcessorCanBeNull) = (null) then
                inputProcessorArray (index) := noInputProcessor;
            end if;
        end loop;
   end init;

end org.allbinary.game.input.GameInputProcessorUtil_Package;


