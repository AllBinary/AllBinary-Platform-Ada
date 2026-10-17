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


package body org.allbinary.game.input.PCKeyFactory_Package is

   procedure Initialize_Fields (This : in out PCKeyFactory'Class) is
   begin
      null;
      This.keyEventWrapper := ABKeyEventWrapper_Package.getInstance;
      This.UNKNOWN := PCGameKey_Package.Create (This.keyEventWrapper.VK_UNDEFINED, To_Unbounded_String ("UNKNOWN"));
      This.ENTER := PCGameKey_Package.Create (5, To_Unbounded_String ("Enter"));
      This.U_A := PCGameKey_Package.Create (This.keyEventWrapper.VK_A, To_Unbounded_String ("A"));
      This.U_B := PCGameKey_Package.Create (This.keyEventWrapper.VK_B, To_Unbounded_String ("B"));
      This.U_C := PCGameKey_Package.Create (This.keyEventWrapper.VK_C, To_Unbounded_String ("C"));
      This.U_D := PCGameKey_Package.Create (This.keyEventWrapper.VK_D, To_Unbounded_String ("D"));
      This.U_E := PCGameKey_Package.Create (This.keyEventWrapper.VK_E, To_Unbounded_String ("E"));
      This.U_F := PCGameKey_Package.Create (This.keyEventWrapper.VK_F, To_Unbounded_String ("F"));
      This.U_G := PCGameKey_Package.Create (This.keyEventWrapper.VK_G, To_Unbounded_String ("G"));
      This.U_H := PCGameKey_Package.Create (This.keyEventWrapper.VK_H, To_Unbounded_String ("H"));
      This.U_I := PCGameKey_Package.Create (This.keyEventWrapper.VK_I, To_Unbounded_String ("I"));
      This.U_J := PCGameKey_Package.Create (This.keyEventWrapper.VK_J, To_Unbounded_String ("J"));
      This.U_K := PCGameKey_Package.Create (This.keyEventWrapper.VK_K, To_Unbounded_String ("K"));
      This.U_L := PCGameKey_Package.Create (This.keyEventWrapper.VK_L, To_Unbounded_String ("L"));
      This.U_M := PCGameKey_Package.Create (This.keyEventWrapper.VK_M, To_Unbounded_String ("M"));
      This.U_N := PCGameKey_Package.Create (This.keyEventWrapper.VK_N, To_Unbounded_String ("N"));
      This.U_O := PCGameKey_Package.Create (This.keyEventWrapper.VK_O, To_Unbounded_String ("O"));
      This.U_P := PCGameKey_Package.Create (This.keyEventWrapper.VK_P, To_Unbounded_String ("P"));
      This.U_Q := PCGameKey_Package.Create (This.keyEventWrapper.VK_Q, To_Unbounded_String ("Q"));
      This.U_R := PCGameKey_Package.Create (This.keyEventWrapper.VK_R, To_Unbounded_String ("R"));
      This.U_S := PCGameKey_Package.Create (This.keyEventWrapper.VK_S, To_Unbounded_String ("S"));
      This.U_T := PCGameKey_Package.Create (This.keyEventWrapper.VK_T, To_Unbounded_String ("T"));
      This.U_U := PCGameKey_Package.Create (This.keyEventWrapper.VK_U, To_Unbounded_String ("U"));
      This.U_V := PCGameKey_Package.Create (This.keyEventWrapper.VK_V, To_Unbounded_String ("V"));
      This.U_W := PCGameKey_Package.Create (This.keyEventWrapper.VK_W, To_Unbounded_String ("W"));
      This.U_X := PCGameKey_Package.Create (This.keyEventWrapper.VK_X, To_Unbounded_String ("X"));
      This.U_Y := PCGameKey_Package.Create (This.keyEventWrapper.VK_Y, To_Unbounded_String ("Y"));
      This.U_Z := PCGameKey_Package.Create (This.keyEventWrapper.VK_Z, To_Unbounded_String ("Z"));
      This.a := PCGameKey_Package.Create (97, To_Unbounded_String ("a"));
      This.b := PCGameKey_Package.Create (98, To_Unbounded_String ("b"));
      This.c := PCGameKey_Package.Create (99, To_Unbounded_String ("c"));
      This.d := PCGameKey_Package.Create (100, To_Unbounded_String ("d"));
      This.e := PCGameKey_Package.Create (101, To_Unbounded_String ("e"));
      This.f := PCGameKey_Package.Create (102, To_Unbounded_String ("f"));
      This.g := PCGameKey_Package.Create (103, To_Unbounded_String ("g"));
      This.h := PCGameKey_Package.Create (104, To_Unbounded_String ("h"));
      This.i := PCGameKey_Package.Create (105, To_Unbounded_String ("i"));
      This.j := PCGameKey_Package.Create (106, To_Unbounded_String ("j"));
      This.k := PCGameKey_Package.Create (107, To_Unbounded_String ("k"));
      This.l := PCGameKey_Package.Create (108, To_Unbounded_String ("l"));
      This.m := PCGameKey_Package.Create (109, To_Unbounded_String ("m"));
      This.n := PCGameKey_Package.Create (110, To_Unbounded_String ("n"));
      This.o := PCGameKey_Package.Create (111, To_Unbounded_String ("o"));
      This.p := PCGameKey_Package.Create (112, To_Unbounded_String ("p"));
      This.q := PCGameKey_Package.Create (113, To_Unbounded_String ("q"));
      This.r := PCGameKey_Package.Create (114, To_Unbounded_String ("r"));
      This.s := PCGameKey_Package.Create (115, To_Unbounded_String ("s"));
      This.t := PCGameKey_Package.Create (116, To_Unbounded_String ("t"));
      This.u := PCGameKey_Package.Create (117, To_Unbounded_String ("u"));
      This.v := PCGameKey_Package.Create (118, To_Unbounded_String ("v"));
      This.w := PCGameKey_Package.Create (119, To_Unbounded_String ("w"));
      This.x := PCGameKey_Package.Create (120, PositionStrings_Package.getInstance.X);
      This.y := PCGameKey_Package.Create (121, PositionStrings_Package.getInstance.Y);
      This.z := PCGameKey_Package.Create (122, To_Unbounded_String ("z"));
      This.ZERO := PCGameKey_Package.Create (This.keyEventWrapper.VK_0, CommonPhoneStrings_Package.getInstance.ZERO);
      This.ONE := PCGameKey_Package.Create (This.keyEventWrapper.VK_1, CommonPhoneStrings_Package.getInstance.ONE);
      This.TWO := PCGameKey_Package.Create (This.keyEventWrapper.VK_2, CommonPhoneStrings_Package.getInstance.TWO);
      This.THREE := PCGameKey_Package.Create (This.keyEventWrapper.VK_3, CommonPhoneStrings_Package.getInstance.THREE);
      This.FOUR := PCGameKey_Package.Create (This.keyEventWrapper.VK_4, CommonPhoneStrings_Package.getInstance.FOUR);
      This.FIVE := PCGameKey_Package.Create (This.keyEventWrapper.VK_5, CommonPhoneStrings_Package.getInstance.FIVE);
      This.SIX := PCGameKey_Package.Create (This.keyEventWrapper.VK_6, CommonPhoneStrings_Package.getInstance.SIX);
      This.SEVEN := PCGameKey_Package.Create (This.keyEventWrapper.VK_7, CommonPhoneStrings_Package.getInstance.SEVEN);
      This.EIGHT := PCGameKey_Package.Create (This.keyEventWrapper.VK_8, CommonPhoneStrings_Package.getInstance.EIGHT);
      This.NINE := PCGameKey_Package.Create (This.keyEventWrapper.VK_9, CommonPhoneStrings_Package.getInstance.NINE);
      This.DPAD_UP := PCGameKey_Package.Create (This.keyEventWrapper.VK_UP, CommonPhoneStrings_Package.getInstance.UP);
      This.DPAD_DOWN := PCGameKey_Package.Create (This.keyEventWrapper.VK_DOWN, CommonPhoneStrings_Package.getInstance.DOWN);
      This.DPAD_LEFT := PCGameKey_Package.Create (This.keyEventWrapper.VK_LEFT, CommonPhoneStrings_Package.getInstance.LEFT);
      This.DPAD_RIGHT := PCGameKey_Package.Create (This.keyEventWrapper.VK_RIGHT, CommonPhoneStrings_Package.getInstance.RIGHT);
      This.DPAD_UP2 := This.DPAD_UP;
      This.DPAD_DOWN2 := This.DPAD_DOWN;
      This.DPAD_LEFT2 := This.DPAD_LEFT;
      This.DPAD_RIGHT2 := This.DPAD_RIGHT;
      This.COMMA := PCGameKey_Package.Create (This.keyEventWrapper.VK_COMMA, To_Unbounded_String ("COMMA"));
      This.SPACE := PCGameKey_Package.Create (This.keyEventWrapper.VK_SPACE, To_Unbounded_String ("SPACE"));
      This.DEL := PCGameKey_Package.Create (This.keyEventWrapper.VK_DELETE, To_Unbounded_String ("DEL"));
      This.STAR := PCGameKey_Package.Create (42, CommonPhoneStrings_Package.getInstance.STAR);
      This.QUESTION := PCGameKey_Package.Create (47, To_Unbounded_String ("?"));
      This.PERIOD := PCGameKey_Package.Create (This.keyEventWrapper.VK_PERIOD, CommonSeps_Package.getInstance.PERIOD);
      This.ESCAPE := PCGameKey_Package.Create (This.keyEventWrapper.VK_ESCAPE, To_Unbounded_String ("Esc"));
      This.BACK_SPACE := PCGameKey_Package.Create (This.keyEventWrapper.VK_BACK_SPACE, To_Unbounded_String ("Backspace"));
   end Initialize_Fields;

   procedure Initialize (This : in out PCKeyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PCKeyFactory_Access is
      This : constant PCKeyFactory_Access := new PCKeyFactory;
   begin
      PCKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PCKeyFactory_Access is
   begin
        return PCKeyFactory_Package.SINGLETON;
   end getInstance;

   function isSubmission (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.ENTER) then
            return True;
        end if;
        return False;
   end isSubmission;

   function isDelete (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DEL) then
            return True;
        end if;
        return False;
   end isDelete;

   function isBackSpace (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.BACK_SPACE) then
            return True;
        end if;
        return False;
   end isBackSpace;

   function isUp (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if ((input) = (This.DPAD_UP)) or else ((input) = (This.DPAD_UP2)) then
            return True;
        end if;
        return False;
   end isUp;

   function isDown (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if ((input) = (This.DPAD_DOWN)) or else ((input) = (This.DPAD_DOWN2)) then
            return True;
        end if;
        return False;
   end isDown;

   function isLeft (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if ((input) = (This.DPAD_LEFT)) or else ((input) = (This.DPAD_LEFT2)) then
            return True;
        end if;
        return False;
   end isLeft;

   function isRight (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if ((input) = (This.DPAD_RIGHT)) or else ((input) = (This.DPAD_RIGHT2)) then
            return True;
        end if;
        return False;
   end isRight;

   function isEnter (This : in out PCKeyFactory; input_Param : access Input'Class) return Boolean is
      input : Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.ENTER) then
            return True;
        end if;
        return False;
   end isEnter;

   procedure isSubmission (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isSubmission (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isBackSpace (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isUp (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isUp (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isDown (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isLeft (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isLeft (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isRight (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

   procedure isEnter (This : in out PCKeyFactory; input_Param : access Input'Class) is
      Java_Result : constant Boolean := PCKeyFactory'Class (This).isEnter (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

begin
   null;
   SINGLETON := PCKeyFactory_Package.Create;

end org.allbinary.game.input.PCKeyFactory_Package;


