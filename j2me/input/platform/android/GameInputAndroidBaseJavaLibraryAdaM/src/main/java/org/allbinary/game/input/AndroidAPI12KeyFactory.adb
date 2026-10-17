--  Generated Code Do Not Modify


package body org.allbinary.game.input.AndroidAPI12KeyFactory_Package is

   procedure Initialize_Fields (This : in out AndroidAPI12KeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getAPI12Instance return AndroidAPI12KeyFactory_Access is
   begin
        if (AndroidAPI12KeyFactory_Package.instance12) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AndroidAPI12KeyFactory_Package.instance12 := AndroidAPI12KeyFactory_Package.Create;
        end if;
        return AndroidAPI12KeyFactory_Access (AndroidAPI12KeyFactory_Package.instance12);
   end getAPI12Instance;

   procedure Initialize (This : in out AndroidAPI12KeyFactory'Class) is
   begin
      AndroidAPI9KeyFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.KEYCODE_BUTTON_1 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_1, To_Unbounded_String ("BUTTON 1"));
        This.KEYCODE_BUTTON_10 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_10, To_Unbounded_String ("BUTTON 10"));
        This.KEYCODE_BUTTON_11 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_11, To_Unbounded_String ("BUTTON 11"));
        This.KEYCODE_BUTTON_12 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_12, To_Unbounded_String ("BUTTON 12"));
        This.KEYCODE_BUTTON_13 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_13, To_Unbounded_String ("BUTTON 13"));
        This.KEYCODE_BUTTON_14 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_14, To_Unbounded_String ("BUTTON 14"));
        This.KEYCODE_BUTTON_15 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_15, To_Unbounded_String ("BUTTON 15"));
        This.KEYCODE_BUTTON_16 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_16, To_Unbounded_String ("BUTTON 16"));
        This.KEYCODE_BUTTON_2 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_2, To_Unbounded_String ("BUTTON 2"));
        This.KEYCODE_BUTTON_3 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_3, To_Unbounded_String ("BUTTON 3"));
        This.KEYCODE_BUTTON_4 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_4, To_Unbounded_String ("BUTTON 4"));
        This.KEYCODE_BUTTON_5 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_5, To_Unbounded_String ("BUTTON 5"));
        This.KEYCODE_BUTTON_6 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_6, To_Unbounded_String ("BUTTON 6"));
        This.KEYCODE_BUTTON_7 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_7, To_Unbounded_String ("BUTTON 7"));
        This.KEYCODE_BUTTON_8 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_8, To_Unbounded_String ("BUTTON 8"));
        This.KEYCODE_BUTTON_9 := AndroidGameKey_Package.Create (KeyEvent_Package.KEYCODE_BUTTON_9, To_Unbounded_String ("BUTTON 9"));
   end Initialize;

   function Create return AndroidAPI12KeyFactory_Access is
      This : constant AndroidAPI12KeyFactory_Access := new AndroidAPI12KeyFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getAPI12Instance is
      Java_Result : constant AndroidAPI12KeyFactory_Access := getAPI12Instance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAPI12Instance;

begin
   null;
   instance12 := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.AndroidAPI12KeyFactory_Package;


