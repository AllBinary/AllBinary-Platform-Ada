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


package body org.allbinary.game.input.mapping.GameInputMapping_Package is

   procedure Initialize_Fields (This : in out GameInputMapping'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.gameKey := GameKey_Package.NULL_GAME_KEY;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMapping'Class; name : Unbounded_String; gameKey : GameKey_Access) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.setGameKey (gameKey);
   end Initialize;

   function Create (name : Unbounded_String; gameKey : GameKey_Access) return GameInputMapping_Access is
      This : constant GameInputMapping_Access := new GameInputMapping;
   begin
      Initialize (This.all, name, gameKey);
      return This;
   end Create;

   procedure setGameKey (This : in out GameInputMapping; gameKey : GameKey_Access) is
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

   procedure getGameKey (This : in out GameInputMapping) is
      Java_Result : constant GameKey_Access := GameInputMapping'Class (This).getGameKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKey;

   procedure getName (This : in out GameInputMapping) is
      Java_Result : constant Unbounded_String := GameInputMapping'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

end org.allbinary.game.input.mapping.GameInputMapping_Package;


