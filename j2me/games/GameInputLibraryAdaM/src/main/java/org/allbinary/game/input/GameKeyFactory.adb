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


package body org.allbinary.game.input.GameKeyFactory_Package is

   procedure Initialize_Fields (This : in out GameKeyFactory'Class) is
   begin
      null;
      This.NONE := GameKey_Package.Create ((InputFactory_Package.getInstance.MAX) - (1), To_Unbounded_String ("None"));
      This.UP := GameKey_Package.Create (Canvas_Package.UP, CommonPhoneStrings_Package.getInstance.UP);
      This.DOWN := GameKey_Package.Create (Canvas_Package.DOWN, CommonPhoneStrings_Package.getInstance.DOWN);
      This.LEFT := GameKey_Package.Create (Canvas_Package.LEFT, CommonPhoneStrings_Package.getInstance.LEFT);
      This.RIGHT := GameKey_Package.Create (Canvas_Package.RIGHT, CommonPhoneStrings_Package.getInstance.RIGHT);
      This.KEY_POUND := GameKey_Package.Create (Canvas_Package.KEY_POUND, To_Unbounded_String ("POUND"));
      This.KEY_STAR := GameKey_Package.Create (Canvas_Package.KEY_STAR, To_Unbounded_String ("STAR"));
      This.KEY_NUM0 := GameKey_Package.Create (Canvas_Package.KEY_NUM0, CommonPhoneStrings_Package.getInstance.ZERO);
      This.KEY_NUM1 := GameKey_Package.Create (Canvas_Package.KEY_NUM1, CommonPhoneStrings_Package.getInstance.ONE);
      This.KEY_NUM2 := GameKey_Package.Create (Canvas_Package.KEY_NUM2, CommonPhoneStrings_Package.getInstance.TWO);
      This.KEY_NUM3 := GameKey_Package.Create (Canvas_Package.KEY_NUM3, CommonPhoneStrings_Package.getInstance.THREE);
      This.KEY_NUM4 := GameKey_Package.Create (Canvas_Package.KEY_NUM4, CommonPhoneStrings_Package.getInstance.FOUR);
      This.KEY_NUM5 := GameKey_Package.Create (Canvas_Package.KEY_NUM5, CommonPhoneStrings_Package.getInstance.FIVE);
      This.KEY_NUM6 := GameKey_Package.Create (Canvas_Package.KEY_NUM6, CommonPhoneStrings_Package.getInstance.SIX);
      This.KEY_NUM7 := GameKey_Package.Create (Canvas_Package.KEY_NUM7, CommonPhoneStrings_Package.getInstance.SEVEN);
      This.KEY_NUM8 := GameKey_Package.Create (Canvas_Package.KEY_NUM8, CommonPhoneStrings_Package.getInstance.EIGHT);
      This.KEY_NUM9 := GameKey_Package.Create (Canvas_Package.KEY_NUM9, CommonPhoneStrings_Package.getInstance.NINE);
      This.GAME_A := GameKey_Package.Create (Canvas_Package.GAME_A, To_Unbounded_String ("Game A"));
      This.GAME_B := GameKey_Package.Create (Canvas_Package.GAME_B, To_Unbounded_String ("Game B"));
      This.GAME_C := GameKey_Package.Create (Canvas_Package.GAME_C, To_Unbounded_String ("Game C"));
      This.GAME_D := GameKey_Package.Create (Canvas_Package.GAME_D, To_Unbounded_String ("Game D"));
      This.FIRE := GameKey_Package.Create (Canvas_Package.FIRE, CommonPhoneStrings_Package.getInstance.FIRE);
      This.LEVEL_DOWN := GameKey_Package.Create ((Canvas_Package.KEY_NUM9) + (1), To_Unbounded_String ("Cheat Level Up"));
      This.LEVEL_UP := GameKey_Package.Create ((Canvas_Package.KEY_NUM9) + (2), To_Unbounded_String ("Cheat Level Down"));
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyFactory_Access is
      This : constant GameKeyFactory_Access := new GameKeyFactory;
   begin
      GameKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameKeyFactory_Access is
   begin
        if (GameKeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameKeyFactory_Package.instance := GameKeyFactory_Package.Create;
        end if;
        return GameKeyFactory_Access (GameKeyFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.GameKeyFactory_Package;


