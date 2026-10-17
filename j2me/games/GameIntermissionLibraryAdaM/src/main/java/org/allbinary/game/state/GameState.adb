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


package body org.allbinary.game.state.GameState_Package is

   procedure Initialize_Fields (This : in out GameState'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameState'Class; name : Unbounded_String; state : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String; state : Integer) return GameState_Access is
      This : constant GameState_Access := new GameState;
   begin
      Initialize (This.all, name, state);
      return This;
   end Create;

   function toString (This : in out GameState) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure toString (This : in out GameState) is
      Java_Result : constant Unbounded_String := GameState'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.state.GameState_Package;


