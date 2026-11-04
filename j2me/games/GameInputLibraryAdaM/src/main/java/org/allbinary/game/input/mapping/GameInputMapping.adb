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


with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.Input_Package;

package body org.allbinary.game.input.mapping.GameInputMapping_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   function "=" (Left, Right : GameKey_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   procedure Initialize_Fields (This : in out GameInputMapping'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.gameKey := GameKey_Access (GameKey_Package.NULL_GAME_KEY);
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMapping'Class; name : Unbounded_String; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
      Initialize_Fields (This);
        GameInputMapping'Class (This).setName (name);
        GameInputMapping'Class (This).setGameKey (gameKey);
   end Initialize;

   function Create (name : Unbounded_String; gameKey_Param : access GameKey_Package.GameKey'Class) return GameInputMapping_Access is
      This : constant GameInputMapping_Access := new GameInputMapping;
   begin
      GameInputMapping_Package.Initialize (This.all, name, gameKey_Param);
      return This;
   end Create;

   procedure setGameKey (This : in out GameInputMapping; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
        This.gameKey := gameKey;
   end setGameKey;

   function getGameKey (This : in out GameInputMapping) return GameKey_Access is
   begin
        return This.gameKey;
   end getGameKey;

   procedure setName (This : in out GameInputMapping; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out GameInputMapping) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.game.input.mapping.GameInputMapping_Package;


