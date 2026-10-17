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


package body org.allbinary.game.input.GameKey_Package is

   procedure Initialize_Fields (This : in out GameKey'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameKey'Class; key : Integer; name : Unbounded_String) is
   begin
        Input_Package.Initialize (This, key, name);
   end Initialize;

   function Create (key : Integer; name : Unbounded_String) return GameKey_Access is
      This : constant GameKey_Access := new GameKey;
   begin
      Initialize (This.all, key, name);
      return This;
   end Create;

   function toString (This : in out GameKey) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("GameKey ")).append (Input (This).toString).toString;
   end toString;

   procedure toString (This : in out GameKey) is
      Java_Result : constant Unbounded_String := GameKey'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NULL_GAME_KEY := GameKey_Package.Create (-(1), StringUtil_Package.getInstance.NULL_STRING);

end org.allbinary.game.input.GameKey_Package;


