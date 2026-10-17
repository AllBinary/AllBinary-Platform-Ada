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


package body org.allbinary.game.input.LaptopDefaultGameInputMapping_Package is

   procedure Initialize_Fields (This : in out LaptopDefaultGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LaptopDefaultGameInputMapping'Class) is
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      pcKeyFactory : PCKeyFactory_Access;
      gameKeyFactory : GameKeyFactory_Access;
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.DEFAULT_INPUT_MAPPING_RECORD_ID);
        inputToGameKeyMapping := This.getInputMapping;
        pcKeyFactory := PCKeyFactory_Package.getInstance;
        gameKeyFactory := GameKeyFactory_Package.getInstance;
        inputToGameKeyMapping.add (gameKeyFactory.FIRE, pcKeyFactory.ENTER);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.FOUR);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.U_P);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.p);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.FIVE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.U_Y);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.U_I);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.U_U);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.U_H);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.U_J);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.U_N);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.U_M);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.y);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.i);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.u);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.h);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.j);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.n);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.m);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.U_Q);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.U_E);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.U_W);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.U_A);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.U_D);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.U_S);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.U_X);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.q);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.e);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.w);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.a);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.d);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.s);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.x);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM3, pcKeyFactory.THREE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.ZERO);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.ONE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.SPACE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_POUND, pcKeyFactory.DEL);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_POUND, pcKeyFactory.TWO);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_STAR, pcKeyFactory.ESCAPE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_STAR, pcKeyFactory.STAR);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_DOWN, pcKeyFactory.COMMA);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_UP, pcKeyFactory.PERIOD);
   end Initialize;

   function Create return LaptopDefaultGameInputMapping_Access is
      This : constant LaptopDefaultGameInputMapping_Access := new LaptopDefaultGameInputMapping;
   begin
      Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.input.LaptopDefaultGameInputMapping_Package;


