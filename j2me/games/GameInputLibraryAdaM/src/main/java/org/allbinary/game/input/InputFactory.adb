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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.game.input.InputFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out InputFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.KEY_CODE_LABEL := To_Unbounded_String ("KeyCode: ");
      This.DEVICE_ID_LABEL := To_Unbounded_String ("DeviceId: ");
      This.MAX := SmallIntegerSingletonFactory_Package.getInstance.getMin;
      This.inputIntegerArray := new Input_Access_Array'(0 .. (This.MAX) - 1 => null);
      This.NO_INPUT := Input_Package.Create (0, This.commonStrings.UNKNOWN);
   end Initialize_Fields;


   function getInstance return InputFactory_Access is
   begin
        if (InputFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            InputFactory_Package.instance := InputFactory_Package.Create;
        end if;
        return InputFactory_Access (InputFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out InputFactory'Class) is
      size : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        size := This.inputIntegerArray'Length;
        for index in 0 .. (size) - 1 loop
            This.inputIntegerArray (index) := This.NO_INPUT;
        end loop;
   end Initialize;

   function Create return InputFactory_Access is
      This : constant InputFactory_Access := new InputFactory;
   begin
      InputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out InputFactory; id : Integer; input_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        This.inputIntegerArray (id) := input;
   end add;

   function getInstanceById (This : in out InputFactory; id_Param : Integer) return Input_Access is
      id : Integer := id_Param;
   begin
        if (id) < (0) then
            id := -(id);
        end if;
        if (id) > (This.inputIntegerArray'Length) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Warning id: ")).appendint (id).toString, InputFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            return This.NO_INPUT;
        end if;
        return This.inputIntegerArray (id);
   end getInstanceById;

   procedure getInstanceById (This : in out InputFactory; id_Param : Integer) is
      Java_Result : constant Input_Access := InputFactory'Class (This).getInstanceById (id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceById;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.InputFactory_Package;


