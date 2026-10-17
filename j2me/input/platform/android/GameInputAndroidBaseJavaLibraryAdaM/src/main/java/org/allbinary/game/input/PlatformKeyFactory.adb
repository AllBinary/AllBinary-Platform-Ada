--  Generated Code Do Not Modify


package body org.allbinary.game.input.PlatformKeyFactory_Package is

   procedure Initialize_Fields (This : in out PlatformKeyFactory'Class) is
   begin
      null;
      This.androidKeyFactory := ActivityFractureControllerUtilFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformKeyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformKeyFactory_Access is
      This : constant PlatformKeyFactory_Access := new PlatformKeyFactory;
   begin
      PlatformKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformKeyFactory_Access is
   begin
        if (PlatformKeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PlatformKeyFactory_Package.instance := PlatformKeyFactory_Package.Create;
        end if;
        return PlatformKeyFactory_Access (PlatformKeyFactory_Package.instance);
   end getInstance;

   function getString (This : in out PlatformKeyFactory; keyCode : Integer) return Unbounded_String is
   begin
        return AndroidGameKey_Package.getString (keyCode);
   end getString;

   function isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isSubmission (input);
   end isSubmission;

   function isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isDelete (input);
   end isDelete;

   function isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isBackSpace (input);
   end isBackSpace;

   function isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isLeft (input);
   end isLeft;

   function isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isRight (input);
   end isRight;

   function isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isUp (input);
   end isUp;

   function isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isDown (input);
   end isDown;

   function isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.androidKeyFactory.isEnter (input);
   end isEnter;

   procedure getString (This : in out PlatformKeyFactory; keyCode : Integer) is
      Java_Result : constant Unbounded_String := PlatformKeyFactory'Class (This).getString (keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isSubmission (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isBackSpace (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isLeft (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isRight (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

   procedure isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isUp (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDown (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isEnter (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.PlatformKeyFactory_Package;


