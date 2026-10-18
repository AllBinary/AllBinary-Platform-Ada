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
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;

package body org.allbinary.game.input.J2MEKeyFactory_Package is

   procedure Initialize_Fields (This : in out J2MEKeyFactory'Class) is
   begin
      null;
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return J2MEKeyFactory_Access is
   begin
        return J2MEKeyFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out J2MEKeyFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return J2MEKeyFactory_Access is
      This : constant J2MEKeyFactory_Access := new J2MEKeyFactory;
   begin
      J2MEKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out J2MEKeyFactory) is
      gameKeyArray : GameKey_Access_Array_Access;
      inputFactory : InputFactory_Access;
      index : Integer;
   begin
        gameKeyArray := new GameKey_Access_Array'(This.gameKeyFactory.DOWN, This.gameKeyFactory.FIRE, This.gameKeyFactory.GAME_A, This.gameKeyFactory.GAME_B, This.gameKeyFactory.GAME_C, This.gameKeyFactory.GAME_D, This.gameKeyFactory.KEY_NUM0, This.gameKeyFactory.KEY_NUM1, This.gameKeyFactory.KEY_NUM2, This.gameKeyFactory.KEY_NUM3, This.gameKeyFactory.KEY_NUM4, This.gameKeyFactory.KEY_NUM5, This.gameKeyFactory.KEY_NUM6, This.gameKeyFactory.KEY_NUM7, This.gameKeyFactory.KEY_NUM8, This.gameKeyFactory.KEY_NUM9, This.gameKeyFactory.KEY_POUND, This.gameKeyFactory.KEY_STAR, This.gameKeyFactory.LEFT, This.gameKeyFactory.LEVEL_DOWN, This.gameKeyFactory.LEVEL_UP, This.gameKeyFactory.NONE, This.gameKeyFactory.RIGHT, This.gameKeyFactory.UP);
        inputFactory := InputFactory_Package.getInstance;
        index := gameKeyArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            inputFactory.add (gameKeyArray (index).getId, gameKeyArray (index));
        end loop;
   end init;

   function isSubmission (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.FIRE) then
            return True;
        end if;
        return False;
   end isSubmission;

   function isDelete (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.GAME_D) then
            return True;
        end if;
        return False;
   end isDelete;

   function isBackSpace (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return False;
   end isBackSpace;

   function isUp (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.UP) then
            return True;
        end if;
        return False;
   end isUp;

   function isDown (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.DOWN) then
            return True;
        end if;
        return False;
   end isDown;

   function isLeft (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.LEFT) then
            return True;
        end if;
        return False;
   end isLeft;

   function isRight (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.RIGHT) then
            return True;
        end if;
        return False;
   end isRight;

   function isEnter (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.gameKeyFactory.FIRE) then
            return True;
        end if;
        return False;
   end isEnter;

   procedure isSubmission (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isSubmission (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isBackSpace (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isUp (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isUp (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isDown (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isLeft (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isLeft (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isRight (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

   procedure isEnter (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := J2MEKeyFactory'Class (This).isEnter (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

begin
   null;
   instance := J2MEKeyFactory_Package.Create;

end org.allbinary.game.input.J2MEKeyFactory_Package;


