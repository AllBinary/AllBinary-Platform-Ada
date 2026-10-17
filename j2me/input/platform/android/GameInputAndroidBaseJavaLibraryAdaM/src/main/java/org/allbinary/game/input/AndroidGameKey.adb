--  Generated Code Do Not Modify


package body org.allbinary.game.input.AndroidGameKey_Package is

   procedure Initialize_Fields (This : in out AndroidGameKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidGameKey'Class; keyCode : Integer; name : Unbounded_String) is
      inputFactory : InputFactory_Access;
   begin
        Input_Package.Initialize (This, keyCode, name);
        inputFactory := InputFactory_Package.getInstance;
        inputFactory.inputIntegerArray (This.getId) := This'Unchecked_Access;
   end Initialize;

   function Create (keyCode : Integer; name : Unbounded_String) return AndroidGameKey_Access is
      This : constant AndroidGameKey_Access := new AndroidGameKey;
   begin
      AndroidGameKey_Package.Initialize (This.all, keyCode, name);
      return This;
   end Create;

   function toString (This : in out AndroidGameKey) return Unbounded_String is
   begin
        return To_Unbounded_String ("AndroidGameKey: ") & Input (This).toString;
   end toString;

   function getString (keyCode : Integer) return Unbounded_String is
      input : Input_Access;
   begin
        input := InputFactory_Package.getInstance.getInstanceById (keyCode);
        if (input) /= (null) then
            return input.getName;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end getString;

   procedure getString (keyCode : Integer) is
      Java_Result : constant Unbounded_String := getString (keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

end org.allbinary.game.input.AndroidGameKey_Package;


