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
with org.allbinary.game.input.PCKeyFactory_Package; use org.allbinary.game.input.PCKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;

package body org.allbinary.game.input.DesktopDefaultGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package BasicTouchInputFactory_Package renames Standard.org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   procedure Initialize_Fields (This : in out DesktopDefaultGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DesktopDefaultGameInputMapping'Class) is
      pcKeyFactory : PCKeyFactory_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameKeyFactory : GameKeyFactory_Access;
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      basicTouchInputFactory : BasicTouchInputFactory_Access;
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.DEFAULT_INPUT_MAPPING_RECORD_ID);
        pcKeyFactory := PCKeyFactory_Package.getInstance;
        inputToGameKeyMapping := DesktopDefaultGameInputMapping'Class (This).getInputMapping;
        gameKeyFactory := GameKeyFactory_Package.getInstance;
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        basicTouchInputFactory := BasicTouchInputFactory_Package.getInstance;
        inputToGameKeyMapping.add (gameKeyFactory.FIRE, pcKeyFactory.ENTER);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.FOUR);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.U_P);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.p);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
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
        inputToGameKeyMapping.add (gameKeyFactory.UP, touchMotionGestureFactory.UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, touchMotionGestureFactory.DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, touchMotionGestureFactory.LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, touchMotionGestureFactory.RIGHT);
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

   function Create return DesktopDefaultGameInputMapping_Access is
      This : constant DesktopDefaultGameInputMapping_Access := new DesktopDefaultGameInputMapping;
   begin
      DesktopDefaultGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.input.DesktopDefaultGameInputMapping_Package;


