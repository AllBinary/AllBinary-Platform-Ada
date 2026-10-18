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


with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;

package body org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package BasicTouchInputFactory_Package renames Standard.org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   procedure Initialize_Fields (This : in out MotionJ2MEDefaultGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionJ2MEDefaultGameInputMapping'Class) is
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameKeyFactory : GameKeyFactory_Access;
      basicTouchInputFactory : BasicTouchInputFactory_Access;
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.DEFAULT_INPUT_MAPPING_RECORD_ID);
        inputToGameKeyMapping := MotionJ2MEDefaultGameInputMapping'Class (This).getInputMapping;
        gameKeyFactory := GameKeyFactory_Package.getInstance;
        inputToGameKeyMapping.add (gameKeyFactory.UP, gameKeyFactory.KEY_NUM2);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, gameKeyFactory.KEY_NUM4);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, gameKeyFactory.KEY_NUM6);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, gameKeyFactory.KEY_NUM8);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, gameKeyFactory.GAME_A);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM3, gameKeyFactory.GAME_B);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, gameKeyFactory.GAME_C);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, gameKeyFactory.GAME_D);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_DOWN, gameKeyFactory.LEVEL_DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_UP, gameKeyFactory.LEVEL_UP);
        inputToGameKeyMapping.add (gameKeyFactory.UP, gameKeyFactory.UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, gameKeyFactory.DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, gameKeyFactory.LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, gameKeyFactory.RIGHT);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_POUND, gameKeyFactory.KEY_POUND);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_STAR, gameKeyFactory.KEY_STAR);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, gameKeyFactory.KEY_NUM1);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM3, gameKeyFactory.KEY_NUM3);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, gameKeyFactory.KEY_NUM5);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, gameKeyFactory.KEY_NUM7);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, gameKeyFactory.KEY_NUM9);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, gameKeyFactory.KEY_NUM0);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, gameKeyFactory.FIRE);
        inputToGameKeyMapping.add (gameKeyFactory.UP, TouchMotionGestureFactory_Package.getInstance.UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, TouchMotionGestureFactory_Package.getInstance.DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, TouchMotionGestureFactory_Package.getInstance.LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, TouchMotionGestureFactory_Package.getInstance.RIGHT);
        basicTouchInputFactory := BasicTouchInputFactory_Package.getInstance;
        inputToGameKeyMapping.add (gameKeyFactory.UP, basicTouchInputFactory.UP);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, basicTouchInputFactory.LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, basicTouchInputFactory.RIGHT);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, basicTouchInputFactory.DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, basicTouchInputFactory.SPECIAL_BUTTON_FIVE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, basicTouchInputFactory.SPECIAL_BUTTON_FOUR);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, basicTouchInputFactory.SPECIAL_BUTTON_THREE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, basicTouchInputFactory.SPECIAL_BUTTON_TWO);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM3, basicTouchInputFactory.SPECIAL_BUTTON_ONE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM2, basicTouchInputFactory.SPECIAL_BUTTON_SIX);
   end Initialize;

   function Create return MotionJ2MEDefaultGameInputMapping_Access is
      This : constant MotionJ2MEDefaultGameInputMapping_Access := new MotionJ2MEDefaultGameInputMapping;
   begin
      MotionJ2MEDefaultGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping_Package;


