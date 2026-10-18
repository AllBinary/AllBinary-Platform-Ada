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


package body org.allbinary.game.input.GameKeyMappingFactory_Package is

   procedure Initialize_Fields (This : in out GameKeyMappingFactory'Class) is
   begin
      null;
      This.intKeyToGameKey := new GameKey_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
   end Initialize_Fields;


   function getInstance return GameKeyMappingFactory_Access is
   begin
        if (GameKeyMappingFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameKeyMappingFactory_Package.instance := GameKeyMappingFactory_Package.Create;
        end if;
        return GameKeyMappingFactory_Access (GameKeyMappingFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameKeyMappingFactory'Class) is
      gameKeyFactory : GameKeyFactory_Access;
   begin
      Initialize_Fields (This);
        gameKeyFactory := GameKeyFactory_Package.getInstance;
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.NONE);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.UP);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.DOWN);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.LEFT);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.RIGHT);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_POUND);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_STAR);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM0);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM1);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM2);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM3);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM4);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM5);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM6);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM7);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM8);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.KEY_NUM9);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.GAME_A);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.GAME_B);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.GAME_C);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.GAME_D);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.FIRE);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.LEVEL_DOWN);
        GameKeyMappingFactory'Class (This).setGameKey (gameKeyFactory.LEVEL_UP);
   end Initialize;

   function Create return GameKeyMappingFactory_Access is
      This : constant GameKeyMappingFactory_Access := new GameKeyMappingFactory;
   begin
      GameKeyMappingFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getGameKey (This : in out GameKeyMappingFactory; key : Integer) return GameKey_Access is
   begin
        return This.intKeyToGameKey (key);
   end getGameKey;

   procedure setGameKey (This : in out GameKeyMappingFactory; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
        This.intKeyToGameKey (gameKey.getId) := gameKey;
   end setGameKey;

   procedure getGameKey (This : in out GameKeyMappingFactory; key : Integer) is
      Java_Result : constant GameKey_Access := GameKeyMappingFactory'Class (This).getGameKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKey;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.GameKeyMappingFactory_Package;


