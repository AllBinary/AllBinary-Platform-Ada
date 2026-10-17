--  Generated Code Do Not Modify


package body org.allbinary.game.input.AndroidAPI9KeyFactory_Package is

   procedure Initialize_Fields (This : in out AndroidAPI9KeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return AndroidAPI9KeyFactory_Access is
   begin
        if (AndroidAPI9KeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AndroidAPI9KeyFactory_Package.instance := AndroidAPI9KeyFactory_Package.Create;
        end if;
        return AndroidAPI9KeyFactory_Access (AndroidAPI9KeyFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AndroidAPI9KeyFactory'Class) is
   begin
      AndroidKeyFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.KEYCODE_BUTTON_L1 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_L1, To_Unbounded_String ("BUTTON L1"));
        This.KEYCODE_BUTTON_R1 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_R1, To_Unbounded_String ("BUTTON R1"));
        This.KEYCODE_BUTTON_THUMBR := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_THUMBR, To_Unbounded_String ("BUTTON THUMBR"));
        This.KEYCODE_BUTTON_THUMBL := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_THUMBL, To_Unbounded_String ("BUTTON THUMBL"));
        This.KEYCODE_BUTTON_START := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_START, To_Unbounded_String ("BUTTON START"));
        This.KEYCODE_BUTTON_MODE := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_MODE, To_Unbounded_String ("BUTTON MODE"));
        This.KEYCODE_BUTTON_B := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_B, To_Unbounded_String ("BUTTON B"));
        This.KEYCODE_BUTTON_A := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_A, To_Unbounded_String ("BUTTON A"));
        This.KEYCODE_BUTTON_X := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_X, To_Unbounded_String ("BUTTON X"));
        This.KEYCODE_BUTTON_Y := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_Y, To_Unbounded_String ("BUTTON Y"));
        This.KEYCODE_BUTTON_L2 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_L2, To_Unbounded_String ("BUTTON L2"));
        This.KEYCODE_BUTTON_R2 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_R2, To_Unbounded_String ("BUTTON R2"));
        This.KEYCODE_BUTTON_SELECT := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_SELECT, To_Unbounded_String ("BUTTON SELECT"));
        This.KEYCODE_BUTTON_C := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_C, To_Unbounded_String ("BUTTON C"));
        This.KEYCODE_BUTTON_Z := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_Z, To_Unbounded_String ("BUTTON Z"));
   end Initialize;

   function Create return AndroidAPI9KeyFactory_Access is
      This : constant AndroidAPI9KeyFactory_Access := new AndroidAPI9KeyFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant AndroidAPI9KeyFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.AndroidAPI9KeyFactory_Package;


