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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.GameMode_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out GameMode'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out GameMode'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        GameMode'Class (This).setName (name);
   end Initialize;

   function Create (name : Unbounded_String) return GameMode_Access is
      This : constant GameMode_Access := new GameMode;
   begin
      GameMode_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure setName (This : in out GameMode; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out GameMode) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function toString (This : in out GameMode) return Unbounded_String is
   begin
        return GameMode'Class (This).getName;
   end toString;

begin
   null;
   NONE := GameMode_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
   SERVER := GameMode_Package.Create (To_Unbounded_String ("Server"));
   CLIENT := GameMode_Package.Create (To_Unbounded_String ("Client"));

end org.allbinary.game.GameMode_Package;


