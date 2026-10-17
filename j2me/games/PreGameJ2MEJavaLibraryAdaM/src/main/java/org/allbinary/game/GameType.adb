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


package body org.allbinary.game.GameType_Package is

   procedure Initialize_Fields (This : in out GameType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return GameType_Access is
      This : constant GameType_Access := new GameType;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   function toString (This : in out GameType) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure toString (This : in out GameType) is
      Java_Result : constant Unbounded_String := GameType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.GameType_Package;


