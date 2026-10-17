--  Generated Code Do Not Modify


package body org.allbinary.game.input.AndroidKeyFactory_Package is

   procedure Initialize_Fields (This : in out AndroidKeyFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.UNKNOWN := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_UNKNOWN, To_Unbounded_String ("UNKNOWN"));
      This.KEYCODE_BUTTON_L1 := This.UNKNOWN;
      This.KEYCODE_BUTTON_R1 := This.UNKNOWN;
      This.KEYCODE_BUTTON_THUMBR := This.UNKNOWN;
      This.KEYCODE_BUTTON_THUMBL := This.UNKNOWN;
      This.KEYCODE_BUTTON_START := This.UNKNOWN;
      This.KEYCODE_BUTTON_MODE := This.UNKNOWN;
      This.KEYCODE_BUTTON_B := This.UNKNOWN;
      This.KEYCODE_BUTTON_A := This.UNKNOWN;
      This.KEYCODE_BUTTON_X := This.UNKNOWN;
      This.KEYCODE_BUTTON_Y := This.UNKNOWN;
      This.KEYCODE_BUTTON_L2 := This.UNKNOWN;
      This.KEYCODE_BUTTON_R2 := This.UNKNOWN;
      This.KEYCODE_BUTTON_SELECT := This.UNKNOWN;
      This.KEYCODE_BUTTON_C := This.UNKNOWN;
      This.KEYCODE_BUTTON_Z := This.UNKNOWN;
      This.KEYCODE_BUTTON_1 := This.UNKNOWN;
      This.KEYCODE_BUTTON_10 := This.UNKNOWN;
      This.KEYCODE_BUTTON_11 := This.UNKNOWN;
      This.KEYCODE_BUTTON_12 := This.UNKNOWN;
      This.KEYCODE_BUTTON_13 := This.UNKNOWN;
      This.KEYCODE_BUTTON_14 := This.UNKNOWN;
      This.KEYCODE_BUTTON_15 := This.UNKNOWN;
      This.KEYCODE_BUTTON_16 := This.UNKNOWN;
      This.KEYCODE_BUTTON_2 := This.UNKNOWN;
      This.KEYCODE_BUTTON_3 := This.UNKNOWN;
      This.KEYCODE_BUTTON_4 := This.UNKNOWN;
      This.KEYCODE_BUTTON_5 := This.UNKNOWN;
      This.KEYCODE_BUTTON_6 := This.UNKNOWN;
      This.KEYCODE_BUTTON_7 := This.UNKNOWN;
      This.KEYCODE_BUTTON_8 := This.UNKNOWN;
      This.KEYCODE_BUTTON_9 := This.UNKNOWN;
      This.SOFT_LEFT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SOFT_LEFT, To_Unbounded_String ("SOFT_LEFT"));
      This.SOFT_RIGHT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SOFT_RIGHT, To_Unbounded_String ("SOFT_RIGHT"));
      This.HOME := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_HOME, To_Unbounded_String ("HOME"));
      This.BACK := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BACK, To_Unbounded_String ("BACK"));
      This.CALL := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_CALL, To_Unbounded_String ("CALL"));
      This.ENDCALL := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_ENDCALL, To_Unbounded_String ("ENDCALL"));
      This.ZERO := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_0, CommonPhoneStrings_Package.getInstance.ZERO);
      This.ONE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_1, CommonPhoneStrings_Package.getInstance.ONE);
      This.TWO := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_2, CommonPhoneStrings_Package.getInstance.TWO);
      This.THREE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_3, CommonPhoneStrings_Package.getInstance.THREE);
      This.FOUR := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_4, CommonPhoneStrings_Package.getInstance.FOUR);
      This.FIVE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_5, CommonPhoneStrings_Package.getInstance.FIVE);
      This.SIX := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_6, CommonPhoneStrings_Package.getInstance.SIX);
      This.SEVEN := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_7, CommonPhoneStrings_Package.getInstance.SEVEN);
      This.EIGHT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_8, CommonPhoneStrings_Package.getInstance.EIGHT);
      This.NINE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_9, CommonPhoneStrings_Package.getInstance.NINE);
      This.STAR := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_STAR, CommonPhoneStrings_Package.getInstance.STAR);
      This.POUND := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_POUND, CommonPhoneStrings_Package.getInstance.POUND);
      This.DPAD_UP := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DPAD_UP, To_Unbounded_String ("UP"));
      This.DPAD_DOWN := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DPAD_DOWN, To_Unbounded_String ("DOWN"));
      This.DPAD_LEFT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DPAD_LEFT, To_Unbounded_String ("LEFT"));
      This.DPAD_RIGHT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DPAD_RIGHT, To_Unbounded_String ("RIGHT"));
      This.DPAD_CENTER := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DPAD_CENTER, To_Unbounded_String ("CENTER"));
      This.VOLUME_UP := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_VOLUME_UP, To_Unbounded_String ("VOLUME_UP"));
      This.VOLUME_DOWN := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_VOLUME_DOWN, To_Unbounded_String ("VOLUME_DOWN"));
      This.POWER := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_POWER, To_Unbounded_String ("POWER"));
      This.CAMERA := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_CAMERA, To_Unbounded_String ("CAMERA"));
      This.CLEAR := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_CLEAR, To_Unbounded_String ("CLEAR"));
      This.A := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_A, To_Unbounded_String ("A"));
      This.B := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_B, To_Unbounded_String ("B"));
      This.C := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_C, To_Unbounded_String ("C"));
      This.D := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_D, To_Unbounded_String ("D"));
      This.E := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_E, To_Unbounded_String ("E"));
      This.F := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_F, To_Unbounded_String ("F"));
      This.G := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_G, To_Unbounded_String ("G"));
      This.H := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_H, To_Unbounded_String ("H"));
      This.I := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_I, To_Unbounded_String ("I"));
      This.J := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_J, To_Unbounded_String ("J"));
      This.K := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_K, To_Unbounded_String ("K"));
      This.L := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_L, To_Unbounded_String ("L"));
      This.M := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_M, To_Unbounded_String ("M"));
      This.N := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_N, To_Unbounded_String ("N"));
      This.O := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_O, To_Unbounded_String ("O"));
      This.P := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_P, To_Unbounded_String ("P"));
      This.Q := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_Q, To_Unbounded_String ("Q"));
      This.R := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_R, To_Unbounded_String ("R"));
      This.S := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_S, To_Unbounded_String ("S"));
      This.T := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_T, To_Unbounded_String ("T"));
      This.U := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_U, To_Unbounded_String ("U"));
      This.V := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_V, To_Unbounded_String ("V"));
      This.W := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_W, To_Unbounded_String ("W"));
      This.X := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_X, To_Unbounded_String ("X"));
      This.Y := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_Y, To_Unbounded_String ("Y"));
      This.Z := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_Z, To_Unbounded_String ("Z"));
      This.COMMA := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_COMMA, To_Unbounded_String ("COMMA"));
      This.PERIOD := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_PERIOD, AbPathData_Package.getInstance.EXTENSION_SEP);
      This.ALT_LEFT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_ALT_LEFT, To_Unbounded_String ("ALT_LEFT"));
      This.ALT_RIGHT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_ALT_RIGHT, To_Unbounded_String ("ALT_RIGHT"));
      This.SHIFT_LEFT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SHIFT_LEFT, To_Unbounded_String ("SHIFT_LEFT"));
      This.SHIFT_RIGHT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SHIFT_RIGHT, To_Unbounded_String ("SHIFT_RIGHT"));
      This.TAB := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_TAB, To_Unbounded_String ("TAB"));
      This.SPACE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SPACE, To_Unbounded_String ("SPACE"));
      This.SYM := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SYM, To_Unbounded_String ("SYM"));
      This.EXPLORER := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_EXPLORER, To_Unbounded_String ("EXPLORER"));
      This.ENVELOPE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_ENVELOPE, To_Unbounded_String ("ENVELOPE"));
      This.ENTER := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_ENTER, To_Unbounded_String ("ENTER"));
      This.DEL := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_DEL, To_Unbounded_String ("DEL"));
      This.GRAVE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_GRAVE, To_Unbounded_String ("GRAVE"));
      This.MINUS := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_MINUS, To_Unbounded_String ("MINUS"));
      This.EQUALS := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_EQUALS, To_Unbounded_String ("EQUALS"));
      This.LEFT_BRACKET := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_LEFT_BRACKET, To_Unbounded_String ("LEFT_BRACKET"));
      This.RIGHT_BRACKET := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_RIGHT_BRACKET, To_Unbounded_String ("RIGHT_BRACKET"));
      This.BACKSLASH := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BACKSLASH, To_Unbounded_String ("BACKSLASH"));
      This.SEMICOLON := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SEMICOLON, To_Unbounded_String ("SEMICOLON"));
      This.APOSTROPHE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_APOSTROPHE, To_Unbounded_String ("APOSTROPHE"));
      This.SLASH := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SLASH, To_Unbounded_String ("SLASH"));
      This.AT_Id := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_AT, To_Unbounded_String ("AT"));
      This.NUM := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_NUM, To_Unbounded_String ("NUM"));
      This.HEADSETHOOK := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_HEADSETHOOK, To_Unbounded_String ("HEADSETHOOK"));
      This.FOCUS := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_FOCUS, To_Unbounded_String ("FOCUS"));
      This.PLUS := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_PLUS, To_Unbounded_String ("PLUS"));
      This.MENU := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_MENU, To_Unbounded_String ("MENU"));
      This.NOTIFICATION := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_NOTIFICATION, To_Unbounded_String ("NOTIFICATION"));
      This.SEARCH := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_SEARCH, To_Unbounded_String ("SEARCH"));
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidKeyFactory'Class) is
   begin
      ActivityFractureUtil_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidKeyFactory_Access is
      This : constant AndroidKeyFactory_Access := new AndroidKeyFactory;
   begin
      AndroidKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out AndroidKeyFactory) is
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Start/End"), AndroidKeyFactory_Access'(This'Unchecked_Access), commonStrings.INIT);
   end init;

   function isSubmission (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.ENTER) then
            return True;
        elsif (input) = (This.DPAD_CENTER) then
            return True;
        end if;
        return False;
   end isSubmission;

   function isDelete (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return False;
   end isDelete;

   function isBackSpace (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DEL) then
            return True;
        end if;
        return False;
   end isBackSpace;

   function isLeft (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DPAD_LEFT) then
            return True;
        end if;
        return False;
   end isLeft;

   function isRight (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DPAD_RIGHT) then
            return True;
        end if;
        return False;
   end isRight;

   function isUp (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DPAD_UP) then
            return True;
        end if;
        return False;
   end isUp;

   function isDown (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DPAD_DOWN) then
            return True;
        end if;
        return False;
   end isDown;

   function isEnter (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        if (input) = (This.DPAD_CENTER) then
            return True;
        elsif (input) = (This.ENTER) then
            return True;
        elsif (input) = (This.CALL) then
            return True;
        end if;
        return False;
   end isEnter;

   procedure isSubmission (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isSubmission (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isBackSpace (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isLeft (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isLeft (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isRight (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

   procedure isUp (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isUp (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isDown (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isEnter (This : in out AndroidKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := AndroidKeyFactory'Class (This).isEnter (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

end org.allbinary.game.input.AndroidKeyFactory_Package;


