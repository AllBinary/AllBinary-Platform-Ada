--  Generated Code Do Not Modify


package body org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package is

   procedure Initialize_Fields (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure init is
   begin
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_0) := Canvas_Package.KEY_NUM0;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_1) := Canvas_Package.KEY_NUM1;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_2) := Canvas_Package.KEY_NUM2;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_3) := Canvas_Package.KEY_NUM3;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_4) := Canvas_Package.KEY_NUM4;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_5) := Canvas_Package.KEY_NUM5;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_6) := Canvas_Package.KEY_NUM6;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_7) := Canvas_Package.KEY_NUM7;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_8) := Canvas_Package.KEY_NUM8;
        AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (KeyEvent_Package.KEYCODE_9) := Canvas_Package.KEY_NUM9;
   end init;

   procedure Initialize (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AndroidNumberKeyToJ2MECanvasNumberKey_Access is
      This : constant AndroidNumberKeyToJ2MECanvasNumberKey_Access := new AndroidNumberKeyToJ2MECanvasNumberKey;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getKey (key : Integer) return Integer is
      value : Integer;
   begin
        if (key) < (AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap'Length) then
            value := AndroidNumberKeyToJ2MECanvasNumberKey_Package.androidtoJavaMicroEditionKeyMap (key);
            if (value) /= (0) then
                return value;
            end if;
        end if;
        return key;
   end getKey;

   procedure getKey (key : Integer) is
      Java_Result : constant Integer := getKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

begin
   null;
   androidtoJavaMicroEditionKeyMap := new Integer_Array'(0 .. (17) - 1 => 0);

end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;


