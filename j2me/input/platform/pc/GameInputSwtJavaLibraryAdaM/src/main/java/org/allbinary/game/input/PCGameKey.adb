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


package body org.allbinary.game.input.PCGameKey_Package is

   procedure Initialize_Fields (This : in out PCGameKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PCGameKey'Class; keyCode : Integer; name : Unbounded_String) is
      id : Integer;
   begin
        Input_Package.Initialize (This, keyCode, name);
        id := PCGameKey'Class (This).getId;
        if (id) >= (0) then
            InputFactory_Package.getInstance.add (id, PCGameKey_Access'(This'Unchecked_Access));
        end if;
   end Initialize;

   function Create (keyCode : Integer; name : Unbounded_String) return PCGameKey_Access is
      This : constant PCGameKey_Access := new PCGameKey;
   begin
      PCGameKey_Package.Initialize (This.all, keyCode, name);
      return This;
   end Create;

   function toString (This : in out PCGameKey) return Unbounded_String is
   begin
        return To_Unbounded_String ("PCGameKey: ") & Input (This).toString;
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

end org.allbinary.game.input.PCGameKey_Package;


