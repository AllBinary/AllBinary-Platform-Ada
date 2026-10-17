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
        This.setGameKey (gameKeyFactory.NONE);
        This.setGameKey (gameKeyFactory.UP);
        This.setGameKey (gameKeyFactory.DOWN);
        This.setGameKey (gameKeyFactory.LEFT);
        This.setGameKey (gameKeyFactory.RIGHT);
        This.setGameKey (gameKeyFactory.KEY_POUND);
        This.setGameKey (gameKeyFactory.KEY_STAR);
        This.setGameKey (gameKeyFactory.KEY_NUM0);
        This.setGameKey (gameKeyFactory.KEY_NUM1);
        This.setGameKey (gameKeyFactory.KEY_NUM2);
        This.setGameKey (gameKeyFactory.KEY_NUM3);
        This.setGameKey (gameKeyFactory.KEY_NUM4);
        This.setGameKey (gameKeyFactory.KEY_NUM5);
        This.setGameKey (gameKeyFactory.KEY_NUM6);
        This.setGameKey (gameKeyFactory.KEY_NUM7);
        This.setGameKey (gameKeyFactory.KEY_NUM8);
        This.setGameKey (gameKeyFactory.KEY_NUM9);
        This.setGameKey (gameKeyFactory.GAME_A);
        This.setGameKey (gameKeyFactory.GAME_B);
        This.setGameKey (gameKeyFactory.GAME_C);
        This.setGameKey (gameKeyFactory.GAME_D);
        This.setGameKey (gameKeyFactory.FIRE);
        This.setGameKey (gameKeyFactory.LEVEL_DOWN);
        This.setGameKey (gameKeyFactory.LEVEL_UP);
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

   procedure setGameKey (This : in out GameKeyMappingFactory; gameKey : GameKey_Access) is
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


