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


package body org.allbinary.game.input.J2MEGameKey_Package is

   procedure Initialize_Fields (This : in out J2MEGameKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out J2MEGameKey'Class; key : Integer; keyName : Unbounded_String) is
      id : Integer;
      inputFactory : InputFactory_Access;
   begin
        Input_Package.Initialize (This, key, keyName);
        id := This.getId;
        if (id) >= (0) then
            inputFactory := InputFactory_Package.getInstance;
            inputFactory.add (id, This'Unchecked_Access);
        end if;
   end Initialize;

   function Create (key : Integer; keyName : Unbounded_String) return J2MEGameKey_Access is
      This : constant J2MEGameKey_Access := new J2MEGameKey;
   begin
      Initialize (This.all, key, keyName);
      return This;
   end Create;

   function toString (This : in out J2MEGameKey) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("J2MEGameKey: ")).append (Input (This).toString).toString;
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

   procedure toString (This : in out J2MEGameKey) is
      Java_Result : constant Unbounded_String := J2MEGameKey'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getString (keyCode : Integer) is
      Java_Result : constant Unbounded_String := getString (keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

end org.allbinary.game.input.J2MEGameKey_Package;


